----------------------------------
-----trycatch runtime error
----------------------------------

function try(f, catch_f)
  local status, exception = pcall(f)
  if not status then
    catch_f(exception)
  end
end

try(function()
  
  print("dosth")
  error("this is an exception")
  print("this will not be printed")
end, function(e)
  print(e)
end)

--http://luatut.com/assert.html

--------------------------------
---- assert try catch
--------------------------------

function add(a,b)
   assert(type(a) == "number", "a is not a number")
   assert(type(b) == "number", "b is not a number")
   return a+b
end

try(function()
  print(add(10, "sdf"))
  print("this will not be printed")
end, function(e)
  print(e)
end)

--------------------------------
---- assert only
--------------------------------

--print(add(10, "sdf"))
--print("this will not be printed")