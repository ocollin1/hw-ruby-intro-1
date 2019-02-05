# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.size == 0
    return 0
  end
  total = 0
  arr.each { |j| total += j}
  return total
end

def max_2_sum arr
  if arr.size == 0
    return 0
  end
  if arr.size == 1
    return arr.at(0)
  end
  
  arr.sort!.reverse!
  return arr[0] + arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for num in 0...arr.length
 #   it = num+1
    for it in num+1...arr.length 
      return true if arr[it] + arr[num] == n
      #it+=1
    
    end
  end
  return false

end



# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  return s =~ /^([B-D]|[F-H]|[J-N]|[P-T]|[V-Z])/i
end

def binary_multiple_of_4? s
  return s=~ /^0$|(^[01]*10(0+)$)/
end

# Part 3


class BookInStock
  # YOUR CODE HERE

  def initialize(isbn, price)

      raise ArgumentError.new("Price should be a scalar positive integer") unless price>0.0
      raise ArgumentError.new("ISBN cannot be blank") if isbn.nil? || isbn.empty?
      @isbn = isbn
      @price = price

  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end 
  
  def price_as_string
    pos = @price.truncate
    dec = Integer((@price%1)*100)
    attach = (dec==0)? "00" : "#{dec}"
    return "$#{pos}.#{attach}"
  end

end