phonebook = {}

function add(name, number)
    phonebook[name] = number
end

function search(name)
    return phonebook[name]
end
