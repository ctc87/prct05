require '../lib/fraction'
require 'test/unit'

class TestFraction < Test::Unit::TestCase
	def setup
		@unit = Fraction.new(1,1)
		@twoHalfs = Fraction.new(2,2)
		@oneCuarter = Fraction.new(1,4)	
	end

	def test_simple
		assert_equal("1/1", @unit.to_S)
		assert_equal("2/2", @twoHalfs.to_S)
		assert_equal("1/4", @oneCuarter.to_S)
		assert_equal("5/1", (@unit * 5).to_S)
		assert_equal("1/5", (@unit / 5).to_S)
		assert_equal("4/4", (@twoHalfs * @twoHalfs).to_S)
		assert_equal("10/8", (@twoHalfs + @oneCuarter).to_S)
		assert_equal("6/8", (@twoHalfs - @oneCuarter).to_S)
	end
	def test_type_check
    		assert_raise(RuntimeError) {Fraction.new('1','1')}
  	end
end
