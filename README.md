<div align="center">

<!-- Main Title & Tagline -->
<h1>📊 Customer Sentiment & Review Analytics</h1>
<h3>🚀 <i>End-to-End Analytics Pipeline: Raw Unstructured Reviews ➔ Executive Business Intelligence</i></h3>

<!-- Colorful Badges Row -->
<p align="center">
  <img src="https://img.shields.io/badge/Project%20Status-Completed-059669?style=for-the-badge&logo=github" />
  <img src="https://img.shields.io/badge/Data%20Source-Kaggle-20BEFF?style=for-the-badge&logo=kaggle&logoColor=white" />
  <img src="https://img.shields.io/badge/Pipeline-Python%20%7C%20SQL%20%7C%20Power%20BI-FF6F61?style=for-the-badge" />
</p>

<!-- Animated Rainbow Gradient Divider -->
<img src="https://user-images.githubusercontent.com/73097560/115834477-db03ce00-a425-11eb-83f3-b9fb72d560b4.gif" width="100%">

<!-- Quick Navigation Bar -->
<p align="center">
  <a href="#-1-project-overview--the-big-picture"><b>Overview</b></a> •
  <a href="#-2-dataset-source"><b>Data Source</b></a> •
  <a href="#-3-phase-1-python--jupyter-notebook-eda"><b>Python EDA</b></a> •
  <a href="#-4-phase-2-sql-data-modeling--aggregations"><b>SQL Modeling</b></a> •
  <a href="#-5-phase-3-power-bi-dashboard-design"><b>Power BI UI</b></a> •
  <a href="#-6-key-business-insights--impact"><b>Insights</b></a>
</p>

</div>




























# 📊 Customer Sentiment & Review Analytics
### *An End-to-End Analytics Pipeline from Raw Unstructured Data to Executive Business Intelligence*

---

<p align="center">
  <a href="#-1-project-overview--the-big-picture">Overview</a> •
  <a href="#-2-dataset-source">Data Source</a> •
  <a href="#-3-phase-1-python--jupyter-notebook-eda">Python EDA</a> •
  <a href="#-4-phase-2-sql-data-modeling--aggregations">SQL Modeling</a> •
  <a href="#-5-phase-3-power-bi-dashboard-design">Power BI UI</a> •
  <a href="#-6-key-business-insights--impact">Insights</a>
</p>

---

## 📌 1. Project Overview & The Big Picture

In modern digital retail, customer feedback is one of the most critical assets for identifying product quality gaps and operational failure points. However, when dealing with **tens of thousands of customer reviews**, reading feedback manually is impossible.

### 🚨 The Business Problem
A growing retail brand received **over 28,000 customer reviews**, but business leaders lacked clear visibility into:
* **Sentiment Metrics:** What percentage of total feedback is positive, negative, or neutral?
* **Operational Bottlenecks:** What specific business functions (e.g., product quality, logistics, pricing, customer support) cause the most customer churn?
* **Strategic Alignment:** How can operational teams prioritize fixes based on quantifiable customer complaints?

### 💡 The Solution
We engineered an **End-to-End Data Pipeline** that converts unstructured customer feedback into actionable business intelligence using **Python (Pandas/EDA), SQL, and Power BI**.

Raw Amazon/Retail Reviews -> Python & Jupyter EDA -> SQL Aggregations & Categorization -> Power BI Interactive Dashboard

---

## 📂 2. Dataset Source

> [!NOTE]  
> **Source:** Kaggle  
> 🔗 **Dataset Link:** https://www.kaggle.com/datasets/datafiniti/consumer-reviews-of-amazon-products

---

## 🐍 3. Phase 1: Python & Jupyter Notebook EDA

The first phase took place in a Jupyter Notebook to inspect, clean, and pre-process the raw review dataset.

### Key Technical Steps Executed in Python:
1. **Data Ingestion & Integrity Checks:**
   * Loaded the raw review dataset using `pandas`.
   * Checked for missing values (`df.isnull().sum()`), duplicates (`df.duplicated().sum()`), and verified column data types.
2. **Text Normalization & Categorization:**
   * Standardized text inputs, stripped unnecessary whitespace, and converted all text to UTF-8 formatting.
   * Categorized customer feedback into major business functions: *Product Quality & Taste*, *Logistics & Packaging*, *Pricing & Value*, and *Customer Support*.
3. **Sentiment Score Calculation:**
   * Verified normalized sentiment polarity scores ranging from `0.00` (Extremely Negative) to `1.00` (Extremely Positive).
4. **Data Export:**
   * Exported the cleaned dataset for SQL querying and Power BI visualization.

---

## 🗄️ 4. Phase 2: SQL Data Modeling & Aggregations

Once the dataset was cleaned, structured queries were written in SQL to aggregate metrics, calculate category counts, and prepare structured tables for BI consumption.

### Essential SQL Queries Executed:

-- 1. Total Reviews and Overall Average Rating
SELECT 
    COUNT(Id) AS Total_Reviews,
    ROUND(AVG(Score), 2) AS Average_Star_Rating,
    ROUND(AVG(Sentiment_Score), 2) AS Average_Sentiment_Score
FROM processed_sentiment_data;

-- 2. Breakdown of Complaint Categories Sorted by Severity
SELECT 
    Complaint_Category,
    COUNT(Id) AS Total_Complaints
FROM processed_sentiment_data
GROUP BY Complaint_Category
ORDER BY Total_Complaints DESC;

-- 3. Sentiment Distribution Percentage
SELECT 
    Sentiment_Label,
    COUNT(Id) AS Total_Count,
    ROUND((COUNT(Id) * 100.0 / (SELECT COUNT(*) FROM processed_sentiment_data)), 2) AS Percentage
FROM processed_sentiment_data
GROUP BY Sentiment_Label;

---

## 🎨 5. Phase 3: Power BI Dashboard Design & UI Architecture

The aggregated data was brought into Power BI Desktop to build a modern, high-contrast, executive-level dashboard.

### 📸 Dashboard Visual Layout
![Customer Sentiment Dashboard Preview](dashboard_preview.png)

### 🎨 Design & UI Architecture Highlights:
* **Thematic Palette:** Built with an **Emerald Green (`#059669`)** core theme paired with clean white container cards, soft drop shadows, and visual hierarchy.
* **Header Banner:** Full-width header displaying clear dashboard title and subtext.
* **Executive KPI Cards:** 
  * **Average Score:** `4.16` (Star rating indicator)
  * **Total Reviews:** `28,687` (Volume indicator)
  * **Average Sentiment Score:** `0.65` (Positivity index)
* **Interactive Donut Chart:** Visualizes sentiment distribution (**87.42% Positive**, **10.5% Negative**, **2.08% Neutral**).
* **Horizontal Bar Chart:** Highlights complaint drivers sorted from highest to lowest volume.

---

## 📊 6. Key Business Insights & Strategic Recommendations

Based on our exploratory data analysis and visual dashboard reporting, here are the core findings:

> [!IMPORTANT]
> ### 1. Overall Brand Health is Strong
> * Out of **28,687** customer reviews, **87.42%** are positive, yielding a solid average rating of **4.16 / 5.00**.

> [!WARNING]
> ### 2. Primary Product Risk: Product Quality & Taste
> * **`10.4K` complaints** originate from *Product Quality & Taste*, making up over **36% of total feedback**. 
> * *Action Item:* Supply chain and quality control teams must audit batch production and raw material sourcing immediately.

> [!CAUTION]
> ### 3. Secondary Bottleneck: Logistics & Packaging
> * **`7.5K` complaints** stem from *Logistics & Packaging* (shipping delays, damaged boxes).
> * *Action Item:* Operations management should re-evaluate fulfillment partner SLAs to reduce transit damage.


## 🛠️ Tools & Technologies Used

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-CC292B?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Markdown](https://img.shields.io/badge/Markdown-000000?style=for-the-badge&logo=markdown&logoColor=white)

---

### 👤 Author
* **Role:** PAWANI SHARMA Data Analyst
* **Focus Areas:** End-to-End Data Pipelines, Python EDA, SQL Data Modeling, Power BI UI/UX Architecture
