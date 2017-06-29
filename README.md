A small awk script for crosstab
---

### Usage

|Name| Property | Count |
|-|-|-|
|Walter|Bike|1|
|Walter|Car|1|
|Bill|Plane|1|
|Bill|Car|4|
|Trump|Plane|2|

```
awk -F, -v first=1 -v sec=2 -v val=3 -f crosstab.awk data-without-header.csv
```

|Name| Bike | Car | Plane |
|-|-|-|
|Walter|1|1|0|
|Bill|0|4|1|
|Trump|0|0|2|
