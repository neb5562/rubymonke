# Finish the method called auto_complete that accepts an Editor object and use the
# build_suggestion method that accepts an Array from 1) Object#methods 2)
#  Method#parameters and incorporate all of the filters explained above, making 
#  the relevant specs pass.

# We've completed the first filter for you as an example.

editor = Editor.new("class Foo; end")

def auto_complete(editor)
	editor.cursor.read do |word|
    if word == "\n"
      throw :eol
    end
      if editor.template.user_classes.include? word
        methods = eval(word.to_s).methods
        build_suggestion(methods)
    end
      if editor.template.context.methods.include? word
        methods = editor.template.context.method(word).parameters
        build_suggestion(methods)
      end
    # define the other two filters like the above. 
	end
end

# This takes an Array of suggestions and displays them.
# It could either be an Array of methods, like the ones returned
# by Object#methods or an Array returned by Method#parameters.
def build_suggestion(list)
  Suggestion.new(list).display
end