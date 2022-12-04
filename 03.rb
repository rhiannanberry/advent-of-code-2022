def run1
  inn = File.open('03.txt')
  fd = inn.read.split
  vals = fd.map do |c|
    sp = c.split('')
    sz = sp.length/2
    a = sp.slice(0...sz)
    b = sp.slice(sz...sp.length)
    v = a.intersection(b).first
    v = v == v.upcase ? v.ord-38 : v.ord-96
  end
  puts vals.sum
end

def run2
  inn = File.open('03.txt')
  fd = inn.read.split
  valsum = 0
  fd.each_slice(3) do |g|
    v= g[0].split('').intersection(g[1].split(''), g[2].split('')).first
    v = v == v.upcase ? v.ord-38 : v.ord-96
    valsum = valsum + v
  end
  puts valsum
end
run1
run2