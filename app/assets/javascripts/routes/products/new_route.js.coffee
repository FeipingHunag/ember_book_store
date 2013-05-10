BookStore.ProductsNewRoute = Ember.Route.extend
  model: ->
    BookStore.Product.createRecord()

  exit: ->
    unless @currentModel.get('isSaving')
      @currentModel.get('transaction').rollback()
