# Solution — First Measures

```DAX
Total Sales = SUM(Sales[Total])
```

```DAX
Average Sale = AVERAGE(Sales[Total])
```

```DAX
Number of Sales = COUNTROWS(Sales)
```

A measure is evaluated in the current filter context. That is why a card using `Total Sales` can change when a Region slicer changes.
