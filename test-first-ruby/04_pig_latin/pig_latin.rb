def translate(phrase)
	puts phrase
	words = phrase.split(" ")

	words.map! do |word|
		word = translateWord(word)
	end
	return words.join(" ")
end

def translateWord(word)
	if isVowel(word[0])
		word += "ay"
	else
		while isVowel(word[0]) == false
			if(word[0] == 'q' && word[1] == 'u')
				consonant = word.slice!(0)
				word += consonant
			end
			
			consonant = word.slice!(0)
			word += consonant
		end

		word += "ay"
	end

	return word
end

def isVowel(letter)
	case letter
	when 'a'
		return true
	when 'e'
		return true
	when 'i'
		return true
	when 'o'
		return true
	when 'u'
		return true
	else
		return false
	end
end