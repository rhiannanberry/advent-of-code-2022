class String
  def numeric?
    Float(self) != nil rescue false
  end
end

def read_input
  File.open('05.txt').read.split("\n\n")
end

def run1
  inp = read_input
  rows = inp[0].split("\n").map{|r| r.split('').each_slice(4).map{|x| x[1]}}
  buckets = rows.transpose.map{|r| r.select{|x| x != " "}.reverse}

  rules = inp[1].split("\n").map{|r| r.split(" ").select(&:numeric?)}
  rules.each do |rule|
    # count, source, destination 
    src = rule[1].to_i - 1
    dst = rule[2].to_i - 1
    cnt = rule[0].to_i
    obj = buckets[src].pop(cnt).reverse
    buckets[dst]+=obj
  end
  pp buckets.map(&:last).join

end

def run2
  inp = read_input
  rows = inp[0].split("\n").map{|r| r.split('').each_slice(4).map{|x| x[1]}}
  buckets = rows.transpose.map{|r| r.select{|x| x != " "}.reverse}

  rules = inp[1].split("\n").map{|r| r.split(" ").select(&:numeric?)}
  rules.each do |rule|
    # count, source, destination 
    src = rule[1].to_i - 1
    dst = rule[2].to_i - 1
    cnt = rule[0].to_i
    obj = buckets[src].pop(cnt)
    buckets[dst]+=obj
  end
  pp buckets.map(&:last).join
end
run1
run2