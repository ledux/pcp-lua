function fib_own(n)
  if n == 0 or n == 1 then
      return n
  else
    return fib(n -1) + fib(n -2)
  end
end


function fib(n, akku)
    if n < 3 then 
      return 1
    else 
      return fib(n-1, akku) + fib(n-2, akku) 
    end
end

function akku(fn)
    local akku = {}
 
    return function(n)
        akku[n] = akku[n] or fn(n, akku)
        return akku[n]
    end
end


-----------------------
---- akku
----------------------
fibakku = akku(fib)
print(wert(30))
print(wert(30))


