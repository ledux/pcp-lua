func_list = {}
func_list.umfang = function(a, b) return 2 * (a + b) end
func_list.flaeche = function(a, b) return a * b end

function calculate_list(list, a, b)
    for name,val in pairs(list) do
        print(name)
        print(val(a,b))
    end
end

