App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'members', ->
    @route 'new'
    @route 'edit', path: '/:member_id/edit'
    @route 'show', path: '/:member_id'

App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

App.MembersRoute = Ember.Route.extend
  model: (params) ->
    App.Member.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'members')

App.MemberRoute = Ember.Route.extend
  model: (params) ->
    App.Member.find(params.member_id)
  setupController: (controller, model) ->
    controller.set('content', model)
    @controllerFor('application').set('currentRoute', 'members')

App.MembersNewRoute = App.MembersRoute.extend
  model: ->
    App.Member.createRecord()
  setupController: (controller, model) ->
    controller.set('content', model)

App.MembersShowRoute = App.MemberRoute.extend()
App.MembersEditRoute = App.MemberRoute.extend()