function myFunction(_this) {
  /* Get the text field */
  var copyText = document.getElementById("myInput");
 
  /* Select the text field */
  copyText.select();
  _this.innerHTML = '<img src="/assets/success.png" />';

  /* Copy the text inside the text field */
  document.execCommand("copy");

  /* Alert the copied text */
  /* alert("Copied the text: " + copyText.value); */
  /*_this.style.backgroundColor = "green";*/
}

