input = gets.chars
input.pop

['+', ''].repeated_combination(input.size - 1).reduce(0) do |sum, operators|
  sum += eval(input.zip(operators).push(input.last).join.tap { puts _1 })
end.then { puts _1 }
