# frozen_string_literal: true

class Array
  def each
    x = 0
    while x < self.length
      yield self[x]
      x += 1
    end
  end

  def my_map
    mapped_array = []
    each { |item| mapped_array << yield(item) }
    mapped_array
  end
end

new_array = %w(look ma no far loops).my_map do |x|
  x.upcase
end

p new_array
