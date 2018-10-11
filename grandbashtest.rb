require "minitest/autorun"
require_relative "grandbash.rb"
class My_test < Minitest::Test
	def test_one
		my_numbers = ["1234"]
		bash_numbers = ["1234"]
		assert_equal("1234", multiple_tickets(my_numbers, bash_numbers))
	end
end