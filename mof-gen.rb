def mof(i, p)
  arr = []
  x_swap = []
  (0..(p-2)).each do |x|
    arr.push((i**x) % p)
  end
  (1..(p-1)).each do |n|
    x_swap.push((arr.index {|item| n == item }) % 12 )
  end
  return x_swap
end

puts mof(5, 23)
