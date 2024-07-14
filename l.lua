-- Gfaerny
-- With Focus Editor

-- No License
-- Hope You Use and like 
-- 
--


local term = require("term")

-- Function to read input until Ctrl+A is pressed
function readUntilCtrlA()
    local input = ""
    while true do
        local char = term.getchar()
        if char == "\001" then  -- Ctrl+A
            break
        else
            input = input .. char
        end
    end
    return input
end




function ooo()
    local input = ""
    while true do
        local char = term.getchar()
        if char == "\001" then  -- Ctrl+A
            break
        else
            input = input .. char
        end
    end
    return input
end



function executeScriptWithInput(scriptPath, inputString)
    local command = string.format('%s "%s"', scriptPath, inputString)
    local file = io.popen(command)
    local output = file:read('*a')
    file:close()
    print(output)
end

-- Emd of Function's 


-- Somthing Like main Section


--AcCessing command-line arguments

for i, v in ipairs(arg) 
    do
    print(string.format("Argument %d: %s", i, v))
    end

--commandline arguments in variables
local arg1 = arg[1] or "default_value"
local arg2 = arg[2] or "default_value"
local sp = arg1  -- Script Path
local tt = arg2  -- Time OF in & out

-- for Loop For Geting Input And output's

local vec 


for i = 0 , tt - 1
    do 
        print("Insert (input) Then Use Ctrl - A For End ->")
        local GainInput = readUntilCtrlA()
        print("Insert (output) Then Use Ctrl - A For End ->")
        local GainOutput = ooo()
        
        -- Check The Answer 
            
        local command = string.format('%s', arg1)
        local file = io.popen(command, 'w')
        file:write(GainInput)
        file:close()
        local file = io.popen(command, 'r')
        local output = file:read('*a')
        file:close()            
        local scriptOutput = output
        
            if sciptOutput == GainOutput
            then 
            local green = "\27[32m"
            local reset = "\27[0m"
            print(green .. "ACCEPT" .. reset)
            end 
            
            if sciptOutput ~= GainOutput
            then
            -- Red color ANSI escape code
            local red = "\27[31m"
            print(red .. "NOTACCEPT" .. reset)
            print("Your output = ")
            print(scriptOutput)
            end
        
    end 





local inputString = "Hello, World!"
executeScriptWithInput(scriptPath, inputString)
