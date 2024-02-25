def ascii_value(string)
  return 0 if string == ''
  string.chars.map {|char| char.ord}.inject(:+)
end

# or
def ascii_value2(string)
  sum = 0
  string.each_char {|char| sum += char.ord}
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

p ascii_value2('Four score') == 984
p ascii_value2('Launch School') == 1251
p ascii_value2('a') == 97
p ascii_value2('') == 0