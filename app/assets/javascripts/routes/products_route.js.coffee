BookStore.ProductsRoute = Ember.Route.extend
  model: ->
    BookStore.Product.find()
