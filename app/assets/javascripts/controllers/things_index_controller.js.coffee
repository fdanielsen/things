Things.ThingsIndexController = Ember.ArrayController.extend
  incrementLike: (thing) ->
    thing.incrementProperty('likesCount')
    thing.get('store').commit()
