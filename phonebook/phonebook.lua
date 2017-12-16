phonebook = {}
count = 0

function process_add()
    io.write('Name: ')
    io.flush()
    local name = io.read()
    io.write('Number: ')
    io.flush()
    local number = io.read()
    add(name, number)
end

function process_delete()
    io.write('Name to delete: ')
    io.flush()
    local name = io.read()
    delete(name)
end

function process_list()
    print('My Phonebook')
    for name,number in pairs(phonebook) do
        io.write(name .. '\t\t' .. number .. '\n')
        io.flush()
    end   
end

function process_search()
    io.write('Search for: ')
    io.flush()
    local name = io.read()
    search(name)
end

function show_help(command)
    io.write('add\tAdd new entry\n')
    io.write('del\tDelete an entry\n')
    io.write('list\tList all entries\n')
    io.write('help\tShow this help\n')
end

function add(name, number)
    phonebook[name] = number
    count = count + 1
end

function search(name)
    io.write(name .. '\t\t' .. phonebook[name] .. '\n')
    io.flush()
end

function delete(name)
    if phonebook[name] then
        phonebook[name] = nil
        count = count - 1
    end
end

function parse_command(command)
    if command == 'add' then
        process_add()
    elseif command == 'del'  then
        process_delete()
    elseif command == 'list' then
        process_list()
    elseif command == 'search' then
        process_search()
    else
        show_help(command)
    end
end

repeat
    io.write('adressbook (' .. count .. ') > ')
    io.flush()
    local command = io.read()
    parse_command(command)
until command == 'exit' or command == 'x'



