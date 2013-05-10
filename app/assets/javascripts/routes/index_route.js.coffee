BookStore.IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionToRoute 'products'
