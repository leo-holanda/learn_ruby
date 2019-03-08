def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, n=1)
    if n == 1
        return (word + " " + word)
    else
        array = ""
        array += word
        n = n - 1
        n.times do
            array += " "
            array += word
        end
    end
    array
end

def start_of_word(word, slice)
    sub_string = ""
    index = 0
    slice.times do
        sub_string += word[index]
        index = index + 1
    end
    sub_string
end

def first_word(word)
    array = word.split(" ")
    array[0]
end

def titleize(word)
    little_words = ["over", "and", "the"]
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
