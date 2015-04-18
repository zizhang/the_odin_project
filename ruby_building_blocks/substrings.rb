def substrings(input_text, dictionary)
	substrings_found = Hash.new(0)

	words = input_text.downcase.split(" ")

	words.each do |word|
		dictionary.each do |dictionary_word|
			if word.include?(dictionary_word)
				substrings_found[dictionary_word] += 1
			end
		end
	end


	return substrings_found
end

puts "Enter text"
input = gets.chomp

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings(input, dictionary)