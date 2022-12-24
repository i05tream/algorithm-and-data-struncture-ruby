N = gets.to_i
W = gets.to_i

a = []
N.times { a.push(gets.to_i) }

exist = [0, 1].repeated_permutation(N).any? do |bs|
          bs.zip(a).sum { |b, ai| b == 1 ? ai : 0 } == W
        end

puts(exist ? 'Yes' : 'No')
