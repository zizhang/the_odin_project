def echo(phrase)
	phrase
end

def shout(phrase)
	phrase.upcase
end

def repeat(phrase, n=2)
	([phrase] * n).join(" ")
end

def start_of_word(phrase , n)
	phrase[0...n]
end

def first_word(phrase)
	words = phrase.split(" ")
	words[0]
end

# need a better way of checking for small words
def titleize(phrase)
	words = phrase.split(" ")

	if words.length == 1
		return words[0].capitalize
	else
		words.each do |word|
			unless (word.eql? "and") || (word.eql? "over") || (word.eql? "the")
				word.capitalize!
			end
		end
		words[0].capitalize!
		words.join(" ")
	end
end