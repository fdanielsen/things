Things.ThingsNewRoute = Ember.Route.extend
  model: ->
    App.Thing.create()

  events:
    save: ->
      thing = @currentModel

      if thing.get("isValid")
        @controllerFor("application").get("things").pushObject thing
        @transitionTo "things"
      else
        alert "Sorry, invalid thing!"
