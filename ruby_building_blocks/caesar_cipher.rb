def caesar_cipher(input_text, shift_factor)
	output = ""
	text = input_text.split("")

	text.each do |letter|
		unless letter =~ /[A-Za-z]/
			output += letter
			next
		end

		temp = letter.ord

		shift_factor.times do
			if temp.chr == 'Z'
				temp = 'A'.ord
			elsif temp.chr == 'z'
				temp = 'a'.ord
			else
				temp += 1
			end
		end

		output += temp.chr
	end

	return output
end

puts "Enter text:"
input = gets.chomp

puts "Shift Factor:"
shift = gets.chomp.to_i


puts caesar_cipher(input, shift)