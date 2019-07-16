# frozen_string_literal: true

# format the telegram text
class TextFormater
  def format(number, text)
    words = text.split("\n").map(&:split)
    words.map do |line|
      line.reduce do |accumulate, element|
        if (accumulate + ' ' + element).size <= number
          (accumulate + ' ' + element)
        else
          accumulate.size <= number - 1 ? accumulate + ' ' : accumulate
        end
      end
    end.join("\n")
  end
end
