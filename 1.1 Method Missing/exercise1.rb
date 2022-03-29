# Well, what you need to understand is any method call in Ruby is actually a message 
# being passed to that object. One way to demonstate is to look at the method_missing 
# method. Let's take a look at it in it's most basic form and see if we can use it to 
# solve our previous problem. You need to define a method in your class which accepts 
# one argument (maybe called sym) which will have the name of the method that was called 
# on your object (as a symbol).

class Spy
    def method_missing sym
    end
end