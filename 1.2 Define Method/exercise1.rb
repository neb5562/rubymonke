class Monk
  ["life", "the_universe","everything"].each do |action|
    define_method("meditate_on_" + action) do
      "I know the meaning of #{action.gsub("_"," ")}"
    end
  end
end
