def measure n=1
	start_time = Time.now
	n.times do
		yield
	end
	end_time = Time.now
	return (end_time - start_time)/n
end