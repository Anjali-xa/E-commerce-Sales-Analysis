# E-commerce Sales: Excel & Power BI Guide

This guide complements the CSV dataset and Python starter script in this repository.

## Excel workflow
Convert CSV to a Table (`Ctrl+T`). Add `Revenue = [@quantity]*[@unit_price]`, `Cost = [@quantity]*[@unit_cost]`, `Profit = [@Revenue]-[@Cost]`, and `Profit Margin = IFERROR([@Profit]/[@Revenue],0)`. Build PivotTables by category, region and month.

## Power BI dashboard
 Import `data/dataset.csv`. Create measures:
```DAX
Total Revenue = SUMX(sales, sales[quantity] * sales[unit_price])
Total Profit = SUMX(sales, sales[quantity] * (sales[unit_price]-sales[unit_cost]))
Orders = DISTINCTCOUNT(sales[order_id])
Profit Margin = DIVIDE([Total Profit],[Total Revenue])
```
Dashboard: revenue/profit/margin cards; monthly revenue line chart; category and region bar charts; slicers for date, category and region.

## Import and modelling notes
1. In Power BI Desktop choose **Get Data → Text/CSV** and select `data/dataset.csv`.
2. Rename the imported table to the name used in the DAX measures in this guide.
3. Check data types (dates as Date, counts and amounts as Whole/Decimal Number).
4. Create the measures from **Modeling → New measure**.
5. Add the suggested visuals and slicers; save your work as `dashboard.pbix` in this repository when finished.

**Important:** The supplied datasets are small synthetic practice samples. Validate field names and data types after import. The PBIX dashboard must be created and saved in Power BI Desktop; this guide does not claim a PBIX file is already included.
