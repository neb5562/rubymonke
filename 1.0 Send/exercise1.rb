class Nomad
  def initialize(glider)
    @glider = glider
  end

  def do(action)
    @glider.send(action)
  end
end