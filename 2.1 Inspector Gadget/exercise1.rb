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
  end
end


def build_suggestion(list)
  Suggestion.new(list).display
end