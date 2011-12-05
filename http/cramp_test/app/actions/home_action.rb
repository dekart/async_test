#require 'em-synchrony'
require 'yajl'

class HomeAction < Cramp::Action
  #use_fiber_pool
  
  def start
    render Yajl::Encoder.encode(:hello => 'world')
    
    finish
  end
end
