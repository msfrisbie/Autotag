# -*- encoding: utf-8 -*-
class Autotag::Extractor::Term
	# define location in parent documents
	# define location in histogram?
	def initialize(term,coordinates)
		@term = term
		@coordinates = [coordinates]
	end

	def to_s
		return @term
	end

	def merge(coordiantes)
		@coordinates << coordinates
	end
end