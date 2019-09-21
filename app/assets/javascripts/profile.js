function openNav() {
  document.getElementById("mySidenav").style.width = "100%";
  }

  function closeNav() {
  document.getElementById("mySidenav").style.width = "0%";
  }

  function openNav01() {
  document.getElementById('id01').style.display='block';
  }

  // Get the modal
  var modal = document.getElementById('id01');

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }