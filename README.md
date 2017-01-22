# Cabinet for Corona
Save and retrieve:
- Tables
- Numbers
- Strings
- Booleans


# Usage
Load module:
```
local cabinet = require("cabinet")
```
Save data:
```
cabinet.set("aKey", aValue)
```
Get data:
```
cabinet.get("aKey")
```
Delete saved item:
```
cabinet.del("aKey")
```
Delete all saved items:
```
cabinet.clr()
```


# Warning
**Cabinet is specifically built for Corona SDK.**
