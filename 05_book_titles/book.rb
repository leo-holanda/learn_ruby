def titleize(word)
    little_words = ["over", "and", "the", "in", "of", "a", "an"]
    titleized = ""
    array = word.split(" ")
    array.each_with_index do |sub_string, index|

        if  index == 0
            sub_string[0] = sub_string[0].upcase        
            titleized += sub_string
        elsif little_words.include? sub_string.downcase
            titleized += sub_string
        else
            sub_string[0] = sub_string[0].upcase        
            titleized += sub_string        
        end
        
        if index != array.size - 1
            titleized += " "
        end
    end
    titleized
end


class Book

    def title=title
        @title = titleize(title)
    end
    def title
        @title
    end
end