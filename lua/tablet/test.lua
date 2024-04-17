-- Open the pipe for reading
local f = assert(io.open("/dev/input/event13", "r"))

-- Read the content of the pipe
local content = assert(f:read('*a'))

-- Close the pipe
f:close()

-- Print the content
print(content)
