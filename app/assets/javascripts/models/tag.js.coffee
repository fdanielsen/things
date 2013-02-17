Things.Tag = DS.Model.extend
  things: DS.hasMany('Things.Thing')

  name: DS.attr('string')
