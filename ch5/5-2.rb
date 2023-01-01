n = gets.to_i
h = n.times.map { gets.to_i }

dp = [Float::INFINITY].cycle(n).to_a

dp[0] = 0
dp[1] = (h[1] - h[0]).abs

(1..(n - 1)).each do |i|
  dp[i] = [
    dp[i - 1] + (h[i] - h[i - 1]).abs,
    dp[i - 2] + (h[i] - h[i - 2]).abs
  ].min
end

puts dp.last
