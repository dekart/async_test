class HomeAction < Cramp::Websocket
  use_fiber_pool

  before_start :inspect_self
  on_data :received_data
  
  periodic_timer :send_hello, :every => 5

  def inspect_self
    puts self.inspect
  end

  def received_data(data)
    render "Got your #{data}"
  end
  
  def send_hello
    render Yajl::Encoder.encode(:hello => 'World')
  end
end
