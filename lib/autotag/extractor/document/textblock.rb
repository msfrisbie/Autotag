# -*- encoding: utf-8 -*-
class Autotag::Extractor::Textblock
  attr_reader :size, :words
  # size, HTML data

  def initialize(str,charsize,wordsize)
    # count the number of blocks of non-whitespace characters
    @charsize = charsize
    @wordsize = wordsize
    @words = str.split(/\p{Z}+/).reject{|f| f.empty?}
    @size = @words.size
  end

  def ratio
    return @wordsize.to_f/@charsize.to_f
  end

  def stemwords
    s = Lingua::Stemmer.new(:language => "en")
    @words.map{|f| [s.stem(f.gsub(/[^A-Za-z0-9]/,'')),f]}
  end

  def plaintext
    @words.join(' ')
  end

  def [] (index)
    @words[index]
  end

  # returns number of words in the block
  # def size
  #   @size
  # end
end