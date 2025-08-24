# Blinkit Data Analysis Project

![Project Banner](1)

## Overview

This project is a Data Analyst's exploration and analysis of sales and product data from Blinkit, using both Python (Jupyter Notebook) and SQL. The analysis focuses on uncovering insights related to product sales, outlet performance, item fat content, and more.

## Table of Contents

- [Project Structure](#project-structure)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Key Analysis Performed](#key-analysis-performed)
- [How to Run](#how-to-run)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

---

## Project Structure

```
Capstone/
├── python.ipynb              # Jupyter Notebook for Python-based data analysis
├── SQLQuery2.sql             # SQL queries for data cleaning and insights
├── tempCodeRunnerFile.ipynb  # Temp notebook file, usually for quick tests
├── BlinkIT_data.csv          # (Not included) Raw data file, expected in working directory
└── (images, docs, etc.)
```

## Features

- **Data Cleaning**: Standardizes product fat content categories across the dataset.
- **Descriptive Analysis**: Computes total sales, average sales, item counts, and average ratings.
- **Visualization**: Shows product sales distribution by fat content and other KPIs.
- **SQL Analytics**: Provides equivalent SQL scripts for database analysis, aggregation, and pivoting.
- **Business Insights**: Extracts KPIs and summarizes essential trends for management.

## Technologies Used

- **Python**: pandas, numpy, matplotlib, seaborn
- **Jupyter Notebook**
- **SQL**: Standard SQL for data exploration and cleaning
- *(Optional for presentation)* Markdown, images

## Key Analysis Performed

- Data import, shape, and head/tail inspection
- Data cleaning: merged variants of 'Low Fat' and 'Regular'
- KPIs:
  - Total Sales
  - Average Sales
  - Total Items Sold
  - Average Rating
- Sales breakdown by item fat content (pie charts)
- SQL queries for:
  - Data cleaning (fat content harmonization)
  - Aggregation and group-by for sales, ratings, and outlet performance
  - Pivoting sales metrics for comparison

## How to Run

1. **Python Analysis**:
    - Make sure you have `BlinkIT_data.csv` in your working directory.
    - Open `python.ipynb` in Jupyter Notebook or any compatible environment.
    - Run all cells to perform data cleaning and analysis.

2. **SQL Analysis**:
    - Load the data into your SQL database as `blinkit_data`.
    - Run queries from `SQLQuery2.sql` in your SQL environment to reproduce the analysis.

## Screenshots

- ![Banner/Theme](1)
- (Add screenshots of your notebook outputs or charts here)

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or suggestions.

## License

This project is for educational purposes.

---

> **Author:** [rish672003](https://github.com/rish672003)  
> **Project:** Capstone - Blinkit Data Analysis
