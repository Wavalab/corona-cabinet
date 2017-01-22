-- Require cabinet
local cabinet = require("cabinet")

-- Save nums, strings, bools, and tables
cabinet.set("aNum", 27)
cabinet.set("aStr", "Lasers are cool.")
cabinet.set("aBool", false)
cabinet.set("aTbl", { 1, "two", 3, false })

-- Retrieve nums, strings, bools, and tables
print("Stored number:", cabinet.get("aNum"))
print("Stored string:", cabinet.get("aStr"))
print("Stored boolean:", cabinet.get("aBool"))
print("Stored table:", cabinet.get("aTbl"))

-- Other functions
cabinet.del("aNum") -- Delete entries
cabinet.clr() -- Clear cabinet
