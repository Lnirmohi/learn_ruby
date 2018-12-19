#write your code here
def translate(str)

    strArray = str.split(" ")

    strArray.each_with_index{
        |x, index|

        if x.start_with?(/[aeiou]/)
            strArray[index] = x+"ay"
        elsif x.start_with?(/[^aeiou]?qu/)
            strArray[index] = x.sub(/([^aeiou]?qu)(.+)/, "\\2\\1ay")
        else
            strArray[index] = x.sub(/([^aeiou]+)(.+)/, "\\2\\1ay")
        end
    }

    return strArray.join(" ")
end