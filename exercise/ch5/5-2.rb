n = gets.to_i
w = gets.to_i

a = n.times.map { gets.to_i }

dp = (0..n).map do
  (0..w).map { false }
end

dp[0][0] = true

(0..n - 1).each do |i|
  (0..w).each do |j|
    dp[i + 1][j] ||= dp[i][j]
    dp[i + 1][j] ||= dp[i][j - a[i]] if j >= a[i]
  end
end

dp.each { p _1 }

puts dp[n][w]
