--http://nova-fusion.com/2011/06/30/lua-metatables-tutorial/

local sm = setmetatable
local function infix(f)
  local mt = { __sub = function(self, b) return f(self[1], b) end }
  return sm({}, { __sub = function(a, _) return sm({ a }, mt) end })
end

local add = infix(function(a, b) return a + b end)

(5 -add- 4) * 2





