BookStore.CartController = Ember.ObjectController.extend
  line_items: []

  init: ->
    @_super()
    @set 'line_items', BookStore.LineItem.find()

  total_price: Ember.computed ->
    @get('line_items').reduce((sum, line_item)->
      sum + line_item.get('total_price')
    , 0)
  .property('line_items.@each.total_price')
