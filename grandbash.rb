def multiple_tickets(my_numbers, bash_numbers)
	count = 0
	x = 0
	y = 0
	in_my_numbers = my_numbers[x]
	in_bash_numbers = bash_numbers[x]
	my_numbers.each do
		in_my_numbers.length.times do
			if in_my_numbers[y] == in_bash_numbers[y]
				count += 1
			end
		end
		if count == in_my_numbers.length
			return in_my_numbers
		end
		
	end
	puts count
end
multiple_tickets(["1234"],["1234"])