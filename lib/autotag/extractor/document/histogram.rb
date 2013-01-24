# -*- encoding: utf-8 -*-
class Autotag::Extractor::Histogram
  # generate term histogram, 
  # stem histogram, both accessible by methods
  def initialize()
    @stems = {}
    @terms = {}
  end

  def stem(stem)
    if @stems[stem]
      @stems[stem] += 1
    else
      @stems[stem] = 1
    end
  end

  def term(term)
    if @terms[term]
      @terms[term] += 1
    else
      @terms[term] = 1
    end
  end

end