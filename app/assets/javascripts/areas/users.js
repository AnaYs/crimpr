var ready = function () {

  // var userId = $('#user_chat').data('current_user');
  // var areaId = $('#user_chat').data('area_id');

  //   setInterval(function(){
  //     $.get("/areas/" + areaId, "appel get_user.html"
  //         {}, function (data) {
  //          $('.user_chat tbody').html(data);
  //       });

  //   }, 2000);


    $('.start-conversation').each(function () {
        var sender_id = $(this).data('sid');
        var recipient_id = $(this).data('rip');
        var area_id = $('#user_chat').data('area_id');

        $.post(area_id + "/conversations",
          { sender_id: sender_id, recipient_id: recipient_id }, function (data) {
            chatBox.chatWith(data.conversation_id);

            chatBox.close(data.conversation_id);

        });
    });

    /**
     * When the send message link on our home page is clicked
     * send an ajax request to our rails app with the sender_id and
     * recipient_id
     */

    $('.start-conversation').click(function (e) {
        e.preventDefault();

        var sender_id = $(this).data('sid');
        var recipient_id = $(this).data('rip');
        var area_id = $('#user_chat').data('area_id');

        $.post(area_id + "/conversations",
          { sender_id: sender_id, recipient_id: recipient_id }, function (data) {
            chatBox.chatWith(data.conversation_id);
        });
    });


    /**
     * Used to minimize the chatbox
     */

    $(document).on('click', '.toggleChatBox', function (e) {
        e.preventDefault();

        var id = $(this).data('cid');
        chatBox.toggleChatBoxGrowth(id);
    });

    /**
     * Used to close the chatbox
     */

    $(document).on('click', '.closeChat', function (e) {
        e.preventDefault();

        var id = $(this).data('cid');
        chatBox.close(id);
    });


    /**
     * Listen on keypress' in our chat textarea and call the
     * chatInputKey in chat.js for inspection
     */

    $(document).on('keydown', '.chatboxtextarea', function (event) {

        var id = $(this).data('cid');
        chatBox.checkInputKey(event, $(this), id);
    });

    /**
     * When a conversation link is clicked show up the respective
     * conversation chatbox
     */

    $('a.conversation').click(function (e) {
        e.preventDefault();

        var conversation_id = $(this).data('cid');
        chatBox.chatWith(conversation_id);
    });


}

$(document).ready(ready);
$(document).on("page:load", ready);
