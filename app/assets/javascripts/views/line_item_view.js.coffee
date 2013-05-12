BookStore.LineItemView = Ember.View.extend
  tagName: 'tr'
  isEditing: false

  mouseEnter: ->
    @set 'isEditing', true

  mouseLeave: ->
    @set 'isEditing', false
    @controller.send 'updateQuntity', this


