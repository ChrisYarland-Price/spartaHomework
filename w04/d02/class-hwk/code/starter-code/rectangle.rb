class Rectangle < Quad
	attr_accessor :length, :width, :name

	def initialize(length, width, name)
		self.length = length
		self.width = width		
		self.name = name		
	end

	def calculate_area
		self.length * self.width
	end

	def calculate_perimeter
		 2 * (self.length + self.width)
	end

end
