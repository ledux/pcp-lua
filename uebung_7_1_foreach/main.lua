function createArray()
  local table = {}
  
  function table:foreach(func)
    for key, value in pairs(self) do
      if type(key) == "number" then
        print(value)
      end
    end
  end
  
  return table
end


local array = createArray()
  array[1] = "test1"
  array[2] = "test2"
  array[3] = "test3"
  
array:foreach(function(key, value) print(value) end)

