# Additionally, now some of these actions require further arguments. e.g. The command 
# to 'bank' takes a string of either 'left' or 'right', while the command to 'roll' takes
# the number of degrees it should dive for. Again, send gives us a convenient way to 
# pass arguments to these methods. All further arguments to send after the first 
# (which you'll recall has the name of the method you want called itself) become
# arguments that get passed down to that method.

class Nomad
  def initialize(glider)
    @glider = glider
  end

  def do(action, argument = nil)
    if argument == nil
      @glider.send(action)
    else
      @glider.send(action,argument)
    end
  end
end 
