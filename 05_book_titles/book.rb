class Book
# write your code here
    attr_reader :title

    def title=(new_title)
        titleArray = new_title.split(" ")

        strangeWords = ["a", "an", "the", "in", "of", "and"]

        titleArray.each_with_index{
            |word, index|

            if !strangeWords.include?(word) || index == 0
                titleArray[index] = word.capitalize
            end
        }

        @title = titleArray.join(" ")
    end

end