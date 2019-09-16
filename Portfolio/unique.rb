puts "FooBar!"
puts "List numbers in order."
puts "If divisible by 3, write Foo."
puts "If divisible by 5, write Bar."
puts "If divisible by both 3 and 5, write Foobar."
puts "Choose total number to count up to:"
count = gets.chomp

while count.to_i != count.to_f || count.to_i == 0
  puts "Error! Only enter whole numbers."
  puts "No zeroes, words or fractions allowed. Try again."
  count = gets.chomp
end

def div_by_3(num)
  num % 3
end

def div_by_5(num)
  num % 5
end

def div_by_3_and_5(num)
  num % 15
end

n = 1
while n <= count.to_i
  if div_by_3_and_5(n) == 0
    puts "Foobar"
  elsif div_by_3(n) == 0
    puts "Foo"
  elsif div_by_5(n) == 0
    puts "Bar"
  else
    puts n
  end
  n += 1
end
