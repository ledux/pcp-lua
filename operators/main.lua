--http://nova-fusion.com/2011/06/30/lua-metatables-tutorial/

local sm = setmetatable
local function infix(f)
  local mt = { __sub = function(self, b) return f(self[1], b) end }
  return sm({}, { __sub = function(a, _) return sm({ a }, mt) end })
end

local add = infix(function(a, b) return a + b end)

local result = (5 -add- 4) * 2
print(result)


function hello()
  error("test1", 2)
  print("test2")
end

function hello2()
  hello()
end

function hello3()
  hello2()
end

hello2()



