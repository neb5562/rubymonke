# We're almost there. But, sources in the enemy camp tell me that they will be passing 
# you a block to execute on some of these message. And you will be required to invoke this
#  block (if you're passed on) with the same arguments you were passed in.

# Ruby gives you the option to accept yet another argument to the method_missing method,
# &block. Therefore your signature now looks like method_missing(sym, *args, &block).

class Spy
    def method_missing(sym, *args, &block)
    end
end