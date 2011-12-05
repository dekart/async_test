#!/usr/bin/env ruby

require 'yajl'

use Rack::ContentLength

app = proc do |env|
  [200, {'Content-Type' => 'text/html'}, [ Yajl::Encoder.encode(:hello => 'world') ]]
end

run app