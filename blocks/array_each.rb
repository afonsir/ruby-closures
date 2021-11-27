# frozen_string_literal: true

class Array
  def each
    x = 0
    while x < self.length
      yield self[x]
      x += 1
    end
  end
end

%w(look ma no far loops).each do |x|
  puts x
end
