# a method that returns the sum of two integers

# Casual
# define a method that takes 2 numbers as a parameter, than calculates the sum of these 2 numbers when the method is being called

# Formal

=begin
START defining a method
SET x, y = 2 parameters
READ x +/-/*// y
END
=end

def calculate(x, y)
  x + y
end

p calculate(10, 15)


# a method that takes an array of strings, and returns a string that is all those strings concatenated together

# Casual
# Create an array with a few strings, then define a method that takes those strings and makes one big string out of it when calling the method

# Formal

=begin
START

SET strings = ["x", "y", "z"]
SET defining a method called "united" that takes a parameter (array) as an argument
READ array.join
END
=end

strings = ['x', 'y', 'z']

def united(array)
  array.join
end

p united(strings)


# a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element
# For instance: every_other([1,4,7,2,5]) # => [1,7,5]

# Casual
# see above

# Formal

=begin
START
SET d
END
=end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
whatever = ['ich', 'dich', 'mich']

def second(a)
  number2 = []
  a.each_with_index do |x, y|
    if y.even?
      number2.push(x)
    end
  end
  return number2
end

p second(numbers)
p second(whatever)


# Casual
# a method that determines the index of the 3rd occurrence of a given character in a string.
# For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x').
# If the given character does not occur at least 3 times, return nil.

# Formal

=begin
START method - three_times(string, parameter = 'a')
SET iterator = 0
LOOP three_times.each_char.with_index |char, ind|
  IF char == parameter
    SET iterator += 1
  IF iterator == 3
    RETURN ind
RETURN nil
=end


def times_three(string, parameter = 'a')
  i = 0
  string.each_char.with_index do |char, ind|
    if char == parameter
      i += 1
    end
    if i == 3
      return ind
    end
  end
  return nil
end

p times_three('addfgawwwxddadf', 'w')


# Casual

# create 2 arrays
# create an array that conatins both arrays but the 1st at the even index',
# and the 2nd at the odd index'

# Formal

=begin
START given 2 arrays, def method(merger)
  variable.transpose.flatten
END
=end

def merger(here_and_there)
  here_and_there.transpose.flatten
end

merge = [[1, 2, 3], [4, 5, 6]]

p merger(merge)