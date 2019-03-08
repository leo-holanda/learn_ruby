def add(x, y)
    x + y
end

def subtract(x, y)
    x - y
end

def sum(array)
    sum = 0
    array.each do |element|
        sum += element
    end
    sum
end

def multiply(array)
    result = 1
    array.each do |element|
        result = result * element
    end
    result
end

def power(x, n)
    x ** n
end

def factorial(y)
    if y == 0
        1        
    else
        token = y
        y * factorial(token - 1)
    end
end
