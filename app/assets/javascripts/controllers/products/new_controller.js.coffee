BookStore.ProductsNewController = Ember.ObjectController.extend
  createProduct: ->
    @store.commit()
    @transitionTo 'products'


