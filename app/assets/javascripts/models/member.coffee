App.Member = DS.Model.extend(
  firstName: DS.attr('string', default: '')
  lastName:  DS.attr('string', default: '')
  email:     DS.attr('string')
  joined:    DS.attr('date')
  fullName: (->
    "#{@get('firstName')} #{@get('lastName')}"
  ).property('firstName', 'lastName')
)