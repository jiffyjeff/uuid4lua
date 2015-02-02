# uuid4lua

Simple, Fast, and Correct UUID v4 support for Lua

## About

* Lua support for generating random [UUIDs](http://en.wikipedia.org/wiki/Universally_unique_identifier)
* Requires Linux (or anything other OS with /dev/urandom)


## Features

* Does not reinvent random number generation; No seeding required
* Unlike some "random" UUID generators, this one produces unique values
* Very Fast (Approx 4 x faster than competition in informal testing)
* Simple and easy to use

## Usage

    local uuid4 = require("uuid4")
    print(uuid4.newUUID())

