# Ruby's String has no method that allows you to split a sentence into an Array of words.
#  Let's add a method called words to String to do just this. If you're not sure about
#     how to split a string, take a look at our lesson on string manipulation in the 
#     "Ruby Primer" first.

class String
    def words
      split(' ')
    end
end