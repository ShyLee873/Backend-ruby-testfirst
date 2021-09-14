def translate(word)
    vowels = ["a", "e", "i", "o", "u"]
    cons = (("a".."z").to_a).reject{ |a| a =~ /[aeiou]/}
    eval = word.split(/ /)
    result = []
    eval.each do |item|  
        if vowels.include?(item.chars[0])
            result.push(item + "ay").to_s
        elsif cons.include?(item.chars[0]) && cons.include?(item.chars[1]) && cons.include?(item.chars[2]) || item.chars[2] == "u"
            result.push(item.split.map { |item| item.chars.rotate(3).join}.join + "ay").to_s    
        elsif cons.include?(item.chars[0]) && cons.include?(item.chars[1]) || item.chars[1] == "u"
            result.push(item.split.map { |item| item.chars.rotate(2).join}.join + "ay").to_s
        else cons.include?(item.chars[0])
            result.push(item.split.map { |item| item.chars.rotate.join }.join('') + "ay").to_s
        end        
    end
    result.join(' ')
   
end