Things.ThingAsArticleView = Ember.View.extend
  templateName: 'things/as_article'

  doubleClick: (event) -> @get('controller').incrementLike @get('context')
