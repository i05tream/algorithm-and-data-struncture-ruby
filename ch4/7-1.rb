fibs = [0, 1]

n = gets.to_i

(2..n).each do |i|
  fibs.push(fibs[i - 1] + fibs[i - 2])
  puts "#{i} 項目: #{fibs[i]}"
end
