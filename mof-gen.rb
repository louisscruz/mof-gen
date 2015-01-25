def mof(i, p)
  arr = []
  (0..(p-1)).each do |x|
    arr.push(i**x)
  end
  return arr
end

puts mof(3, 11)
