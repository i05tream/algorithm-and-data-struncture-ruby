n = gets.to_i
c = n.times.map do
  n.times.map do
    gets.to_i
  end
end

dp = (0..n + 1).map { Float::INFINITY }
dp[0] = 0

(1..n + 1).each do |i|
  (0..i - 1).each do |j|
    dp[i] = [dp[i], dp[j] + dp[j][i]].min
  end
end

puts dp[n + 1]
