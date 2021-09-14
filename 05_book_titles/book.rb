class Book
    attr_accessor :title

    def title
        cap = title.capitalize
    end

    def title
        words = @title.split(" ")
        result = []
        exclude = ["a","an", "and", "the", "in", "of"]
    
        words.each do |word|
            if exclude.include? word
                result.push(word)
            else
                result.push(word.capitalize)  
            end
        end

        if exclude.include? words[0]
            words[0].capitalize!
        end
        title = result.join(" ")
    
    end  

end

