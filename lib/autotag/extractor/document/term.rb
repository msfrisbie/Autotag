# -*- encoding: utf-8 -*-
class Autotag::Extractor::Term
	attr_reader :term, :coordinates
	# define location in parent documents
	# define location in histogram?
	def initialize(term,coordinates)
		@term = term
		@coordinates = [coordinates]
	end

	def to_s
		return @term
	end

	def merge(coordinates)
		@coordinates << coordinates
	end
end