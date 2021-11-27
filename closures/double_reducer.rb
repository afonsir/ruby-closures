# frozen_string_literal: true

double_reducer = lambda do |arr|
  index = 0

  reducer_aux = lambda do |arr, index|
    if arr.size.zero? || index == arr.size
      arr
    else
      arr[index] = arr[index] * 2
      reducer_aux.call(arr, index + 1)
    end
  end

  reducer_aux.call(arr, index)
end
