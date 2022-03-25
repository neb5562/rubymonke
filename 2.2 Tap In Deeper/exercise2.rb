# Write a method inspect_instance_variable that accepts the name of a class as a 
# String and the name of the instance variable defined on that class (again, as a String) 
# whose value it should return.
def inspect_instance_variable(class_name, variable)
    return Module.const_get(class_name.to_s).new.instance_variable_get("@" + variable)
end