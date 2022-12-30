s = gets
t = gets

dp = (0..s.size).map do
  (0..t.size).map { Float::INFINITY }
end

dp[0][0] = 0

(0..s.size).each do |i|
  (0..t.size).each do |j|
    if i > 0 && j > 0
      if s[i - 1] == t[j - 1]
        dp[i][j] = [dp[i][j], dp[i - 1][j - 1]].min
      else
        dp[i][j] = [dp[i][j], dp[i - 1][j - 1] + 1].min
      end
    end
    dp[i][j] = [dp[i][j], dp[i - 1][j] + 1].min if i > 0
    dp[i][j] = [dp[i][j], dp[i][j - 1] + 1].min if j > 0
  end
end

dp.each { p _1 }

puts dp[s.size][t.size]
