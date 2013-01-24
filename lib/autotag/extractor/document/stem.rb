# -*- encoding: utf-8 -*-

# this class will contain an array of child words, 
# each indexed into their location in the parent document

class Autotag::Extractor::Stem
  attr_reader :stem, :terms

  def initialize(stem,term=nil,coods=[])
    @stem = stem
    @terms = []
    if term.present? && coods.any?
      self.add_term(term,coods)
    end
  end

  def add_term(term,coordinates)
    if find_term(term)
      @terms << Autotag::Extractor::Term.new(term,coordinates)
    else
      term.merge(coordinates)
    end
  end

  def find_term(term)
    @terms.each do |f|
      return f if term == f.to_s
    end
    nil
  end

end