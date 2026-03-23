# shopping-trends-analysis
## 📌 Project Overview
An end-to-end sales analysis of 3,900 customer records using PostgreSQL 
to uncover revenue trends, customer behaviour and market opportunities.

## 🛠️ Tools Used
- **PostgreSQL** — Database & SQL queries
- **DBeaver** — SQL editor

## 📊 Dataset
- **Source:** Kaggle — Shopping Trends Dataset
- **Records:** 3,900 customer transactions
- **Columns:** Customer ID, Age, Gender, Category, Purchase Amount, 
  Location, Season, Subscription Status, Payment Method and more

---

## Business Questions Answered

### 1. Which product category generates the most revenue?
**Finding:** Clothing dominates with $104,264 in revenue — 44% of 
total revenue. However average order value is consistent across all 
categories at ~$59-60, meaning revenue differences are driven by 
purchase frequency not price.

### 2. Which season drives the most sales?
**Finding:** Fall generates the highest revenue despite Spring having 
the most orders. This suggests Fall customers purchase slightly higher 
value items — likely driven by seasonal products like coats and boots.

### 3. Do subscribers spend more than non-subscribers?
**Finding:** Subscription status has almost no impact on spend per 
transaction — only a $0.38 difference ($59.87 vs $59.49). 
Non-subscribers generate more total revenue simply because they 
represent a larger customer base, suggesting the subscription The 
programme has not yet converted the majority of customers.

### 4. What does our customer base look like by value segment?
**Finding:** 
- High Value (spend $80+): 1,024 customers — avg spend $90.08
- Mid Value (spend $50-79): 1,410 customers — avg spend $64.44
- Low Value (spend <$50): 1,466 customers — avg spend $34.09

High Value customers represent 26% of the base but spend 2.6x more 
than Low Value customers — retention efforts should prioritise 
this segment.

### 5. Which locations are our biggest markets?
**Finding:** Montana, Illinois and California are the top 3 states 
by revenue. Average spend is consistent across states (~$59-63), 
meaning revenue is driven by order volume not price. 

### 6. Does gender influence purchasing behaviour?
**Finding:** Revenue and average spend are consistent across genders,
suggesting gender does not significantly influence purchasing 
behaviour in this dataset.

---

## Key Takeaways
1. **Price sensitivity is low** — customers spend ~$60 regardless 
   of category, season, location or gender
2. **Volume drives revenue** — the biggest opportunity is increasing 
   purchase frequency not raising prices
3. **Subscription programme needs work** — it is not changing 
   customer spending behaviour
4. **Focus on High Value customers** — 26% of customers driving 
   disproportionate revenue deserve dedicated retention strategy
5. **Target Mid Value customers** — most likely to convert to 
   High Value with the right promotions

---
