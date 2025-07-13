# Cyclistic Capstone Project

This project is part of the **Google Daata Analytics Professional Certificate** and addresses the business problem posed by Cyclistic, a fictional bike-share company in chicago.

**Main Business Task:**
*How do annual members and casual riders use cyclitics bikes differently?*

---

## 📂 Project Structure

cyclistic_capstone/
├── analysis.R              # R script with all data cleaning, analysis, and visualizations
├── data/                   # (Not included) Folder for raw CSV files
├── README.md               # Project overview and documentation
└── Cyclistic_Capstone_Presentation.pdf  # (optional) Presentation slide deck

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

- **Members** ride more consistently during weekdays (commute-based behavior)
- **Casual riders** ride more often on weekends and take **longer trips**
- Marketing should focus on converting casuals with leisure/weekend-oriented campaigns

---

## ✅ Final Output

- Full code in `analysis.R` is clean reproducable, and version-controlled
- Visualizations created in `ggplot2` are included in the keynote presentation
- All work was done using open-source tools on macOs and RStudio Cloud

---

## 🎥 Project Presentation

> View the final project slides:
- 📄 [Cyclistic Capstone Presentation (PDF)](Cyclistic_Capstone_Presentation.pdf)

(Or upload `Cyclistic_Capstone.key` if you prefer sharing the original Keynote file.)

---

## 🔗 Useful Links

- [Google Data Analytics Certificate on Coursera](https://www.coursera.org/professional-certificates/google-data-analytics)
- [RStudio (Posit)](https://posit.co/)

---

## 👤 Author

**Ben Collen**  
Aspiring Data Analyst | SQL • Python • Tableau  • R
[GitHub](https://github.com/irons28) · [LinkedIn](https://www.linkedin.com/in/ben-collen-234566a1/)
