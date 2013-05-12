BookStore.LineItemController = Ember.ObjectController.extend
  incrementQuantity: ->
    @incrementProperty 'quantity'

  decrementQuantity: ->
    return if @get('quantity') is 0
    @decrementProperty 'quantity'

  updateQuntity: (view)->
    if @get('isDirty')
      if @get('quantity') <= 0
        @deleteRecord()
        view.remove()
      @store.commit()



