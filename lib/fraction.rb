class Fraction
	# Esto equivale a geter y seter
	attr_reader :num, :den # Numerador y denominador
	def initialize(mum, den)
		@num, @den = num, den
	end
	
	# suma
	def +(other)
		Fraction.new(@num * other.den + other.num * @den, @den * other.den)
	end


	# resta
	def -(other)
		Fraction.new(@num * other.den - other.num * @den, @den * other.den)
	end

	# multiplicación
	def *(other)
		Fraction.new(@num * other.num, @den * other.den)
	end

	# división
	def /(other)
		Fraction.new(@num * other.den, @den * other.num)
	end 
end
