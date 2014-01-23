#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require ./spree_ember_example

# for more details see: http://emberjs.com/guides/application/
window.SpreeEmberExample = Ember.Application.create
  ready: ->
    apiKey = ($ 'meta[name="api-key"]').attr('content')

    Ember.Logger.debug("Spree API Key: " + apiKey)

    #
    # We need a Spree API Key to get resources from the API.
    # Here we pass it via X-Spree-Token header.
    #
    $.ajaxPrefilter (options, originalOptions, xhr) ->
      xhr.setRequestHeader('X-Spree-Token', apiKey)
