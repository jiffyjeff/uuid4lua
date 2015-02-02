-- Simple usage example
local uuid4 = require("uuid4")
print(uuid4.newUUID())


-- Generate some samples
for i = 1, 10 do
    print(uuid4.newUUID())
end

