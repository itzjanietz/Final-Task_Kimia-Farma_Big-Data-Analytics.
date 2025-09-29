# Final Task, Big Data Analytics 
# Kimia Farma Performance Analytics (2020–2023)

## 📌 Project Overview
This project is part of the Final Task in **Big Data Analytics**.  
The main objective is to analyze the **business performance of Kimia Farma (2020–2023)** using BigQuery and Looker Studio, and to deliver insights and recommendations for strategic decision-making.  

## 📂 Data & Analytics
Four main datasets were provided:
- `kf_final_transaction` → customer transaction details  
- `kf_product` → product information & price  
- `kf_kantor_cabang` → branch, city, province, branch rating  
- `kf_inventory` → product inventory  

### Tools Used
- **Google BigQuery** → SQL-based data processing & transformation  
- **Google Looker Studio** → dashboard design & visualization  

## 🛠️ Data Processing
The datasets were integrated and transformed into an analysis table:  
`kf_data_analytics`  

Key transformations:
- Calculate **nett sales** (after discount)  
- Calculate **nett profit** (based on profit margin rules)  
- Add **gross profit percentage**  
- Extract `year` and `month` from transaction dates  

BigQuery SQL script is included in (`kf_data_analytics.sql`).  

## 📊 Dashboard Development
The interactive dashboard was created in **Google Looker Studio**, including:
- Revenue comparison (YoY 2020–2023)  
- Top 10 transactions per branch/province  
- Top 10 nett sales per branch/province  
- Top 5 branches with **high ratings but low transactions**  
- Geo Map of total profit by province  
- Summary cards & filters for year, month, branch, city, province, product  

🔗 **[View Dashboard Here]((https://lookerstudio.google.com/reporting/fb012b48-9523-41c8-b85c-aac642aa2017))**  

## 🔍 Insights
1. Revenue shows fluctuations: decline (2020–2021), recovery (2021–2022), and downturn (2022–2023).  
2. West Java is the **core market** with the largest share of transactions, revenue, and profit.  
3. **Psycholeptic Drugs** dominate product sales.  
4. Some branches (e.g., Tarakan) have **high customer ratings but low transactions**.  

## ✅ Conclusion & Recommendations
- Optimize underperforming branches with high ratings  
- Diversify product categories  
- Seasonal promotional strategies to stabilize revenue  
- Expand markets beyond Java  
- Strengthen digital services & data-driven decision making  

## 👤 Author
Ditya Ayu Anjani 
