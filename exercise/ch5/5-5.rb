N = gets.to_i
W = gets.to_i

a = N.times.map { gets.to_i }

dp = (0..N).map do
  (0..W).map { false }
end

dp[0][0] = true

(0..N - 1).each do |i|
  (0..W).each do |j|
    dp[i + 1][j] ||= dp[i][j]
    dp[i + 1][j] ||= dp[i + 1][j - a[i]] if j >= a[i]
  end
end

puts dp[N][W] ? 'Yes' : 'No'
