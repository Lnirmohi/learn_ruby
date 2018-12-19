#write your code here
def ftoc(temp)
    tempInC = (temp-32) * (5.0/9.0)

    return tempInC
end

def ctof(temp)
    tempInF = (temp * (9.0/5.0)) + 32

    return tempInF
end
