n = gets.to_i
h = n.times.map { gets.to_i }

dp = [Float::INFINITY].cycle(n).to_a

dp[0] = 0

(0..(n - 2)).each do |i|
  dp_1 = dp[i] + (h[i + 1] - h[i]).abs
  dp[i + 1] = dp_1 if dp_1 < dp[i + 1]

  next if i == n - 2

  dp_2 = dp[i] + (h[i + 2] - h[i]).abs
  dp[i + 2] = dp_2 if dp_2 < dp[i + 2]
end

puts(dp.last)
