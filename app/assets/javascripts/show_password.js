// This function enables or disable password type :P
function show_pass(){

  var type = document.getElementById("password").type;

  if (type == "text")
    document.getElementById("password").type = "password";
  else
    document.getElementById("password").type = "text";
}
