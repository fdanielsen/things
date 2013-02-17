Things.ThingsNewRoute = Ember.Route.extend
  model: -> Things.Thing.createRecord()
  deactivate: -> @currentModel.deleteRecord() if @currentModel.get('isNew')

  events:
    save: ->
      @currentModel.one 'didCreate', => @transitionTo "things"
      @get('store').commit()
