# T10 — Power BI from Zero

T10 introduces business intelligence with Microsoft Power BI.

## Prerequisites

Complete T00–T09 first, especially:

- T08 — SQL from Zero
- T09 — Excel from Zero

## Core mental model

```text
Data Source
   ↓
Power Query
   ↓
Semantic Model
   ↓
DAX Measures
   ↓
Visuals
   ↓
Report
   ↓
Publish / Share
```

## You will learn

- BI and Power BI fundamentals
- Power BI Desktop and Power BI Service
- importing CSV data
- Power Query at beginner level
- data types
- basic transformations
- loading data
- Report, Table and Model views
- semantic model basics
- relationships at recognition level
- measures and beginner DAX
- cards, tables, column/bar charts
- slicers and filters
- report interactions
- report design basics
- publishing concepts

## First measures

```DAX
Total Sales = SUM(Sales[Total])

Average Sale = AVERAGE(Sales[Total])

Number of Sales = COUNTROWS(Sales)
```

## Deliberately postponed

- advanced DAX
- CALCULATE in depth
- time intelligence
- star schema design in depth
- Power Query M
- row-level security
- gateways
- deployment pipelines
- DirectQuery/composite model design
- Fabric administration
- performance optimization

## Mini challenge

Build a one-page **Sales Overview** report from `data/sales-data.csv`.

## Next

T11 continues the Foundations sequence.
