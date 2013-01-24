# -*- encoding: utf-8 -*-
module Autotag
  # class << self

  #   # pass a url or document to extract text
  #   def Extractor(document,options)

  #   end
  # end

  module Extractor
  # class Extractor

    # REGEX CONSTANTS
    
    # CONTRACTION
    # selects all instances of english contractions
    # could perhaps be reduced using special character wildcard, 
    # but then need to take into account things like 'R&D' being matched
    # CNTR_REGEX = /(n’t)|(n't)|(’ll)|('ll)|(’ve)|('ve)|(’re)|('re)|(’s)|('s)|(’d)|('d)/
    
    # TOTAL WHITESPACE
    # selects strings that are composed entirely of whitespace
    # TW_REGEX = /^\s*$/
    
    # SPACE DELIMITED WORDS
    # selects words of non-whitespace characters delimited by whitespace characters
    # SDW_REGEX = /[\w-]+/
    
    # NON-LETTER REGEX
    # selects all characters that are not upcase/downcase letters
    # NL_REGEX = /[^A-Za-z]/
    
    # GLOBAL WHITESPACE REGEX
    # selects all whitespace characters, including non-breaking space 
    # characters imported from an HTML -> latin1 conversion
    # GW_REGEX = /\p{Z}/

    # BLOCK DELIMITING WHITESPACE REGED
    # selects continuous blocks of whitespace characters
    # BDW_REGEX = (/\p{Z}+/)

    # def initialize(str = "")
    #   @str = str
    # end

    # def test
    #   p "fuck you: #{@str}"
    #   p "test  . str".gsub(GW_REGEX,'DERP')
    # end
    #def split_html
  end
end