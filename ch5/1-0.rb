n = gets.to_i
h = n.times.map { gets.to_i }

initial_total_costs = [0, (h[1] - h[0]).abs]

def total_cost(n, h, total_costs)
  total_costs[n - 1] ||= [total_cost(n - 1, h, total_costs) + (h[n - 1] - h[n - 2]).abs, total_cost(n - 2, h, total_costs) + (h[n - 1] - h[n - 3]).abs].min
end

puts(total_cost(n, h, initial_total_costs))
