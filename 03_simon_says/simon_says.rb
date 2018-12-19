#write your code here
def echo(str)
    return str
end

def shout(str)
    return str.upcase
end

def repeat(str, howMany = 2)
    newStr = ""

    howMany.times do
        newStr = newStr + str + " "
    end

    return newStr.chomp(" ")
end

def start_of_word(str, howMany)
    newStr = ""

    howMany.times do |x|
        newStr = newStr + str[x]
    end

    return newStr
end

def first_word(str)
    return str.split(" ")[0]
end

def titleize(str)

    newStr = str.capitalize

    strArray = newStr.split(" ")

    strArray.each_with_index {
        |x, index|

        if x != "the" && x != "over" && x != "and"
            strArray[index] = strArray[index].capitalize
        end
    }

    return strArray.join(" ")
end
