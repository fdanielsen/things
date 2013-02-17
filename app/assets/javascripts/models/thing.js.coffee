Things.Thing = DS.Model.extend
  tags: DS.hasMany('Things.Tag')

  title: DS.attr('string')
  imageUrl: DS.attr('string')
  description: DS.attr('string')
  likesCount: DS.attr('number')
