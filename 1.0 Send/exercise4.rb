def relay(array, data_type)
    array.map {|s| s.send("to_"+data_type) }
end

