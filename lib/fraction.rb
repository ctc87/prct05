
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
	
	# Simplifying fraction members
	def simplifi()
		puts !itsPrimeNumber(@num)
		if !itsPrimeNumber(@num) && !itsPrimeNumber(@den) then
			puts "true"
			min = (@den<@num) ? @den : @num	
			for i in 2..min
				if(min % i) == 0 then
					if(@den % i) == 0 && (@num % i) == 0 then
						@num /= i
						@den /= i
						puts @num
						puts @den
						simplifi()
						break
					end
				end
			end
		end
	end

	def itsPrimeNumber(num)
		if (num % 2) == 0
			return false
		else 
			for i in 1..(num - 1)
   				if (num % i) == 0
					return false
				end
			end
			return true
		end
	end
	
	# string converter method 
	def to_S
    		"#{@num}/#{@den}"
  	end
end
