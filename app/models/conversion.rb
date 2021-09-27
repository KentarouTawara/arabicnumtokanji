class Conversion < ApplicationRecord
  include ArabicNumAndKanji

  has_many :comments
  validates :input, presence: true
  validates :output, presence: true

  def conversion
    case self.input
    when /^[0-9]+$/
      self.output = self.input.to_kanji
    when /^[零一二三四五六七八九十百千万億兆京垓秭穣溝澗正載極恒河沙阿僧祇那由他不可思議無量大数]+$/
      self.output = self.input.to_arabic_num
    else
      self.output = nil
    end
  end
end
