# frozen_string_literal: true

class Notifier
  attr_reader :generator, :callbacks

  def initialize(generator, callbacks)
    @generator = generator
    @callbacks = callbacks
  end

  def run
    result = generator.run
    if result
      callbacks.fetch(:on_success).call(result)
    else
      callbacks.fetch(:on_failure).call
    end
  end
end

# good_report = OpenStruct.new(to_csv: "59.99,Great Success")
#
# Notifier.new(
#   Generator.new(good_report),
#   on_success: lambda { |r| puts "Send #{r} to boss@acme.co" },
#   on_failure: lambda { puts 'Send email to me@acme.co' }
# ).tap do |n|
#   n.run
# end

# bad_report = OpenStruct.new(to_csv: nil)
#
# Notifier.new(
#   Generator.new(bad_report),
#   on_success: lambda { |r| puts "Send #{r} to boss@acme.co" },
#   on_failure: lambda { puts 'Send email to me@acme.co' }
# ).tap do |n|
#   n.run
# end
