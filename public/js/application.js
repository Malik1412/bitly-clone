$(document).ready(function() {
  $('form').on('submit', function(event) {
    event.preventDefault()
    $.ajax({
      url: '/shorten_link',
      method: 'post',
      data: $(this).serialize(),

    success: function(data) {
      res = JSON.parse(data)
      $('tr:first-child').after('<tr><td>' + res.long_url + '</td><td><a onclick="clickCounter()" href="'+res.short_url+'" target="_blank"> http://localhost:9393/' + res.short_url + '</a></td><td></td><td id="result">'+ res.count +'</td></tr>')},
        
    
    // $("button").click(function(){
    //   res = JSON.parse(data)
    //   $()


    })
  })
});

function clickCounter() {
    initial_clicks = parseInt($('#result').html())
     clicks = initial_clicks + 1
    $('#result').html(clicks)
}