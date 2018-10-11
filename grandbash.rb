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
end
	# arr1 = []
	# if bash_numbers.include?(my_number)
	# 	arr1<< my_number
	# end
	# arr1
def offbyonenumber(my_number, bash_numbers)
	counter = 0
	x = 0
	arr1 = []
	my_number.each do |num|
		bash_numbers.each do |bash|
			num.length.times do
				if bash[x] == num[x]
						counter += 1
					if counter == num.length - 1
						arr1<< num
						counter = 0
					end	
				end
				x += 1
			end
		end
	end
	arr1.uniq!
	p arr1
	return arr1
end
offbyonenumber(["1234", "5678"],["1233", "5679"])