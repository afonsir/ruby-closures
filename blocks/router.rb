# frozen_string_literal: true

class Router
  # block -> proc
  def initialize(&block)
    # proc -> block
    instance_eval &block
  end

  def match(route)
    puts route
  end
end

# routes = Router.new do
#   match '/about' => 'home#about'
#   match '/users' => 'users#index'
# end
