N = gets.to_i
K = gets.to_i
W = gets.to_i

a = N.times.map { gets.to_i }

dp = (0..N).map do
  (0..W).map { Float::INFINITY }
end

dp[0][0] = 0

(0..N - 1).each do |i|
  (0..W).each do |j|
    dp[i + 1][j] = [dp[i + 1][j], dp[i][j]].min
    dp[i + 1][j] = [dp[i + 1][j], dp[i][j - a[i]] + 1].min
  end
end

puts(dp[N][W] <= K ? 'Yes' : 'No')
