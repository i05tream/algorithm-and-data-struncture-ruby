def fib(n)
  case n
  when 0 then 0
  when 1 then 1
  else fib(n - 1) + fib(n - 1)
  end
end

n = gets.to_i
puts fib(n)
