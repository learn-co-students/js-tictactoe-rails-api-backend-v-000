$(document).ready(function() {
  attachListeners();
});

  var player = function() {
    if (turn % 2 === 0) {
      return "O";
    } else {
      return "X";
    }
  }


  function attachListeners() {
    console.log("Yeah");
    $('td').on('click', function() {

    });

    $('#save').on('click', function() {
      return saveGame();
    })

    $('#previous').on('click', function(){
    })
  }














// var x = document.getElementsByTagName("tbody");
// var myRows = myTable.getElementsByTagName("tr");
//var cells = document.getElementsByTagName("td");
// <script>
//   document.getElementById("test").addEventListener("click", function( event ) {
//     // display the current click count inside the clicked div
//     event.target.textContent = "click count: " + event.detail;
//   }, false);
// </script>

// window.onload = init();

// <table border="1" cellpadding="40">
//   <tr>
//     <td data-x="0" data-y="0"></td>
//     <td data-x="1" data-y="0"></td>
//     <td data-x="2" data-y="0"></td>
//   </tr>
//   <tr>
//     <td data-x="0" data-y="1"></td>
//     <td data-x="1" data-y="1"></td>
//     <td data-x="2" data-y="1"></td>
//   </tr>
//   <tr>
//     <td data-x="0" data-y="2"></td>
//     <td data-x="1" data-y="2"></td>
//     <td data-x="2" data-y="2"></td>
//   </tr>
// </table>

// <div id="games"></div>

// <div id="message"></div>

// <button id="save">Save Game</button>
// <button id="previous">Show Previous Games</button>
// <button id="clear">Clear Current Game</button>