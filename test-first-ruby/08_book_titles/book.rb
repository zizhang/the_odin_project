class Book
	def title=(title)
		words = title.split(" ")
		words[0].capitalize!
		words.map! do |word|
			unless isSmallWord(word)
				word.capitalize
			else
				word.downcase
			end
		end
		@title = words.join(" ")
	end

	def title
		@title
	end

	def isSmallWord(word)
		case word
		when "and"
			return true
		when "in"
			return true
		when "the"
			return true
		when "of"
			return true
		when "a"
			return true
		when "an"
			return true
		else 
			return false
		end
	end
end