BookStore.LineItem = DS.Model.extend
  quantity: DS.attr('number')

  product: DS.belongsTo('BookStore.Product')

  total_price: Ember.computed ->
    @get('product.price') * @get('quantity')
  .property('product.price', 'quantity')
