# Ruby also allows you to call private methods this way. But, chances are you probably 
# don't want to do this. After all, that method was probably declared private for a reason.
#      Let's see if you can extract the secret of the meaning of life from the very 
#      secretive monk.

class Initiate
  def initialize(secretive_monk)
    @secretive_monk = secretive_monk
  end

  def	meaning_of_life
    @secretive_monk.send(:meaning_of_life)
  end
end