require 'yajl'

class MyApp
  class << self
    def call(env)
      [200, {'Content-Type' => 'text/html'}, Yajl::Encoder.encode(:hello => 'world')]
    end
  end
end