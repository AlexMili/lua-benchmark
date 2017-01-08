# lua-benchmark
Some Lua benchmark functions

These tests are executed in torch environment and LuaJIT 2.1.0-beta1 on OSX x64.

Just run 
```bash
th benchmark.lua
```

# Benchmarks

## tds.Hash VS Df_Dict

<u>Number of iterations :</u> **1000**
<u>Data loaded :</u>
```lua
local tabl = {["col1"]=1,["col2"]=2,["col3"]=3,["col4"]=4,["col5"]=5,["col6"]=6,["col7"]=7}
```
<u>Results :</u>
```
Df_Dict init took an average of 3.084659576416e-06
Hash init took an average of 4.1344165802002e-06
-----------------------------------
Df_Dict access key took an average of 2.4223327636719e-07
Hash access key took an average of 3.0994415283203e-07
```

## pairs(table) VS ipairs(table) VS #table

<u>Number of iterations :</u> **1000**
<u>Data loaded :</u>
```lua
local tabl = {1,2,3,4,5,6,7}
```
<u>Results :</u>
```
pairs(table) access took an average of 2.3531913757324e-07
ipairs(table) access took an average of 2.1266937255859e-07
#table access took an average of 2.0670890808105e-07
```