BookStore.ProductsNewRoute = Ember.Route.extend
  model: ->
    BookStore.Product.createRecord()

  deactivate: ->
    unless @currentModel.get('isSaving')
      @currentModel.get('transaction').rollback()
