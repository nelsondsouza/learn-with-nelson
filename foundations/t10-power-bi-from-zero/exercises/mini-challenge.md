# T10 Mini Challenge — Sales Overview

Using `data/sales-data.csv`, independently build a one-page report.

## Data preparation

- import the CSV
- rename the query `Sales`
- verify data types
- create Total = Quantity × Unit Price in Power Query
- Close & Apply

## Measures

Create:

```DAX
Total Sales = SUM(Sales[Total])
Average Sale = AVERAGE(Sales[Total])
Number of Sales = COUNTROWS(Sales)
```

## Report

Include:

- report title
- Total Sales card
- Average Sale card
- Number of Sales card
- Sales by Item chart
- Sales by Category chart
- Region slicer
- detail table

## Explain

Write five sentences explaining:

1. where the data came from
2. what Power Query changed
3. what a semantic model is at beginner level
4. what your measures calculate
5. one insight from the report

Do not copy the solution while building.
