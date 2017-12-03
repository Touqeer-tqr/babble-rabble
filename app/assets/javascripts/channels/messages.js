App.messages = App.cable.subscriptions.create('MessagesChannel', {  
  received: function(data) {
  	$('#message_msg').val("");
  	$('#messages').append("<p> <b>" + data.user + ": </b>" + data.message + "</p>");
    var elem = document.getElementById('messages');
    elem.scrollTop = elem.scrollHeight;
  }
});