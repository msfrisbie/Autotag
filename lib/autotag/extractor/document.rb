# -*- encoding: utf-8 -*-
class Autotag::Extractor::Document
  attr_reader :url, :histogram

  def initialize(url)

    @stems = {}

    @url = url
    #@text = 
    @textblocks = split_html(Nokogiri::HTML(open(url)))

    #@histogram = Autotag::Extractor::Histogram.new

    @textblocks.each_with_index do |f,blockindex|
      f.stemwords.each_with_index do |g,wordindex|
        self.stem(g[0],g[1],[blockindex,wordindex])

      end
    end

    #Nokogiri::Extractor::Histogram.new
    #@terms = 
    #@textblocks = []
    
  end

  # def histogram
  #   @histogram
  # end

  def stem(stem,term,coods)
    s = @stems[stem]
    if s.present?
      s.add_term(term,coods)
    else 
      @stems[stem] = Autotag::Extractor::Stem.new(stem,term,coods)
    end
  end

  def self.split_html(node,charsize=0,wordsize=0)
    arr = []
    subset = node.children.remove
    charsize += node.to_html.gsub("\n",'').size
    subset.each do |f|
      if f.class==Nokogiri::XML::Text
        # pull out line breaks and tabs from text
        # wordsize+=f.content.gsub("\n","").gsub("\t","").scan(/[\w-]+/).size
        wordsize+=f.content.scan(/[\w-]+/).size
      end
    end
    subset.each do |f|
      if f.class==Nokogiri::XML::Text
        if (f.content=~/^\s*$/).nil?
          # this can be accomplished more efficiently
          #arr << [f.content.gsub("\n","").gsub("\t",""),charsize,wordsize,wordsize.to_f/charsize.to_f]
          #arr << [f.content.gsub(/(n’t)|(n't)|(’ll)|('ll)|(’ve)|('ve)|(’re)|('re)|(’s)|('s)|(’d)|('d)/,'' ), charsize,wordsize,wordsize.to_f/charsize.to_f]
          arr << Autotag::Extractor::Textblock.new(f.content,charsize,wordsize)
        end
      else
        arr += split_html(f,charsize,wordsize)
      end
    end
    arr
  end
end