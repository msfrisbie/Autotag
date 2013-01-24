# -*- encoding: utf-8 -*-
class Autotag::Extractor::Textblock
  attr_reader :size, :words
  # size, HTML data

  def initialize(str,charsize,wordsize)
    # count the number of blocks of non-whitespace characters
    @words = str.split(/\p{Z}+/).reject{|f| f.empty?}
    @size = @words.size
  end

  def plaintext#-+9
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