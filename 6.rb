N = gets.to_i
W = gets.to_i

a = []
N.times { a.push(gets.to_i) }

exist = false

# 例として与えられる数が2個なら、0b0以上0b100(0b0 << 2)未満の
# 全ビットを探索することになる
(0...(1 << N)).each do |b|
  sum = 0

  (0...N).each do |i|
    sum += a[i] if (b & (1 << i) != 0)
  end

  exist ||= sum == W
end

puts(exist ? 'Yes' : 'No')
