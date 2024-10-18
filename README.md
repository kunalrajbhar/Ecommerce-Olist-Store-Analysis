# E-commerce Analysis of Olist Store 🛒📊

## 📄 Project Overview
This project aims to analyze the e-commerce transactions of the **Olist Store**, focusing on key performance indicators (KPIs) that highlight customer behavior, payment statistics, delivery times, and review scores. The analysis utilizes **Excel**, **Tableau**, **PowerBI**, and **MySQL** for data manipulation, visualization, and reporting.

---

## ⚙️ KPIs Analyzed

### 1. **Weekday vs Weekend Orders**
- **Metric**: Total number of orders on weekdays vs weekends.
- **Objective**: Identify if there is a significant difference in order volumes between weekdays and weekends based on the `order_purchase_timestamp`.

### 2. **Payment Statistics**
- **Metric**: Number of orders with a review score of 5 where the payment type is **credit card**.
- **Objective**: Analyze the correlation between high review scores and preferred payment methods.

### 3. **Delivery Time for Pet Shop Orders**
- **Metric**: Average number of days taken for the order to be delivered to customers for the **Pet Shop** category.
- **Objective**: Measure the efficiency of delivery services for a specific product category.

### 4. **Average Price and Payment Values for São Paulo City**
- **Metric**: Average purchase price and payment values for customers residing in **São Paulo City**.
- **Objective**: Understand the purchasing power and behavior of customers in a major city.

### 5. **Shipping Days vs Review Scores**
- **Metric**: Relationship between **shipping days** (calculated as `order_delivered_customer_date - order_purchase_timestamp`) and **review scores**.
- **Objective**: Assess how the speed of delivery impacts customer satisfaction.

---

## 🔑 Key Findings

1. **Weekday vs Weekend Orders**: 
   - The payment done in weekday is 77% and  weekend is 23%, which is representing highest payment on weekday as compared to weekend.

2. **Payment Statistics**: 
   - With a review score of 5 and payment type as a credit card, highest order has been received .

3. **Delivery Time for Pet Shop Orders**: 
   - 11 days is the avg days taken to deliver the order for pet shop.

4. **Average Price and Payment Values for São Paulo City**: 
   - The payment is more as compared to price of the product.
   - Customer paying 41% extra for products.

5. **Shipping Days vs Review Scores**: 
   - Less shipping days is having highest review score.
   - Highest shipping days is having less review score.
   - Customer satisfaction is based on shipping days.

---

## 🛠️ Tools & Technologies Used

- **Excel**: For data cleaning, transformation, and preliminary analysis.
- **PowerBI**: For creating interactive dashboards and visualizations of KPIs.
- **Tableau**: For data visualization and deeper insights into customer behavior.
- **MySQL**: For querying and aggregating data from the Olist Store dataset.

---

## 📊 Data Visualizations
The project includes visualizations for:
- Weekday vs Weekend Order Volume.
- Correlation between Payment Types and Review Scores.
- Average Delivery Times for Pet Shop Orders.
- Customer Purchase Behavior in São Paulo City.
- Shipping Days vs Review Scores.

---

## 📈 How to Run the Analysis
- Data Preparation:
  Use MySQL to run the provided queries to extract and prepare the data.
- Analysis:
  Open the Excel file (E-Commerce Project.xlsx) to explore the data transformations.
- Visualization:
  View and interact with the dashboards in PowerBI (E-Commerce Project.pbix) or Tableau (E-Commerce Project.twbx).

## 📂 Project Structure

```plaintext
├── data
│   └── E-Commerce Project.sql             # MySQL scripts for querying data
├── reports
│   ├── E-Commerce Project.xlsx        # Excel file containing data manipulation and analysis
│   └── E-Commerce Project.pbix        # PowerBI file with dashboards
├── visualizations
│   └── E-Commerce Project.twbx # Tableau file for advanced visualizations
├── README.md                      # Project documentation
└── results
    └── E-Commerce Project.ppt            # Final report containing major KPIs and insights


