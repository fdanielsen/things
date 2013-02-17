Things.ThingsIndexRoute = Ember.Route.extend
  model: -> Things.Thing.find()
