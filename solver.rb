require 'set'

def permute_sequence(sequence)
  permutations(optimize(sequence.chars.to_a)).to_a
end

def optimize(x)
  references = {}
  x.each do |ch|
    references[ch] ||= 0
    references[ch] += 1
  end
  sorted = references.sort {|b,a| (a.last <=> b.last) }
  sorted.inject([]) { |accum,pair| accum + [pair.first] * pair.last }
end

def permutations(sequence)
  return sequence if sequence.empty?
  ch = sequence.delete_at(0)
  underlying = Set.new([ch])
  sequence.each do |ch|
    new_set = Set.new
    underlying.each do |permutation|
      (0..permutation.length).each do |idx|
        new_set.add(permutation.dup.insert(idx, ch))
      end
    end
    underlying = new_set
  end
  underlying.each
end

def solve(sequence)

  words = {}
  File.open("/usr/share/dict/words") do |file|
    file.each do |line|
      words[line.strip] = true
    end
  end

  possible_words = []
  3.upto(sequence.length) do |l|
    sequence.chars.combination(l).to_a.each {|word| possible_words << permute_sequence(word.join.to_s) }
  end
  possible_words.flatten!.uniq!
  possible_words.each{ |w| if words[w] then puts w end}
end

while true
  puts "Enter a sequence\n"
  solve(gets.chomp)
  puts "\n"
end



