temp = {1, 2, 3, 4}

---------------------------------
---- foreach
---------------------------------

for key, value in pairs(temp) do
  print(key .. value)
end
---------------------------------
---- for !! index beginnt bei 1
----------------------------------
for i = 0, 3, 1 do
  
  io.write("index " .. i .. ": ")
  io.write(temp[i] or "null")
  print()
end

