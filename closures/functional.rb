# frozen_string_literal: true

is_even = lambda { |x| x % 2 == 0 }

is_even.call(4) # true
is_even.call(5) # false

# version 1
def complement(predicate)
  lambda do |value|
    !predicate.call(value)
  end
end

complement(is_even).call(4) # false
complement(is_even).call(5) # true

# version 2
complement = lambda do |predicate|
  lambda do |value|
    !predicate.call(value)
  end
end

complement.call(is_even).call(4) # false
complement.call(is_even).call(5) # true
