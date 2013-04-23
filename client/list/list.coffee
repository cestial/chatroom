Template.list.helpers
  users: ->
    Meteor.users.find().fetch()
  isCurUser: ->
    Session.get("curUser") == @username

Template.list.events
  "click li.user": ->
    Session.set "curUser", @username