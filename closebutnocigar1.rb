def offbyonenumber(my_number, bash_numbers)
	counter = 0
	x = 0
	my_number.length.times do
		# puts "#{my_number} is my number"
		# puts "#{bash_numbers} is the winning number"
		if bash_numbers[x] == my_number[x]
			counter += 1
			# puts "count: #{counter}"
		end
		x += 1
	end
	counter == my_number.length - 1
 end
# offbyonenumber("1234","1233")

def winningnumbersoffbyone(my_number, bash_numbers)
	matching = []
	bash_numbers.each do |winning_bash_num|
		if offbyonenumber(winning_bash_num, my_number)
			matching << winning_bash_num
		end
	end
	return matching
end
def numbersoffbyhowmany(my_number, bash_numbers)
	x = 0
	count = 0
	my_number.length.times do
	if bash_numbers[x] != my_number[x]
		count += 1
	end
	x += 1
	puts count
end
return count

end
# numbersoffbyhowmany("1234","1235")
# winningnumbersoffbyone("1234", ["1233", "3333", "4444"])
