def translate(word) 
    vowel = ["a", "e", "i", "o", "u"]
    array = word.split(" ")
    answer = []

    array.each_with_index do |sub_string, index|
        sub_array = sub_string.split("")
        if vowel.include? sub_array[0]
            sub_array.push("ay")
        else
            while(!vowel.include? sub_array[0])
                if sub_array[0] == "q" && sub_array[1] == "u"
                    sub_array.push(sub_array.shift)
                    sub_array.push(sub_array.shift)        
                else
                    sub_array.push(sub_array.shift)
                end
            end
            sub_array.push("ay")        
        end
        answer.push(sub_array)
        if index != array.size-1
            answer.push(" ")
        end
    end
    answer.join()
end