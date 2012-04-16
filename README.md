# Get Set CoffeeScript!

Basic implementation of get/set that can be extended to all of your CoffeScript classes.

## Instructions
Extend the AttrAccessor class (after including it of course), and save each argument of your constructor function to a local variable called 'priv'. Then call super on priv. That's it!!


class Document extends AttrAccessor
  constructor: (title, author, content) ->
      priv = title: title, author: author, content: content
      super priv
      
a = new Document('Why I love computers', 'Jeff', 'Because they are so much fun!')

console.log a.title()
console.log a.title("Why I REALLY love computers")
console.log a.title()