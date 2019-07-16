# frozen_string_literal: true

require 'text_formater'

describe TextFormater do
  describe '#format' do
    it 'return the input string when w is larger than the length of string' do
      expect(subject.format(100, "Banana Orange\nhello")).to eq "Banana Orange\nhello"
    end

    it 'return the input string when w is larger than length of each line' do
      expect(subject.format(15, "Banana Orange\nhello")).to eq "Banana Orange\nhello"
    end

    it 'return lines when w is smaller than line length' do
      expect(subject.format(6, "Banana Orange\nhello")).to eq "Banana\nhello"
    end

    it 'return lines ended by space when w is smaller than line length' do
      expect(subject.format(7, "Banana Orange\nhello")).to eq "Banana \nhello"
    end

    it 'return multiple lines with maximun line length w and does not split words' do
      expect(subject.format(9, "Banana Orange\nhello\nafternoon Sunday"))
        .to eq "Banana \nhello\nafternoon"
    end
  end
end
