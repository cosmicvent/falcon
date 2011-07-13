class Falcon.Models.Issue extends Backbone.Model
  paramRoot: 'issue'

  defaults:
    title: null
    description: null
  
class Falcon.Collections.IssuesCollection extends Backbone.Collection
  model: Falcon.Models.Issue
  url: '/issues'
