def inspect_instance_variable(class_name, variable)
    return Module.const_get(class_name.to_s).new.instance_variable_get("@" + variable)
end