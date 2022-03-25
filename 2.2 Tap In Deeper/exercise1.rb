# eval isn't exactly safe. Modify the Editor exercise from the last lesson to use 
# const_get instead of eval to parse the name of the class in the second filter.

# The editor object might be constructed something like this
# e = Editor.new("class Foo; end")

def auto_complete(e)
	e.cursor.read do |word|
    # define your filters here
	end
end

def build_suggestion(list)
  Suggestion.new(list).display
end