class Square< Quad
	attr_accessor :length 

	def initialize(length) 
		@length = length
	end

	def calculate_area 
	  @length ** 2
	end

	def calculate_perimeter 
	  @length * 4
	end

	def scale(factor)
		@length *= factor
	end
end