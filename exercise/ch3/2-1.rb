n = gets.to_i
v = gets.to_i

a = []

n.times { a.push gets.to_i }

count = 0

a.each { |ai| count += 1 if ai == v }

puts count
