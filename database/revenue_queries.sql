/*=========================================================
  CycleIQ Revenue & Profitability Analysis
  Author: Upenyu Hlangabeza
=========================================================*/

WITH rental_data AS (
    SELECT * 
    FROM cycleiq_rental_data_2021

    UNION ALL

    SELECT *
    FROM cycleiq_rental_data_2022
),

financial_metrics AS (
    SELECT
        rd.dteday,
        rd.season,
        rd.yr AS year,
        rd.month,
        rd.weekday,
        rd.hr,
        rd.rider_type,
        rd.riders,
        rd.price,
        oc.COGS AS cost_of_goods,

        /* Core Financial Metrics */
        rd.riders * rd.price AS revenue,
        (rd.riders * rd.price) - oc.COGS AS profit,

        /* Profitability */
        ROUND(
            ((rd.riders * rd.price) - oc.COGS)
            / NULLIF((rd.riders * rd.price),0) * 100,
            2
        ) AS profit_margin_pct

    FROM rental_data rd
    LEFT JOIN cycleiq_operating_costs oc
        ON rd.yr = oc.yr
),

daily_summary AS (
    SELECT
        dteday,
        year,

        SUM(riders) AS total_riders,
        SUM(revenue) AS daily_revenue,
        SUM(profit) AS daily_profit

    FROM financial_metrics
    GROUP BY dteday, year
),

trend_analysis AS (
    SELECT
        *,

        /* Running Revenue Total */
        SUM(daily_revenue) OVER(
            PARTITION BY year
            ORDER BY dteday
        ) AS cumulative_revenue,

        /* 7-Day Rolling Average */
        ROUND(
            AVG(daily_revenue) OVER(
                PARTITION BY year
                ORDER BY dteday
                ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
            ),
            2
        ) AS rolling_7_day_avg_revenue,

        /* Previous Day Revenue */
        LAG(daily_revenue) OVER(
            PARTITION BY year
            ORDER BY dteday
        ) AS previous_day_revenue

    FROM daily_summary
)

SELECT
    dteday,
    year,
    total_riders,
    daily_revenue,
    daily_profit,
    cumulative_revenue,
    rolling_7_day_avg_revenue,

    ROUND(
        (
            (daily_revenue - previous_day_revenue)
            / NULLIF(previous_day_revenue,0)
        ) * 100,
        2
    ) AS daily_revenue_growth_pct

FROM trend_analysis
ORDER BY dteday;

/* Top Revenue Generating Hours*/
SELECT
    hr,
    SUM(riders) AS total_riders,
    SUM(riders * price) AS revenue,
    RANK() OVER(
        ORDER BY SUM(riders * price) DESC
    ) AS revenue_rank
FROM rental_data
GROUP BY hr;

/* Seasonal Performance Analysis*/
SELECT
    season,
    SUM(riders) AS riders,
    SUM(riders * price) AS revenue,
    AVG(price) AS avg_price,
    ROUND(
        SUM(riders * price) /
        SUM(SUM(riders * price)) OVER() * 100,
        2
    ) AS revenue_share_pct
FROM rental_data
GROUP BY season
ORDER BY revenue DESC;

/* Year-over-Year Growth */

WITH yearly_metrics AS (
    SELECT
        yr AS year,
        SUM(riders * price) AS revenue
    FROM rental_data
    GROUP BY yr
)

SELECT
    year,
    revenue,

    LAG(revenue) OVER(
        ORDER BY year
    ) AS previous_year_revenue,

    ROUND(
        (
            revenue -
            LAG(revenue) OVER(ORDER BY year)
        ) /
        NULLIF(
            LAG(revenue) OVER(ORDER BY year),
            0
        ) * 100,
        2
    ) AS yoy_growth_pct
FROM yearly_metrics;
