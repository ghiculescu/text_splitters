require "test_helper"

class RecursiveCharacterTextSplitterTest < Minitest::Test
  def test_basic_case
    text = <<~STR
      Hi.\n\nI'm Harrison.\n\nHow? Are? You?\nOkay then f f f f.
      This is a weird text to write, but gotta test the splittingggg some how.

      Bye!\n\n-H.
    STR
    splitter = ::TextSplitters::RecursiveCharacterTextSplitter.new(chunk_size: 10, chunk_overlap: 1)

    output = splitter.split(text)

    expected = [
      "Hi.",
      "I'm",
      "Harrison.",
      "How? Are?",
      "You?",
      "Okay then f",
      "f f f f.",
      "This is a",
      "a weird",
      "text to",
      "write, but",
      "gotta test",
      "the",
      "splitting",
      "gggg",
      "some how.",
      "Bye!\n\n-H."
    ]
    assert_equal expected, output
  end

  def test_state_of_the_union
    text = "Madam Speaker, Madam Vice President, our First Lady and Second Gentleman. Members of Congress and the Cabinet. Justices of the Supreme Court. My fellow Americans."
    splitter = ::TextSplitters::RecursiveCharacterTextSplitter.new(chunk_size: 100, chunk_overlap: 20)

    output = splitter.split(text)

    assert_equal 2, output.length
    assert_equal "Madam Speaker, Madam Vice President, our First Lady and Second Gentleman. Members of Congress and the Cabinet.",
                 output.first
    assert_equal "and the Cabinet. Justices of the Supreme Court. My fellow Americans.", output.last
  end
end
