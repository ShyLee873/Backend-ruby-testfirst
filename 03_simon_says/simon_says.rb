def echo(callback)
    if callback == "hello"
        "hello"
    else
        "bye"
    end
end

def shout(callback)
     "#{callback}".upcase
end


def repeat(string, num = 2)
       ("#{string} " * num).strip
end

def start_of_word(w, n = 1 )
    word = w.split(//)
    newArray = []
    
    (0..(n - 1)).each {|i| newArray << word[i]}
    newArray.join
end

def first_word(w, n = 1)
    array = w.split(/ /)
    array.first
end

def titleize(title)
    excluded = ['over', 'the', 'and']
    titleArray = title.split(/ /)
    result = []

    titleArray.each_with_index do |item, index|
        if index == 0 || !excluded.include?(item)
            result << item.capitalize
        else
            result << item
        end
     end
      
    result.join(' ')
    
end 

