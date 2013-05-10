BookStore.ProductsIndexRoute = Ember.Route.extend
  model: ->
    BookStore.Product.find()


