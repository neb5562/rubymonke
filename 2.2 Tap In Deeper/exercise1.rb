# eval isn't exactly safe. Modify the Editor exercise from the last lesson to use 
# const_get instead of eval to parse the name of the class in the second filter.

# The editor object might be constructed something like this
# e = Editor.new("class Foo; end")

e = Editor.new("class Foo; end")

def auto_complete(e)
	e.cursor.read do |word|
        if word == "\n"
          throw :eol
        end
      if e.template.user_classes.include? word
          l = Module.const_get(word.to_s).methods
            build_suggestion(l)
        end
      if e.template.context.methods.include? word
        l = e.template.context.method(word).parameters
            build_suggestion(l)
        end
	end
end

def build_suggestion(list)
  Suggestion.new(list).display
end