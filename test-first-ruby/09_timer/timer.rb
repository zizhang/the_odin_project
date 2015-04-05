class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end

	def time_string
		minutes = 0
		hours = 0

		if seconds >= 60
			minutes = @seconds / 60
			@seconds = @seconds % 60
		end

		if minutes >= 60
			hours = minutes / 60
			minutes = minutes % 60
		end

		# Output hh:mm:ss
		hours.to_s.rjust(2, '0') + ":" + minutes.to_s.rjust(2, '0') + ":" + @seconds.to_s.rjust(2, '0')
	end
end