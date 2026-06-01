# CycleIQ: Revenue Analytics & Strategic Pricing Optimization

## 📌 Project Overview
This repository contains an end-to-end revenue analytics and dynamic pricing optimization project for **CycleIQ**. The project simulates a real-world business scenario where transactional data is cleaned, modeled via a relational database, and visualized to drive executive-level financial decisions.

The core objective was to analyze historical rider performance to design a segmented, low-risk pricing adjustment framework that maximizes financial yield without compromising customer retention.

---

## 🛠️ Tech Stack & Tools
*   **Database Management:** MySQL (Data extraction, transformation, aggregation, and cohort segmentation)
*   **Business Intelligence:** Power BI Desktop (Data modeling, DAX measures, interactive dashboard development)
*   **Reporting:** Clean HTML/CSS to PDF compilation for executive distribution

---

## 📊 Key Insights & Dashboard Features
The interactive Power BI dashboard monitors historical data across key operational dimensions:

*   **Financial Baseline:** Establishes an operational benchmark tracking an average revenue of £4.96M and an average profit of £3.42M.
*   **Temporal Demand:** Pinpoints peak revenue distribution occurring between 10:00 and 15:00, with Wednesdays and Fridays identifying as the highest volume sales channels.
*   **Seasonal Volatility:** Tracks peak rider demand moving into the summer months (Season 3), providing a clear window for high-yield pricing strategies.
*   **Demographic Split:** Evaluates a strict user cohort segmentation showing 80.11% registered riders versus 19.89% casual riders.

---

## 📈 Strategic Pricing Framework
Based on the extracted database metrics, an executive-level strategic report was developed detailing a **10% to 15% conservative price increase**. 

### Scenario Modeling:
*   **Baseline Control:** Base rate anchored at £4.99[cite: 3].
*   **Conservative Model A (+10%):** Adjusted rate to £5.49, optimized for low churn risk and steady revenue stabilization[cite: 3].
*   **Conservative Model B (+15%):** Adjusted rate to £5.74, maximizing short-term yield under careful monitoring[cite: 3].

### Governance Plan:
To mitigate demand elasticity risks, the repository includes specifications for a continuous Power BI monitoring framework tracking:
1. **Price Elasticity Scatter Plots** for multivariate testing[cite: 3].
2. **Cohort Churn Matrices** to monitor casual vs. registered drop-offs day-over-day[cite: 3].

---

## 📁 Repository Structure
```text
├── database/
│   ├── cycleiq_schema.sql         # Database schema definition
│   └── revenue_queries.sql        # Advanced SQL queries for cohort analysis
├── dashboard/
│   └── cycleiq_analytics.pbix     # Packaged Power BI dashboard file
├── reports/
│   ├── pricing_report.html        # Clean HTML source file for documentation
│   └── Executive_Pricing_Report.pdf # Final industry-standard PDF deliverable
└── README.md                      # Project documentation
