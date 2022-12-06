class String
  def numeric?
    Float(self) != nil rescue false
  end
end

def read_input
  File.open('06.txt').read.split("")
end

def run1
  arr = read_input
  arr.each_with_index do |e, i|
    grp = arr[i..i+4]
    return i+4 if grp.length == grp.uniq.length
  end
  
end

def run2
  arr = read_input
  arr.each_with_index do |e, i|
    grp = arr[i..i+13]
    return i+14 if grp.length == grp.uniq.length
  end
  
end
puts run1
puts run2