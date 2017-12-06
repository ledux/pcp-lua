function printNumbersGoto(n)
  local start = 0
  
  ::loop::
  io.write(start .. " ")
  
  start = start + 1
  
  if n + 1 == start then
    return
  end
  goto loop
end

function printNumbersFor(n)
  for i = 0, n do
    io.write(i .. " ")
  end
end

function printNumbersRecursiveFunction(n)
  if(n == -1) then
    return
  end
  
  printNumbersRecursiveFunction(n -1)
  
  io.write(n .. " ")
end

printNumbersGoto(7)
io.write("= printNumbersGoto(7)\n")

printNumbersFor(7)
io.write("= printNumbersFor(7)\n")

printNumbersRecursiveFunction(7)
io.write("= printNumbersRecursiveFunction(7)")