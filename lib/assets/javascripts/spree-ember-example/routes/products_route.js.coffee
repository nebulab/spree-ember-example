SpreeEmberExample.ProductsRoute = Ember.Route.extend
  model: ->
    @store.find('product')
