# -*- encoding: utf-8 -*-
require 'ai4r'
require 'redis'
require 'nokogiri'
require 'lingua/stemmer'
require 'open-uri'

require 'autotag/extractor'
require 'autotag/extractor/document'
require 'autotag/extractor/document/histogram'
require 'autotag/extractor/document/stem'
require 'autotag/extractor/document/term'
require 'autotag/extractor/document/textblock'
#require  
require 'autotag/tagger'
# require 'autotag/tagger/'


module Autotag

  #def self.test(param)
end