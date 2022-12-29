n = gets.to_i
w = gets.to_i

weights = []
values = []

n.times do
  weights.push(gets.to_i)
  values.push(gets.to_i)
end

dp = (0..n).map do
  (0..w).map { 0 }
end

(0..(n - 1)).each do |i|
  (0..w).each do |j|
    dp[i + 1][j] = [dp[i + 1][j], dp[i][j - weights[i]] + values[i]].max if j - weights[i] > 0

    dp[i + 1][j] = [dp[i + 1][j], dp[i][j]].max
  end
end

puts dp[n][w]
