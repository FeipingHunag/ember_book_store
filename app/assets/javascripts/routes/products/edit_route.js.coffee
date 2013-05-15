BookStore.ProductsEditRoute = Ember.Route.extend
  model: (paramas)->
    BookStore.Product.find(paramas.product_id)

  deactivate: ->
    unless @currentModel.get('isSaving')
      @currentModel.get('transaction').rollback()
