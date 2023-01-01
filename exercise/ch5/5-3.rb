N = gets.to_i
a = gets.split.map(&:to_i)

W = 100 * 100

dp = (0..N).map do
  (0..W).map { false }
end

dp[0][0] = true

(0..N - 1).each do |i|
  (0..W).each do |j|
    dp[i + 1][j] ||= dp[i][j]
    dp[i + 1][j] ||= dp[i][j - a[i]] if j >= a[i]
  end
end

count = 0
(0..W).each { |i| count += 1 if dp[N][i] }

puts count
