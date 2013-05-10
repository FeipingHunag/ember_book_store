BookStore.Router.reopen
  location: 'history'
  rootURL: '/'

BookStore.Router.map ->
  @resource 'products', ->
    @route 'new'
    @route 'edit',
      path: ':product_id/edit'
