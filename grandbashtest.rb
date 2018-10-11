require "minitest/autorun"
require_relative "grandbash.rb"
class My_test < Minitest::Test
	def test_one
		my_number = ["1234", "4567", "9999"]
		bash_numbers = ["1234", "1345", "5623", "8888"]
		assert_equal(["1234"], grand_bash(my_number, bash_numbers))
	end
	# def test_oneoff
	# 	my_number = ["1234"]
	# 	bash_numbers = ["1233"]
	# 	assert_equal(["1234"], offbyonenumber(my_number, bash_numbers))
	# end
	def test_oneoff2
		my_number = ["1234","8097"]
		bash_numbers = ["1233", "8098"]
		assert_equal(["1234","8097"], offbyonenumber(my_number, bash_numbers))
	end
	def test_oneoff3
		my_number = ["1234","8097", "1000", "2333", "9999"]
		bash_numbers = ["1233", "8098", "1001", "2334", "9991", "8765", "3333", "0001", "7826"]
		assert_equal(["1234","8097", "1000", "2333", "9999"], offbyonenumber(my_number, bash_numbers))
	end
end
