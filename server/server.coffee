#initialize database
Meteor.startup ->
  if Meteor.users.find().count()==0
    Accounts.createUser
      username:"admin",
      password:"admin",
      profile:{isAdmin:1}
    Accounts.createUser
      username:"guest"
      password:"guest"
