BookStore.ProductsEditRoute = Ember.Route.extend
  model: (paramas)->
    BookStore.Product.find(paramas.product_id)

  exit: ->
    unless @currentModel.get('isSaving')
      @currentModel.get('transaction').rollback()
