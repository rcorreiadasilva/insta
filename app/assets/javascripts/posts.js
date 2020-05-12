// $(function(){
//   // jquery loaded
//   $(".post-card").on("click", function(){
//     var post_id = $(this).data("id");

//     $.ajax({
//       url: "/post/card/"+post_id,
//       method: "GET"
//     }).done(function(response){
//       console.log(response);
//      })
//     })

//   });

$(function(){
  // jquery loaded
  $(".post-like").on("click", function(){
    var post_id = $(this).data("id");

    $.ajax({
      url: "/post/like/"+post_id,
      method: "GET"
    }).done(function(response){
      console.log(response);
     })
    })
});

// $('#submit').on('click', function(event) {
//   event.preventDefault();
//   $.ajax({
//     url: 'https://api.github.com/orgs/lewagon/repos',
//     success: function(data) {
//       // Do something with the response
//     }
//   });
// });

// document.getElementById('post-like').addEventListener('click', (event) => {
//   event.preventDefault();
//   fetch('/post/like/'+post_id)
//     .then(response => response.json())
//     .then((data) => {
//       // Do something with the response
//     });
// });
