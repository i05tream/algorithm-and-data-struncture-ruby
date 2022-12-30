n = gets.to_i
a = []
b = []
c = []

n.times do
  a_i, b_i, c_i = gets.split.map(&:to_i)
  a.push(a_i)
  b.push(b_i)
  c.push(c_i)
end

# h[i - 1][0]: i日目に海で泳ぐ場合の最も高い幸福度
# h[i - 1][1]: i日目に虫捕りする場合の最も高い幸福度
# h[i - 1][2]: i日目に宿題をする場合の最も高い幸福度
h = n.times.map { [0, 0, 0] }
h[0] = [a[0], b[0], c[0]]

(1...n).each do |i|
  h[i][0] = [h[i - 1][1], h[i - 1][2]].max + a[i]
  h[i][1] = [h[i - 1][2], h[i - 1][0]].max + b[i]
  h[i][2] = [h[i - 1][0], h[i - 1][1]].max + c[i]
end

puts h.last.max
