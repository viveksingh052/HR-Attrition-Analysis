# 📊 HR Analytics Dashboard Project

## 📌 Project Overview
This project focuses on building **multiple HR Analytics dashboards** using **Excel, Power BI, Tableau**, and validating all calculated KPIs with **SQL queries**.  
The approach mirrors **real-world industry practices**, where data analysts cross-check metrics across tools to ensure accuracy, reliability, and consistency of insights.  

---

## 🏢 Problem Statement
The HR department struggles with:
- Lack of clear performance indicators (KPIs) to monitor workforce health.
- Difficulty in tracking attrition, workforce demographics, and employee satisfaction.
- No standardized dashboards for leadership to make **data-driven HR decisions**.

This project solves these gaps by developing **comprehensive HR dashboards** with validated metrics.

---

## 📎 Repository Structure

📁 HR-Analytics-Dashboard/
├── 📁 data/
│ └── hrdata.csv # Cleaned HR dataset
│ ├── excel_dashboard.xlsx # Excel charts & pivot tables
│ ├── powerbi_dashboard.pbix # Power BI interactive dashboard
│ └── tableau_dashboard.twbx # Tableau story-style dashboard
├── 📁 sql/
│ ├── hr_kpi_queries.sql # All SQL queries used for validation
│ └── screenshots/ # Query screenshots for README display
│ ├── sql_employee_count.png
│ ├── sql_attrition_count.png
│ ├── sql_attrition_rate.png
│ ├── sql_active_employees.png
│ ├── sql_average_age.png
│ ├── sql_attrition_by_gender.png
│ ├── sql_department_attrition.png
│ ├── sql_age_band.png
│ ├── sql_job_satisfaction_pivot.png
│ ├── sql_education_field.png
│ └── sql_age_gender_attrition.png
├── 📁 images/ # (Optional global images folder)
│ └── used_in_readme.png
├── 📄 README.md # Full project documentation

---


## 🎯 Key KPIs Implemented
- **Employee Count** – Total workforce size.  
- **Attrition Count** – Number of employees leaving the organization.  
- **Attrition Rate (%)** – Proportion of employees leaving compared to total workforce.  
- **Active Employees** – Distinguishing active vs. inactive employees.  
- **Average Age** – Workforce demographics analysis.

---

## 📈 Dashboard Requirements
The dashboards visualize multiple perspectives of HR data:
1. **Attrition by Gender** – Identify gender-based attrition patterns.  
2. **Department-wise Attrition** – Highlight departments with high turnover.  
3. **Employees by Age Group** – Assess workforce demographics.  
4. **Job Satisfaction Ratings** – Track employee engagement levels.  
5. **Attrition by Education Field** – Spot education-related attrition trends.  
6. **Attrition by Gender & Age Group** – Combined insights to tailor retention.

---

## 🛠️ Tools & Technologies
- **SQL** – Data validation and metric cross-checking.  
- **Excel** – Quick exploratory dashboards and pivot analysis.  
- **Power BI** – Interactive and scalable HR dashboards.  
- **Tableau** – Advanced visual storytelling and drill-down analytics.  

---

## 📂 Project Workflow
1. **Data Collection & Cleaning** – Import raw HR dataset, preprocess missing values.  
2. **SQL Validation** – Write SQL queries to calculate KPIs and cross-check against dashboard outputs.  
3. **Dashboard Development**  
   - *Excel:* Pivot tables and charts for initial exploration.  
   - *Power BI:* KPI tracking dashboards with filters & slicers.  
   - *Tableau:* Advanced visual storytelling and department-level drill-downs.  
4. **Insights & Reporting** – Compare attrition patterns, workforce demographics, and job satisfaction to provide actionable recommendations.  

---

## 📊 Dashboards

🔹 **Excel Dashboard** – Quick analysis using pivot tables and charts.  
🔹 **Power BI Dashboard** – Fully interactive dashboard with slicers and KPI cards.
<img width="1280" height="718" alt="Screenshot 2025-09-19 093337" src="https://github.com/user-attachments/assets/b2da75e2-b4c4-448f-b76c-a25cdaf9ed39" /> 
https://github.com/user-attachments/assets/74ab7540-5513-4786-a60e-bfbfaf65cb55

🔹 **Tableau Dashboard** – Storytelling-based dashboard with drill-down analytics.
<img width="1552" height="873" alt="Screenshot 2025-09-19 093226" src="https://github.com/user-attachments/assets/3469d8ab-b713-47fd-8035-cb9ffce1dc99" />
https://github.com/user-attachments/assets/ec130461-09c3-4400-ad20-fa82cda69580


> *(Screenshots and dashboard files are included in the repository.)*  

---

## 💾 SQL Validation Queries

All KPIs and dashboard visualizations were **validated using SQL queries** executed in SQL Server.  
Below are screenshots of the queries used for validation:

| KPI and Charts            | SQL Query Screenshot                                                                                   |
|---------------------------|---------------------------------------------------------------------------------------------------------|
| Total Employee Count      | ![Employee Count Query](https://github.com/user-attachments/assets/eb49d6ba-5b4e-4f23-8efc-d8f0c857240f) |
| Attrition Count           | ![Attrition Count Query](https://github.com/user-attachments/assets/b4075b9b-c2e4-4cf3-9028-fc5bce40a373) |
| Attrition Rate (%)        | ![Attrition Rate Query](https://github.com/user-attachments/assets/5c17f740-69d5-4533-97b0-bea8f531bbda) |
| Active Employees          | ![Active Employees Query](https://github.com/user-attachments/assets/d2800fed-4a90-470f-b4db-e06be7e7bc7b) |
| Average Age               | ![Average Age Query](https://github.com/user-attachments/assets/344040f8-10c9-45c5-b09c-13a9d9b6cf49)     |
| Attrition by Gender       | ![Attrition by Gender Query](https://github.com/user-attachments/assets/8b73275a-7349-495f-a935-ac8746a265e5) |
| Department-wise Attrition | ![Department Attrition Query](https://github.com/user-attachments/assets/afe4b4b7-f4d1-454e-9974-b810bcbcf462) |
| Employees by Age Group    | ![Age Band Query](https://github.com/user-attachments/assets/586cac40-d9c7-4583-9ba7-9fbc3ae59ee9)        |
| Job Satisfaction Pivot    | ![Job Satisfaction Pivot](https://github.com/user-attachments/assets/9eeed97d-a741-4690-93ff-fbc2ed033aee) |
| Education Field Attrition | ![Education Field Query](https://github.com/user-attachments/assets/6fefc9f7-be55-4686-910f-f9bb9f2c7467) |
| Attrition by Age & Gender | ![Age & Gender Attrition Query](https://github.com/user-attachments/assets/041bb7f3-b0bc-4625-92d9-c9b6ef9a6535) |

> 📁 *All screenshots are stored in the `/images` folder of this repository or linked via GitHub-hosted URLs.*

---

### 💬 Sample SQL Snippet (Attrition Rate)

```sql
SELECT 
  ROUND(
    CAST(COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) AS FLOAT) * 100.0 / 
    COUNT(*), 
    2
  ) AS Attrition_Rate
FROM hrdata;

