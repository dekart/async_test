#!/usr/bin/env ruby
$:<< '../lib' << 'lib'

require 'goliath'
require 'yajl'

class HelloWorld < Goliath::API
  def response(env)
    [200, {}, Yajl::Encoder.encode(:hello => 'world')]
  end
end