BookStore.ProductsIndexController = Ember.ArrayController.extend
  needs: 'cart'
  line_items: Ember.computed.alias('controllers.cart.line_items')

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
      line_item.one 'didCreate.line_item', =>
        line_item.die '.line_item'
        @get('line_items').addObject(line_item)
    @store.commit()

  products: Ember.computed ->
    @content.filter (item) ->
      !item.get('isNew')
  .property('content.@each')
