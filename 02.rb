#missing part 1
def run
  inn = File.open('02.txt')
  fd = inn.read.split("\n").map do |round|
    amt = {"A X": 3, #rock scissors
      "A Y": 1+3, #rock rock
      "A Z": 2+6, #rock paper
      "B X": 1,
      "B Y": 2+3,
      "B Z": 3+6,
      "C X": 2,
      "C Y": 3+3,
      "C Z": 1+6}
    pts = amt[round.to_sym]
    
  end
  puts fd.sum
end
run