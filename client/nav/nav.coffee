Template.nav.curUser = ->
  if Meteor.loggingIn()
    "登录中"
  else if Meteor.user()
    Meteor.user().username
  else
    "未登陆"

Template.nav.events
  "click .change-user": ->
    if Meteor.loggingIn()
      undefined
    else if Meteor.user().username=="guest"
      Meteor.loginWithPassword("admin", "admin")
    else
      Meteor.loginWithPassword("guest", "guest")
