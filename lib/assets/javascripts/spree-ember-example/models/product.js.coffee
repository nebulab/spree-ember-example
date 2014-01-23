SpreeEmberExample.Product = DS.Model.extend
  name: DS.attr('string')
  description: DS.attr('string')
  price: DS.attr('number')
  variants: DS.hasMany('variant')

  images: (->
    @get('variants.firstObject.images')
  ).property('variants.firstObject.images')

  mainImage: (->
    @get('images.firstObject')
  ).property('images.firstObject')
