
class Fraction
	# this its equal to geter y seter
	attr_reader :num, :den # Numerator y denominator
	def initialize(num, den)
		@num, @den = num, den
	end
	
	# add
	def +(other)
		Fraction.new(@num * other.den + other.num * @den, @den * other.den)
	end


	# substract
	def -(other)
		Fraction.new(@num * other.den - other.num * @den, @den * other.den)
	end

	# product
	def *(other)
		if defined? other.num
			Fraction.new(@num * other.num, @den * other.den)
		else
			Fraction.new(@num * other, @den)
		end
	end

	# division
	def /(other)
        	if defined? other.num
                	Fraction.new(@num * other.den, @den * other.num)
		else
			Fraction.new(@num, @den * other)
		end
	end
	
	# string converter method 
	def to_S
    		"#{@num}/#{@den}"
  	end
end
