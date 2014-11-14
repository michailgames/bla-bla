require_relative 'lib/bla-bla'
require 'minitest/autorun'

class BlaBlaSpec < MiniTest::Test

  def test_author
    name_parts = BlaBla.author.split
    assert_equal(2, name_parts.size)
    name_parts.each do |name_part|
      assert_equal(name_part, name_part.capitalize)
    end
  end
  
  def test_title
    title_parts = BlaBla.title.split
    assert(title_parts.size.between?(1, 5)) 
    assert_equal(title_parts.first, title_parts.first.capitalize)
  end
  
  def _test_sentence(sentence)
    words = sentence.split
    assert(words.size.between?(4, 9))
    assert_equal(words.first, words.first.capitalize)
    assert_equal(sentence.chars.last, ".")
  end
  
  def test_sentence
    _test_sentence(BlaBla.sentence)
  end
  
  def test_content
    sentences = BlaBla.content.split(/(?<=\. )/)
    assert(sentences.size.between?(1, 5)) 
    sentences.each do |sentence|
      _test_sentence(sentence.strip)
    end
  end
end
