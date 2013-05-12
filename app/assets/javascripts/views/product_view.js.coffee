BookStore.ProductView = Ember.View.extend
  classNames: ['row', 'product']
  templateName: 'products/product'

  editBtn: ->
    @$().find('.edit-btn').stop()

  didInsertElement: ->
    @editBtn().hide()

  mouseEnter: ->
    @editBtn().fadeIn('fast')

  mouseLeave: ->
    @editBtn().fadeOut('fast')




