#missing part 1
def run
  inn = File.open('01.txt')
  fd = inn.read.split("\n\n").map{|x| x.split("\n").map{|i| i.to_i}.sum}
  puts fd.sort.reverse[0..2].sum
end
run