Things.ThingsNewController = Ember.ObjectController.extend
  addTag: ->
    tag = @get("newTag").toLowerCase()
    tags = @get("model.tags")

    if tag.length > 0 and not tags.contains(tag)
      tags.createRecord name: tag
      @set "newTag", ""
