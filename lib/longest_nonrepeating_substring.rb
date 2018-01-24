require 'set'
require 'byebug'
# Find the longest non-repeating substring
# ex "abcabcbb" is "abc", with length of 3,
# "bbbbb" the longest substring is "b", with the length of 1

def longest_nonreapeating_substring(string)
  start = 0

  seen_chr = Set.new
  longest_so_far = Set.new

  chrs = string.chars

  chrs.each_with_index do |chr, idx|

    if seen_chr.include?(chr)
      
      if idx - start >= longest_so_far.length
        longest_so_far = seen_chr
      end

      seen_chr = Set.new
      start = idx + 1


    else

      seen_chr.add(chr)
    end

  end

  longest_so_far.to_a.join

end


 p longest_nonreapeating_substring("abcabcbb")
 p longest_nonreapeating_substring("bbbbb")
