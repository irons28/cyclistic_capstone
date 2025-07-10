# Cyclistic Capstone Project

This project is part of the **Google Daata Analytics Professional Certificate** and addresses the business problem posed by Cyclistic, a fictional bike-share company in chicago.

**Main Business Task:**
*How do annual members and casual riders use cyclitics bikes differently?*

---

## 📂 Project Structure

cyclistic_capstone/
├── analysis.R            # R script with all data cleaning, analysis, and plots
├── data/                 # (Not included) Folder for raw data CSVs
└── README.md             # Project overview

---

## 🧰 Tools Used

- **Language:** R
- **Libraries:** `dplyr`, `lubridate`, `ggplot2`
- **Data Sources:**  
  - `Divvy_Trips_2019_Q1.csv`  
  - `Divvy_Trips_2020_Q1.csv`

---

## 🔍 Analysis Overview

1. Standardized column names across both datasets
2. Merged 2019 and 2020 Q1 data
3. Cleaned ride timestamps and calculated ride duration
4. Extracted date-based features (weekday, month)
5. Compared member vs. casual usage patterns via:
   - Ride frequency by day
   - Average ride length
   - Behavior trends over time

---

## 📊 Key Insights

- **Members** ride more consistently during weekdays (commute pattern)
- **Casual riders** ride more often on weekends and take **longer rides** on average
- Potential to convert casuals to members via weekend or leisure-focused membership campaigns

---

## ✅ Final Output

The final R script includes full cleaning logic, visualizations, and summary statistics.  
It is fully reproducible using open-source tools.

---

## 🔗 Useful Links

- [Google Data Analytics Certificate on Coursera](https://www.coursera.org/professional-certificates/google-data-analytics)
- [RStudio (Posit)](https://posit.co/)

---

## 👤 Author

**Ben Collen**  
Aspiring Data Analyst | SQL • Python • Tableau  • R
[GitHub](https://github.com/irons28) · [LinkedIn](https://www.linkedin.com/in/ben-collen-234566a1/)
