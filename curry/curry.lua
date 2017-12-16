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

result = 0
f = multiplicate
for idx,val in ipairs(factors) do
    f = f(val)
end

print(f())
