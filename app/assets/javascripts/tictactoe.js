$(document).ready(function() {
  attachListeners()
})

var attachListeners = function() {
  $("td").on('click', function(e) {
    console.log(this)
  })
}
