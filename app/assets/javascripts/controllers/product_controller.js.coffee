BookStore.ProductController = Ember.ObjectController.extend
  legendTitle: ''

  save: ->
    @store.commit()
    @cancel()

  cancel: ->
    @transitionToRoute 'products'
