# -*- encoding: utf-8 -*-

# this class will contain an array of child words, 
# each indexed into their location in the parent document

class Autotag::Extractor::Stem
  attr_reader :stem, :terms

  def initialize(stem,term=nil,coordinates=[])
    @stem = stem
    @terms = []
    if !term.nil? && coordinates.any?
      self.add_term(term,coordinates)
    else
      p "error! #{term} #{coordinates}"
    end
  end

  def size
    @terms.size
  end

  def add_term(term,coordinates)
    if (t=find_term(term)).nil?
      @terms << Autotag::Extractor::Term.new(term,coordinates)
    else
      t.merge(coordinates)
    end
  end

  def find_term(term)
    @terms.each do |f|
      return f if term == f.to_s
    end
    nil
  end

end