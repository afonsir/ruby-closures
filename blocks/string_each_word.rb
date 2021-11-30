# frozen_string_literal: true

class String
  def each_word
    split.each do |word|
      yield word
    end
  end
end

"Nothing lasts forever but cold November Rain".each_word do |x|
  puts x
end
