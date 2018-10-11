require "minitest/autorun"
require_relative "closebutnocigar1.rb"
class My_test < Minitest::Test
	def test_one
		assert_equal(1,1)
	end
	def test_matching_number_returns_false
		my_number = "1234"
		bash_numbers = "1233"
		assert_equal(true, offbyonenumber(my_number, bash_numbers))
	end
	def test_bash_array_number
		my_number = "1234"
		bash_numbers = ["2222","3333","4444"]
		assert_equal(false, offbyonenumber(my_number, bash_numbers))
	end
	def test_one_number_off
		my_number = "1234"
		bash_numbers = ["1233", "3333", "4444"]
		assert_equal(false, offbyonenumber(my_number, bash_numbers))
	end
	def test_winning_off_by_one
		my_number = "1234"
		bash_numbers = ["1224", "3333", "4444"]
		assert_equal(["1224"], winningnumbersoffbyone(my_number, bash_numbers))
	end
	def test_returns_true
	my_number = "1234"
	bash_numbers = ["2234", "2341", "1432"]
	assert_equal(["2234"], winningnumbersoffbyone(my_number, bash_numbers))
	end
	def test_returns_awesome
		my_number = "1234"
		bash_numbers = ["2341", "6789", "1334"]
		assert_equal(["1334"], winningnumbersoffbyone(my_number, bash_numbers))
	end
	def test_returns_this
		my_number = "1234"
		bash_numbers = ["0234","4236","7779"]
		assert_equal(["0234"], winningnumbersoffbyone(my_number, bash_numbers))
	end
	def test_for_bigger_number
		my_number = "1234567"
		bash_numbers = "1234566"
		assert_equal(true, offbyonenumber(my_number, bash_numbers))
	end
	def test_for_bigger_number_array
		my_number = "1234567"
		bash_numbers = ["1234566", "8675309", "1111111", "9876543"]
		assert_equal(["1234566"], winningnumbersoffbyone(my_number, bash_numbers))
	end
	def test_for_how_many_different
		my_number = "1234567"
		bash_numbers = "1234566"
		assert_equal(1, numbersoffbyhowmany(my_number, bash_numbers))
	end
	def test_for_how_many_different1
		my_number = "1234567"
		bash_numbers = "7650321"
		assert_equal(7, numbersoffbyhowmany(my_number, bash_numbers))
	end
	def test_for_how_many_different2
		my_number = "1234567"
		bash_numbers = "1133557"
		assert_equal(3, numbersoffbyhowmany(my_number, bash_numbers))
	end