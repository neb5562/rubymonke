# That means if I pass in an array of numbers, and specify the data_type as s 
# (which stands for 'string'), the method should return another array with all
#  elements converted to strings. This can be done by calling to_s on every element 
# in the array.

def relay(array, data_type)
    array.map {|s| s.send("to_"+data_type) }
end
