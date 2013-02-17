Things.ThingsNewRoute = Ember.Route.extend
  model: -> Things.Thing.createRecord()

  events:
    save: ->
      @currentModel.one 'didCreate', => @transitionTo "things"
      @get('store').commit()
