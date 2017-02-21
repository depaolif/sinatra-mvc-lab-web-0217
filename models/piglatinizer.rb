require 'pry'

class PigLatinizer
	def piglatinize(word)
		start = word.slice(/^[^aeiouAEIOU]+/).to_s
		new_word = word[start.length,word.length] + start
		if start == ""
			return new_word + "way"
		else
			return new_word + "ay"
		end
		binding.pry
	end

	def to_pig_latin(sentence)
		sentence.split(' ').map { |e| self.piglatinize(e) }.join(' ')
	end
	
end
