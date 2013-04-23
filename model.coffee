if Meteor.isServer
  Meteor.publish "allUserData", ->
    Meteor.users.find({},{fields:{username:1}})
  Meteor.publish "userData", ->
    Meteor.users.find({_id: @userId},{fields:{username:1, profile:1}})
else
  Meteor.subscribe "allUserData"
  Meteor.subscribe "userData"