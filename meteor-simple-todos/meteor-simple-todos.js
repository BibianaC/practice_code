Tasks = new Mongo.Collection("tasks");

if (Meteor.isClient) {
  // This code only runs on the client
  Template.body.helpers({
    tasks: function () {
      // show newest tasks first
      return Tasks.find({}, {sort: {createdAt: -1}})
    }
  });

  Template.body.events({
    "submit .new-task": function(event) {

      var text = event.target.text.value;

      Tasks.insert({
        text: text,
        createdAt: new Date()
      });

      // Clear form
      event.target.text.value = "";
      // Prevent default form submit
      return false;
    }
  });
}
