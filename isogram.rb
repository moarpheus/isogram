require 'byebug'

class Isogram
  def self.isogram? input
    clean = input.gsub(/\W/,'').downcase
    clean.size.eql?(clean.chars.inject(0) {|acc, c| acc + clean.count(c) })
  end
end
