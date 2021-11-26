# frozen_string_literal: true

reducer = lambda do |acc, arr, binary_function|
  reducer_aux = lambda do |acc, arr|
    if arr.empty?
      acc
    else
      reducer_aux.call(binary_function.call(acc, arr.first), arr.drop(1))
    end
  end

  reducer_aux.call(acc, arr)
end

# Sum
# reducer.call(10, [1, 2, 3, 4, 5], lambda { |x, y| x + y })

# Multiplication
# reducer.call(10, [1, 2, 3, 4, 5], lambda { |x, y| x * y })