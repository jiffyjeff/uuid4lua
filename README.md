# uuid4lua

Simple, Fast, and Correct UUID v4 support for Lua

## About

* Lua support for generating random [UUIDs](http://en.wikipedia.org/wiki/Universally_unique_identifier)
* Requires Linux (or other OS with /dev/urandom)


## Features

* Does not reinvent random number generation; No tricky seeding required
* Not reliant on timestamps: Simultaneous executions produce unique values
* Very fast (Approx 5 x faster than similar libraries in informal testing)
* Simple and easy to use

## Usage

```Lua
-- Simple usage example
local uuid4 = require("uuid4")
print(uuid4.newUUID())
```
```
41b90d25-901a-41a6-87f5-4b966033c7c1
```
```Lua
-- Generate some more
for i = 1, 10 do
    print(uuid4.newUUID())
end
```
```
703a4690-cfc7-4fde-b704-469e15fd98d8
c32bbfff-34e4-4531-b49e-b5da796d71eb
5185951c-dd3e-4fc2-99b1-7dc39088751e
84be6cbb-3d90-4441-b538-48ac5537efae
e5b1f907-9a76-4b63-b85a-2c1ebc36bdd6
da9399e3-c832-4aa0-9f50-13ae0522101e
75317336-b61b-4db3-ba7f-f46eb45f8f8a
60515960-6687-4518-a35c-c6746849345e
be3d49cd-20dd-4851-837d-5d731a4991cb
1212ab61-27d1-460f-8a3a-62b9f25675fc
```
