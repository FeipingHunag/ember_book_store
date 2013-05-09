BookStore.CartController = Ember.ObjectController.extend
  line_items: []

  init: ->
    @set 'line_items', BookStore.LineItem.find()

  total_price: Ember.computed ->
    @get('line_items').reduce((sum, line_item)->
      sum + line_item.get('total_price')
    , 0)
  .property('line_items.@each.total_price')

  addToCart: (product)->
    line_item = @get('line_items').filter((item) ->
      item.get('product') == product
    ).get('firstObject')

    if line_item
      line_item.set 'quantity', line_item.get('quantity') + 1
    else
      line_item = BookStore.LineItem.createRecord
        product: product
        quantity: 1
      @get('line_items').pushObject(line_item)
    @store.commit()
