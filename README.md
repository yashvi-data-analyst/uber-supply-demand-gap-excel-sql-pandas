🚗 Uber Supply–Demand Gap Analysis 📊

This project analyzes ride request patterns to quantify unfulfilled demand and pinpoint peak gap windows, using a combination of SQL, Excel, and Python (Pandas).

🗂️ Dataset

Source: 🔗 https://drive.google.com/file/d/1-d9ukSpbLJDdISdIq-xlujTKh1IzR66n/view?usp=sharing (Public Dataset)

🎯 Objectives

📈 Measure total ride requests, unfulfilled counts, and unfulfilled % across different time granularities.

🕐 Identify hours and dayparts where the demand–supply gap peaks to improve driver allocation strategy.

⚙️ Tech Stack
Tool	Purpose
🧮 SQL	Hour/daypart extractions
📊 Microsoft Excel	Dashboard KPIs & visualizations
🐍 Python (Pandas, Matplotlib, Seaborn)	KPI automation & ranked insights

🗃️ Folder Structure

Uber-Supply-Demand-Gap/

│
├── data_raw/            → hour_level.csv, daypart_status.csv, pickup_daypart_gap.csv  
├── notebooks/           → Uber_Supply_Demand_Gap_Pandas.ipynb  
├── outputs/             → kpis_summary.csv  
└── reports/             → Uber-Supply-Demand-Gap-Dashboard.pdf  

📊 Key KPIs
Metric	Value
🚘 Total Requests	6,745
❌ Unfulfilled (Count)	3,914
⚠️ Unfulfilled (%)	58.0%
📈 Dashboard Visuals (Excel)

🕒 Hourly Requests vs Unfulfilled % → Bar + Line (Secondary axis 0–100%)

📍 Pickup × Daypart: Unfulfilled (Airport ✈️ vs City 🏙️)

⏰ Daypart × Status (Counts) → Stacked visualization

💡 Insights

🌆 Evening (18–21 hrs) → Highest City-side unfulfilled; recommend shifting more drivers to City.

🌅 Morning (6–9 hrs) → Higher Airport-side unfulfilled; prioritize Airport pickups during this window.

🧠 Reproduce with Pandas

Open notebooks/Uber_Supply_Demand_Gap_Pandas.ipynb

Run the data load & mapping cells for the three CSVs

Execute the final “KPIs + Insights” cell → generates kpis_summary.csv

🧾 Note: Notebook shows text outputs only; visuals are available in the Excel PDF dashboard.

📄 How to View

Open 👉 reports/Uber-Supply-Demand-Gap-Dashboard.pdf for the final dashboard and analysis view.

⚖️ License

MIT License – Free to use, modify, and share.

❤️ Credits

Made with dedication by Yashvi Verma
 💻✨
