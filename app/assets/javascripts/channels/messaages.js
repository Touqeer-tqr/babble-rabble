App.messaages = App.cable.subscriptions.create('MessaagesChannel', {  
  received: function(data) {
    $("#messaages").removeClass('hidden')
    return $('#messaages').append(this.renderMessaage(data));
  },

  renderMessaage: function(data) {
    return "<p> <b>" + data.user + ": </b>" + data.messaage + "</p>";
  }
});