# Return a reverse copy of the array

def reverse(an_array)
	an_array.reverse
end

# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example histogram('Hello') returns {'h'=>1, 'e'=>1, 'l'=>2, 'o'=>1}

def histogram(a_string)
  a_string.downcase!
  Hash[a_string.delete(' ').split('').group_by{ |c| c }.map{ |k, v| [k, v.size] }]
end

# Sum all the numbers in an array
# an_array can contain a lot different things
# Be sure only to only sum the numbers
# (Hint: the is_a? method might be useful here)

def sum_only_numbers(an_array)
  an_array = an_array.find_all { |val| val.is_a?(Numeric) }
  an_array.inject(0) { |sum, i| sum+i }
end

# For i from 1 to 100, return an array
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is the value of i

def fizzbuzz
  element = []
  for i in 1..100
    if (i % 3 == 0) && (i % 5) == 0 then
      element[i-1] = 'FizzBuzz'
    elsif i % 3 == 0 then 
      element[i-1] = 'Fizz'
    elsif i % 5 == 0 then 
      element[i-1] = 'Buzz'
    else
      element[i-1] = i
    end
  end
  element = element.join.delete("\n")
end 

# puts reverse([3,6, 'dog']).inspect
# puts histogram('The quick red fox').inspect
# puts sum_only_numbers([4,'foo',[ ], 27, :rain, 3.14])
# puts fizzbuzz
