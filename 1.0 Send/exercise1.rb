# Ruby gives a convenient way for you to call any method on an object by using the send
# method. send takes, as its first argument, the name of the method that you want to call. 
# This name can either be a symbol or a string.

class Nomad
  def initialize(glider)
    @glider = glider
  end
  
  def do(action)
    @glider.send(action)
  end
end