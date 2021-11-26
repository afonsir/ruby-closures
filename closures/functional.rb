# frozen_string_literal: true

is_even = lambda { |x| x % 2 == 0 }

is_even.call(4) # true
is_even.call(5) # false

def complement(predicate)
  lambda do |value|
    !predicate.call(value)
  end
end

complement(is_even).call(4) # false
complement(is_even).call(5) # true
