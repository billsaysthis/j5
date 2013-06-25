App.MembersNewController = Ember.ObjectController.extend
  headerTitle: 'Create'
  buttonTitle: 'Create'

  save: ->
    @content.save().then =>
      @transitionToRoute('members.show', @content)
    
  cancel: ->
    @content.deleteRecord()
    @transitionToRoute('members.index')