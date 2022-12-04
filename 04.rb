def run1
  inn = File.open('04.txt')
  fd = inn.read.split
  cnt = 0
  vals = fd.map do |c|
    pair = c.split(',')
    aa=pair[0].split('-')
    bb=pair[1].split('-')
    a=(aa[0].to_i..aa[1].to_i).to_a
    b=(bb[0].to_i..bb[1].to_i).to_a
    al = a.length
    bl = b.length
    n = a.intersection(b)
    cnt = cnt + ((n.length == al || n.length == bl) ? 1.to_i : 0.to_i)
  end
  puts cnt
end

def run2
  inn = File.open('04.txt')
  fd = inn.read.split
  cnt = 0
  vals = fd.map do |c|
    pair = c.split(',')
    aa=pair[0].split('-')
    bb=pair[1].split('-')
    a=(aa[0].to_i..aa[1].to_i).to_a
    b=(bb[0].to_i..bb[1].to_i).to_a
    n = a.intersection(b)
    cnt = cnt + ((n.length > 0) ? 1.to_i : 0.to_i)
  end
  puts cnt
end
run1
run2