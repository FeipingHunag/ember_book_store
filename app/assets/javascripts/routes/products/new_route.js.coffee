BookStore.ProductsNewRoute = Ember.Route.extend
  model: ->
    BookStore.Product.createRecord()
