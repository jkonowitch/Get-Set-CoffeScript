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

class Document extends AttrAccessor
  constructor: (title, author, size) ->
      priv = title: title, author: author, content: content
      super priv
      
a = new Document('Why I love computers', 'Jeff', 'Because they are so much fun!')

console.log a.title()
console.log a.title("Why I REALLY love computers")
console.log a.title()
