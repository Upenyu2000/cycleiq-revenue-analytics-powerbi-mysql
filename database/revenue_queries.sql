with rental_data as (
SELECT * FROM cycleiq_rental_data_2021
UNION ALL
SELECT * FROM cycleiq_rental_data_2022
)

SELECT dteday, season, rd.yr as year, weekday,hr, rider_type, riders,price, COGS AS cost_of_goods, riders * price AS revenue, riders * price - COGS AS profit
FROM rental_data as rd
LEFT JOIN cycleiq_operating_costs as oc
ON  rd.yr = oc.yr;
