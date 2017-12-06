function getCustomArray()
  local table = {}
  table[1] = "test1"
  table[2] = "test2"
  table[3] = "test3"
  
  function table:foreach(func)
    for key, value in pairs(self) do
      if type(key) == "number" then
        print(value)
      end
    end
  end
  
  return table
end


local array = getCustomArray()

array:foreach(function(key, value) print(value) end)

