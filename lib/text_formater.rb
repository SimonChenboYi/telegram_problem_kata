# frozen_string_literal: true

# format the telegram text
class TextFormater
  def format(number, text)
    split_lines(text).map do |line_words|
      combine_words_to_line(line_words, number)
    end.join("\n")
  end

  private

  def split_lines(text)
    text.split("\n").map(&:split)
  end

  def combine_words_to_line(line_words, number)
    line_words.reduce do |accumulate, element|
      return (accumulate + ' ' + element) if (accumulate + ' ' + element).size <= number

      accumulate.size <= number - 1 ? accumulate + ' ' : accumulate
    end
  end
end
