# CycleIQ: Revenue Analytics & Strategic Pricing Optimization

## Project Overview

CycleIQ is an end-to-end business intelligence and revenue optimization project that simulates a real-world commercial analytics engagement. The objective was to transform raw operational and transactional data into actionable business insights capable of supporting executive-level pricing decisions.

Using SQL, data modeling, and interactive business intelligence reporting, the project investigates rider behaviour, revenue drivers, profitability trends, and demand patterns across multiple dimensions. The resulting analysis was used to develop a data-driven pricing strategy designed to increase revenue while minimizing customer attrition risk.

The project demonstrates the complete analytics lifecycle, from data preparation and database design through to financial analysis, dashboard development, scenario modelling, and strategic recommendations.

---

## Business Problem

CycleIQ sought to identify opportunities to improve profitability without significantly impacting rider demand. Historical rental data suggested variations in customer behaviour across seasons, time periods, and rider segments, creating opportunities for targeted pricing adjustments.

The challenge was to determine whether moderate price increases could generate additional revenue while maintaining customer retention and operational stability.

---

## Technical Stack

### Data Engineering & Analytics

* **MySQL**

  * Data extraction, transformation, and loading (ETL)
  * Relational database design
  * Advanced SQL querying using CTEs, aggregations, joins, and analytical functions
  * Revenue, profit, and rider segmentation analysis

### Business Intelligence

* **Power BI**

  * Data modelling and relationship management
  * DAX calculations and KPI development
  * Interactive executive dashboards
  * Scenario analysis and performance monitoring

### Reporting & Communication

* Executive-level strategic recommendations
* Data storytelling and visual analytics
* Decision-support reporting

---

## Analytical Framework

The analysis focused on four core business dimensions:

### Financial Performance Analysis

Established operational benchmarks by evaluating historical revenue and profitability trends across multiple years of rider activity.

**Key Findings**

* Average annual revenue: **£4.96M**
* Average annual profit: **£3.42M**
* Strong profit margins indicating capacity for controlled pricing adjustments

### Demand & Utilisation Analysis

Examined rider activity patterns to identify periods of peak demand and operational capacity.

**Key Findings**

* Peak revenue generation occurred between **10:00 and 15:00**
* Wednesdays and Fridays consistently generated the highest transaction volumes
* Demand patterns indicated opportunities for time-sensitive pricing strategies

### Seasonal Trend Analysis

Evaluated rider behaviour across seasonal cycles to understand fluctuations in demand.

**Key Findings**

* Summer periods (Season 3) demonstrated the highest rider volumes
* Seasonal demand elasticity suggested greater pricing flexibility during peak periods
* Winter periods exhibited lower demand and increased price sensitivity

### Customer Segmentation Analysis

Segmented riders into behavioural cohorts to assess revenue concentration and retention risk.

**Key Findings**

* Registered Riders: **80.11%**
* Casual Riders: **19.89%**
* Registered users represented the most stable revenue source and lowest churn risk segment

---

## Strategic Pricing Optimization

Based on the analytical findings, a conservative pricing optimization framework was developed to improve financial performance while controlling demand-side risk.

### Scenario Modelling

| Scenario | Price | Increase |
| -------- | ----- | -------- |
| Baseline | £4.99 | —        |
| Model A  | £5.49 | +10%     |
| Model B  | £5.74 | +15%     |

### Strategic Recommendation

A phased implementation approach was recommended:

1. Introduce a 10% pricing increase as the primary strategy.
2. Monitor rider retention, revenue growth, and behavioural changes.
3. Progressively evaluate a 15% increase if customer demand remains stable.
4. Continuously assess elasticity metrics before further adjustments.

---

## Governance & Monitoring Framework

To ensure sustainable implementation, a continuous monitoring framework was designed within Power BI.

### Performance Monitoring Metrics

* Revenue Growth Tracking
* Rider Retention Analysis
* Profit Margin Monitoring
* Customer Segment Performance
* Seasonal Demand Monitoring

### Risk Management Dashboards

* Price Elasticity Analysis
* Cohort Churn Tracking
* Revenue Variance Monitoring
* Scenario Performance Comparison

This governance model enables stakeholders to measure the real-world impact of pricing changes and make evidence-based adjustments as market conditions evolve.

---

## Project Outcomes

This project demonstrates practical capabilities across:

* Advanced SQL Analytics
* Data Engineering
* Financial Performance Analysis
* Revenue Optimization
* Business Intelligence Development
* Executive Reporting
* Strategic Decision Support
* Data Storytelling

The resulting solution provides a scalable analytical framework that transforms historical operational data into measurable business value and actionable commercial strategy.


---

## 📁 Repository Structure
```text
├── dashboard/
│   └── cycleiq_analytics.pbix     # Packaged Power BI dashboard file
│   └── CycleIQ_bi.pdf             # Exported static Power BI dashboard report views
├── database/
│   └── revenue_queries.sql        # Advanced SQL queries for cohort analysis
├── dataset/
│   ├── CycleIQ_Data_Dictionary.pdf    # Technical data schema definition and variable dictionary mapping
│   ├── cycleiq_operating_costs.csv    # Financial reference table (Year, Price, and COGS variables)
│   ├── cycleiq_rental_data_2021.csv   # Hourly transactional rider checkouts for Fiscal Year 2021 (yr = 0)
│   └── cycleiq_rental_data_2022.csv   # Hourly transactional rider checkouts for Fiscal Year 2022 (yr = 1)
├── reports/
│   └── Executive_Pricing_Report.pdf # Final industry-standard PDF deliverable
└── README.md                      # Project documentation
