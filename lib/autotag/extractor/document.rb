module Autotag
  module Extractor
    class Document
      def initialize(url)
        @url = url
        @terms = self.split_html(Nokogiri::HTML(open(url)))
      end

      def split_html(node,charsize=0,wordsize=0)
        arr = []
        subset = node.children.remove
        charsize += node.to_html.gsub("\n",'').size
        subset.each do |f|
          if f.class==Nokogiri::XML::Text
            # pull out line breaks and tabs from text
            # wordsize+=f.content.gsub("\n","").gsub("\t","").scan(/[\w-]+/).size
            wordsize+=f.content.scan(SDW_REGEX).size
          end
        end

        subset.each do |f|
          if f.class==Nokogiri::XML::Text
            if (f.content=~TW_REGEX).nil?
              # this can be accomplished more efficiently
              #arr << [f.content.gsub("\n","").gsub("\t",""),charsize,wordsize,wordsize.to_f/charsize.to_f]
              arr << [f.content.gsub(CNTR_REGEX,'' ), charsize,wordsize,wordsize.to_f/charsize.to_f]
            end
          else
            arr += split_html(f,charsize,wordsize)
          end
        end
        arr
      end
    end
  end
end