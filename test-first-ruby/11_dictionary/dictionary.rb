class Dictionary
	attr_accessor :entries

	def initialize
		@entries = {}
	end

	def add(newEntry)
		if newEntry.is_a?(String)
			@entries[newEntry] = nil
		else
			newEntry.each do |key, value|
				@entries[key] = value
			end
		end
	end

	def keywords

		@entries.keys.sort
	end

	def include?(keyword)
		if @entries.include?(keyword)
			return true
		else
			return false
		end
	end

	def find(keyword)
		found = {}

		@entries.each do |key, value|
			if key.eql?(keyword)
				found[key] = value
			elsif keyword[0..1].eql?(key[0..1])
				found[key] = value
			end
		end

		return found
	end

	def printable
		printable = @entries.sort.map do |key, value|
			"[#{key}] \"#{value}\""
		end

		printable.join("\n")
	end
end