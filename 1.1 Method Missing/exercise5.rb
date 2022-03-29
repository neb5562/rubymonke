# Excellent news comrade! We've just made your job much easier. We have captured an enemy 
# agent. Any message they send to you, we want you to send the same on to the captured 
# enemy agent and report the response back, while still recording what they asked you, 
# of course. And how do you send a message to this enemy agent? Well, using send, 
#     of course. Every object in Ruby defines a send method. The first argument you 
#     pass to it is the method you wish to call, and the arguments after that are the 
#     arguments you wish to pass to the method.

class Spy
  def initialize(enemy_agent)
    @enemy_agent = enemy_agent
  end

  def method_missing method_name, *args, &block
    @enemy_agent.send(method_name, *args)
  end
end