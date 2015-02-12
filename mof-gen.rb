# This script generates Multiple-Order-Function (MOF) rows according to Babbitt's proposed method:
# i^n mod p, where p is prime and i is a primitive root of p
# With this formula, generate a series through progressive squaring, from zero to (p-1).
# Collect the residue, mod p and perform an x-swap with each object's index number.
# The result will be the corresponding MOF series.

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

def mof_nat(i, p)
  arr = []
  x_swap = []
  (0..(p-2)).each do |x|
    arr.push((i**x) % p)
  end
  (1..(p-1)).each do |n|
    x_swap.push((arr.index {|item| n == item }))
  end
  return x_swap
end

puts mof(2, 19)     # This method will produce the MOF series for 2^n mod 19 mapped to 12 pitches.
puts mof_nat(2, 19) # This method will produce the MOF series for 2^n mod 19 without mapping to 12 pitches.
