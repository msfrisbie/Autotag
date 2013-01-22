require 'test/unit'
require 'autotag'

class AutotagTest < Test::Unit::TestCase
  # def test_empty
  # 	h = Autotag::Extractor.new#("")
  #   assert_equal "fuck you: empty", h.test
  # end

  def test_string
  	h = Autotag::Extractor.new("blah")
    assert_equal "fuck you: blah", h.test
  end
end