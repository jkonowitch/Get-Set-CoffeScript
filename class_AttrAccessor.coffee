class AttrAccessor
    constructor: (priv) ->
      get_set = (varName, arg) ->
        if !arg
          return priv[varName]
        else
          priv[varName] = arg
          return "Variable changed to #{priv[varName]}"          
      varNames = []
      for key of priv
        varNames.push key
      self = @
      varNames.forEach( (key) ->
          self["#{key}"] = (arg) -> get_set("#{key}", arg)
        , self)
