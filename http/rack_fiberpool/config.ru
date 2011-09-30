require 'rack/fiber_pool'
require './app'

use Rack::FiberPool
run MyApp