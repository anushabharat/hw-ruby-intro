# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
 a = arr.sort()
 length = a.length
  if a.length == 0
   return 0
  elsif a.length == 1
    return a[0]
  else
    return a[length-1] + a[length-2]
  end
end

def sum_to_n? arr, n
  a = arr.sort()
  f = 0
  l = a.length - 1
  while f < l
    sum = a[f] + a[l]
    if sum == n
      return true
    elsif sum < n
      f = f + 1
    else
      l = l - 1
    end
  end
  return false
end

# Part 2
def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  c = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
  if s.length == 0
    return false
  elsif c.index(s[0])
    return true
  else
    return false
  end
  
end

def binary_multiple_of_4? s
  if s.length == 0
   return false
  end
  if !(s.chars.all? {|x| x =~ /[01]/})
    return false
  end
  if (s.to_i(10) % 4 == 0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end

  def isbn=(newIsbn)
    @isbn = newIsbn
  end

  def price
    @price
  end

  def price=(newPrice)
    @price = newPrice
  end

  def price_as_string
    return "$"+ sprintf("%.2f", @price)
  end
end
