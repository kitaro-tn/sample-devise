$(function(){
  'use strict';

  $('#logout').click(function(){
    $.ajax({
      url: "/auth/logout.json",
      method: "DELETE",
      contentType: "application/json"
    }).done(function(data) {
      console.debug(data);
      location.href = "/";
    }).fail(function(data) {
      console.error(data);
    });
  });
});
