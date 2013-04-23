Template.show.isAdmin = ->
  if Meteor.loggingIn() then ""
  else if Meteor.user()?.profile
    Meteor.user().profile.isAdmin==1