App.MembersEditController = Ember.ObjectController.extend
  headerTitle: 'Edit'
  buttonTitle: 'Update'

  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionTo('users.index')

  save: ->
    @content.save().then =>
      @transitionToRoute('members.show', @content)
    
  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute('members.show', @content)