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

    "change .hide-completed input": function (event) {
      Session.set("hideCompleted", event.target.checked);
    }
  });

  Template.task.events({
    "click .toggle-checked": function() {
      // Set the checked property to the opposite of its current value
      Tasks.update(this._id, {$set: {checked: ! this.checked }});
    },
    "click .delete": function() {
      Tasks.remove(this._id);
    }
  });
}
