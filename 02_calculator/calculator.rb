def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(array)
    array.inject(0) { |sum, element| sum += element}
end

#Extra Credit!!!

def multiply(*num)
    num.inject(1) { |product, n| product * n}
end

def power(num1, num2)
    num1**num2
end

def factorial(num)
    unless num == 0 
        Math.gamma(num + 1).round 
    else
        return 1
    end
end


