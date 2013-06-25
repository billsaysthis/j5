App.ApplicationController = Ember.Controller.extend
  isHome: (->
    @get('currentRoute') == 'home'
  ).property('currentRoute')

  isMembers: (->
    @get('currentRoute') == 'members'
  ).property('currentRoute')