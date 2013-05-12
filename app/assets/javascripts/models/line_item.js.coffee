BookStore.LineItem = DS.Model.extend
  quantity: DS.attr('number')

  product: DS.belongsTo('BookStore.Product')

  total_price: Ember.computed ->
    @get('product.price') * @get('quantity')
  .property('product.price', 'quantity')

  quantityChanged: Ember.observer ->
    @set('quantity', 0) if @get('quantity') < 0
  , 'quantity'
