factors = { 2, 5, 8, 3 }

function multiplicate(factor)
    local product = 1
    local function mul(p)
        if type(p) == 'number' then
            product = product * p
            return mul
        else
            return product
        end
    end

    return mul(factor)
end

function curry(func)
    return function (param1)
        return function (param2)
            return func(param1, param2)
        end
    end
end

result = 0
f = multiplicate
for idx,val in ipairs(factors) do
    f = f(val)
end

print('multiplicate all in a table: ' .. f())

print('multiplicate in a row: ' .. multiplicate (4) (3) (8) (2) ())

multi = curry(function(a, b) return a * b end)
print('mulitplicate with curried: ' .. multi(2)(3))

multi_by_four = multi(4)
print('multiplicate by precurried function: ' .. multi_by_four(3))
