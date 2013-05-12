BookStore.ProductsNewRoute = Ember.Route.extend
  model: ->
    BookStore.Product.createRecord()

  exit: ->
    @_super()
    unless @currentModel.get('isSaving')
      @currentModel.get('transaction').rollback()
