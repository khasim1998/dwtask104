%dw 2.0
output application/json
//Here I am splited the given payload as of my expected output by using map&splitby functions
---
payload map ({
    "name":($."name|age" splitBy  "|")[0],
    "name":($."name|age" splitBy  "|")[-1]
})






/*
o/p:
[
  {
    "name": "surendra",
    "age": "31"
  }
]
*/