module FunWithStrings
  def palindrome?
    word=self.split("").select{|chr| chr=~/[a-zA-Z]/}.join("").downcase
    word.reverse == word
    # byebug
  end

  def count_words
    # your code here
  #   hs={}
  #   self.split(" ").map{|ch| ch.downcase }.select do |chr| 
  #     /[a-z]+/.match(chr)==nil ? ch=nil : ch=/[a-z]+/.match(chr)[0]
  #     if !ch.nil? && hs[ch].nil? 
  #       hs[ch] = 1
  #     else 
  #       if !ch.nil?
  #        hs[ch]+=1
  #       end
  #     end
  #   end
  #   return hs 
  # end
    arr =self.split(" ").map(&:downcase).map{|chr| /[a-z]+/.match(chr)[0] \
     if !/[a-z]/.match(chr).nil?}.compact
    # arr.inject(Hash.new(0)) {|total, e| puts total; total[e]+=1 ;total}
    arr.inject(Hash.new(0)) {|total, e| total[e]+=1 ;total}
  end

  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
