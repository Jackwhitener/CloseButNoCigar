# def multiple_tickets(my_numbers, bash_numbers)
# 	count = 0
# 	x = 0
# 	y = 0
# 	in_my_numbers = my_numbers[x]
# 	in_bash_numbers = bash_numbers[x]
# 	my_numbers.each do
# 		in_my_numbers.length.times do
# 			if in_my_numbers[y] == in_bash_numbers[y]
# 				count += 1
# 			end
# 		end
# 		if count == in_my_numbers.length
# 			return in_my_numbers
# 		end

# 	end
# 	puts count
# end
# multiple_tickets(["1234"],["1234"])
def grand_bash(my_number, bash_numbers)
	puts "my number: #{my_number}"
	puts "bash number: #{bash_numbers}"
	arr1 = []
	my_number.each do |item|
		puts item
		if bash_numbers.include?(item)
			arr1<< item
		end
		return arr1
	end

	# arr1 = []
	# if bash_numbers.include?(my_number)
	# 	arr1<< my_number
	# end
	# arr1

end