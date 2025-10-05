Project: Uber Supply–Demand Gap 📊
This project quantifies unfulfilled ride requests and pinpoints peak gap windows using SQL outputs, an Excel dashboard, and a reproducible Pandas notebook.


-Dataset

Source: [https://drive.google.com/file/d/1-d9ukSpbLJDdISdIq-xlujTKh1IzR66n/view?usp=sharing🔗] (public dataset provided with the assignment).


-Objectives

Measure total requests, unfulfilled count, and unfulfilled percentage across time granularities.

Identify hours and dayparts where the gap peaks to guide driver allocation.


-Tech stack

SQL for hour/daypart extracts.

Microsoft Excel for dashboard KPIs and visuals.

Python (pandas, matplotlib, seaborn) for reproducible KPIs and ranked text insights.


-Folder structure

data_raw/ → hour_level.csv, daypart_status.csv, pickup_daypart_gap.csv (exported from SQL).

notebooks/ → Uber_Supply_Demand_Gap_Pandas.ipynb.

outputs/ → kpis_summary.csv.

reports/ → Uber-Supply-Demand-Gap-Dashboard.pdf.



-Key KPIs

Total Requests: 6745.

Unfulfilled (count): 3914.

Unfulfilled (%): 58.0%.



-Dashboard visuals (Excel)

Hourly Requests vs Unfulfilled % (bars + line, secondary axis 0–100%).

Pickup × Daypart: Unfulfilled (Airport vs City).

Daypart × Status (Counts) stacked.



-Insights 💡

Evening shows highest City‑side unfulfilled; shift supply toward City during 18–21 hrs.

Morning/Early Morning has higher Airport unfulfilled; prioritize Airport between 6–9 hrs.


-Reproduce with Pandas 🐍

Open the notebook, run the load/mapping cell for the three CSVs, then run the final “KPIs + insights” cell to generate kpis_summary.csv.

Notebook is text‑only for outputs; visuals are presented in the Excel PDF dashboard.


-How to view 📄

Open reports/Uber-Supply-Demand-Gap-Dashboard.pdf for the final dashboard view.


-License

MIT (update if needed).


-Credits

Made by Yashvi Verma ❤️.
