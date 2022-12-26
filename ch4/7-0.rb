n = gets.to_i
w = gets.to_i
a = n.times.map { gets.to_i }

def func(_n, _a, _w)
  return true if _w == 0
  return false if _n == 0 || _a.length == 0
  func(_n - 1, _a[1..], _w - _a.first) || func(_n, _a[1..], _w)
end

puts(func(n, a, w) ? 'Yes' : 'No')
