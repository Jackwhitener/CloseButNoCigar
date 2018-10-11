require "minitest/autorun"
require_relative "closebutnocigar.rb"
class My_test < Minitest::Test
	def test_one
		assert_equal(1,1)
	end
	# def test_for_empty_array
	# 	my_number = "1234"
	# 	bash_numbers = []
	# 	assert_equal([],grand_bash(my_number, bash_numbers))
	# end
	def test_two
		my_number = "1234"
		bash_numbers = ["1233","1244","1255","1234"]
		assert_equal(["1234"],grand_bash(my_number,bash_numbers))
	end
	def test_four_empty_array
		my_number = "1234"
		bash_number = []
		assert_equal([],grand_bash(my_number,bash_number))
	end
end