def rotate_array(array)
 rot_arr = array.clone
 rot_arr.push(rot_arr.shift)
end

def rotate_string(string)
  rot_string = string.split('')
  rotate_array(rot_string).join
end

def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

def rotate_rightmost_digits(number, digits)
  all_digits = number.to_s.chars
  all_digits[-digits..-1] = rotate_array(all_digits[-digits..-1])
  all_digits.join.to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true


p rotate_string("hello")
p rotate_integer(1234)
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917