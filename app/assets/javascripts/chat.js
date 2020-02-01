$(function(){
  function buildHTML(chat){
    var html =
    `<div class = "chat__messages__message">
      <div class = "chat__messages__message__user-info">
        <div class = "chat__messages__message__user-info__name">${chat.user_name}</div>
        <div class = "chat__messages__message__user-info__created_at">${chat.created_at}</div>
      </div>
      <div class = "chat__messages__message__text">${chat.message}</div>
    </div>`
    return html;
  }
$('#new_message').on('submit', function(e){
  e.preventDefault();
  var formData = new FormData(this);
  var url = $(this).attr('action');
  $.ajax({
    url: url,
    type: "POST",
    data: formData,
    dataType: 'json',
    processData: false,
    contentType: false
  })
  .done(function(data){
    var html = buildHTML(data);
    $('.chats').append(html);
    $('.chat__messages').animate({ scrollTop: $('.chat__messages')[0].scrollHeight });
    $('form')[0].reset();
    $('.submit').prop("disabled", false);
  })
});
});