class RPNCalculator
	attr_reader :value
	def initialize
		@arr_stack = []
	end

	def push(num)
		@arr_stack.push(num)
	end

	def plus
		if @arr_stack.empty?
			raise "calculator is empty"
		end

		x = @arr_stack.pop
		y = @arr_stack.pop
		@value = y + x
		@arr_stack.push(@value)
	end

	def minus
		if @arr_stack.empty?
			raise "calculator is empty"
		end

		x = @arr_stack.pop
		y = @arr_stack.pop
		@value = y - x
		@arr_stack.push(@value)
	end

	def divide
		if @arr_stack.empty?
			raise "calculator is empty"
		end

		x = @arr_stack.pop
		y = @arr_stack.pop
		@value = 1.0 * y / x
		@arr_stack.push(@value)
	end

	def times
		if @arr_stack.empty?
			raise "calculator is empty"
		end

		x = @arr_stack.pop
		y = @arr_stack.pop
		@value = y * x
		@arr_stack.push(@value)
	end

	def tokens(s)
		tokens = s.split(" ")

		tokens.map do |token|
			case token
			when '+', '-', '*', '/'
				token.to_sym
			else
				token.to_f
			end
		end
	end

	def evaluate(s)
		tokens(s).each do |token|
			case token
			when :+
				self.plus
			when :-
				self.minus
			when :*
				self.times
			when :/
				self.divide
			else
				self.push(token)
			end
		end

		@value
	end
end