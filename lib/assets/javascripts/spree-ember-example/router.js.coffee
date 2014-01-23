SpreeEmberExample.Router.map ->
  @resource 'products', ->
    @resource 'product', { path: ':product_id' }
