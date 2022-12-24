N = gets.to_i
v = gets.to_i

as = []
N.times { as.push(gets.to_i) }

def solve(v, as)
  exist = false
  as.each { exist ||= v == _1 }
  exist
end

puts(solve(v, as) ? 'Yes' : 'No')
