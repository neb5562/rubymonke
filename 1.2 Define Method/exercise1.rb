# Create a class Monk which can meditate on life, the universe or everything. It 
# should have three methods meditate_on_life, meditate_on_the_universe & 
# meditate_on_everything and returns strings of "I know the meaning of life", "I know 
# the meaning of the universe", and "I know the meaning of everything", respectively.

class Monk
    ["life", "the_universe","everything"].each do |action|
      define_method("meditate_on_" + action) do
        return "I know the meaning of #{action.gsub("_"," ")}"
      end
    end
end
