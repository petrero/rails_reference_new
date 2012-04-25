class Product
  constructor: (@attributes) ->
  id: -> @attributes.id
  name: -> @attributes.name
  price: -> "price"
  released_at: -> "date"


@Product = Product
