BookStore.ProductsEditRoute = Ember.Route.extend
  model: (paramas)->
    BookStore.Product.find(paramas.product_id)

  exit: ->
    @_super()
    unless @currentModel.get('isSaving')
      @currentModel.get('transaction').rollback()
