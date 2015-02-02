--[[
The MIT License (MIT)

Copyright (c) 2015 Jeffrey R. Jacobs

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--]]

local M = {}

local urandom = assert(io.open("/dev/urandom", "rb"))

local function newUUID()
    local block = urandom:read(18)
    return string.format("%02x%02x%02x%02x-%02x%02x-", block:byte(1, 7)) ..
            string.format("%02x%02x-", (block:byte(8) / 16) + 64, block:byte(9)) ..
            string.format("%02x%02x-", (block:byte(10) / 4) + 128, block:byte(11)) ..
            string.format("%02x%02x%02x%02x%02x%02x", block:byte(12, 18))
end

M.newUUID = newUUID
return M