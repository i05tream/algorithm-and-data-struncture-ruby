n = gets.to_i

a = []

n.times { a.push gets.to_i }

fst = Float::INFINITY
snd = Float::INFINITY

a.each do |ai|
  next if ai >= snd

  snd = ai

  next if ai >= fst

  fst, snd = [snd, fst]
end

puts snd
