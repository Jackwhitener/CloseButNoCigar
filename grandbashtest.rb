require "minitest/autorun"
require_relative "grandbash.rb"
class My_test < Minitest::Test
	def test_one
		my_number = ["1234", "4567", "9999"]
		bash_numbers = ["1234", "1345", "5623", "8888"]
		assert_equal(["1234"], grand_bash(my_number, bash_numbers))
	end
end