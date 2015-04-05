class Temperature
	def initialize params
		if params.has_key?(:f) 
			@temperature_fahrenheit = params[:f]
		else
			@temperature_fahrenheit = nil
		end
		
		if params.has_key?(:c)
			@temperature_celsius = params[:c]
		else
			@temperature_celsius = nil
		end

	end

	def in_fahrenheit
		if(@temperature_fahrenheit.nil?)
			@temperature_celsius * 9.0 / 5.0 + 32.0
		else
			@temperature_fahrenheit
		end
	end

	def in_celsius
		if(@temperature_celsius.nil?)
			(@temperature_fahrenheit - 32.0) * 5.0 / 9.0
		else
			@temperature_celsius
		end
	end

	def self.from_celsius(temperature)
		new(:c => temperature)
	end

	def self.from_fahrenheit(temperature)
		new(:f => temperature)
	end
end

class Celsius < Temperature
	def initialize(temperature)
		super(:c => temperature)
	end
end

class Fahrenheit < Temperature
	def initialize(temperature)
		super(:f => temperature)
	end
end