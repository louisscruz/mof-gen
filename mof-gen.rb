def mof(i, p)
  arr = []
  (0..(p-2)).each do |x|
    arr.push((i**x) % p)
  end
  return arr
end

puts mof(2, 11)
