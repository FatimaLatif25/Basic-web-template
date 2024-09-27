const submitbtn = document.getElementById("submitbtn");
const form = document.getElementById("form");
const inputs = form.querySelectorAll("input");
const button = form.querySelector("button");
const showMessage = document.getElementById("show-thanks")
const label = form.querySelectorAll('label')
const fname = document.getElementById('fname')

submitbtn.addEventListener("click", function (e) {
  form.style.backgroundColor = "#0e0e47";
  form.style.color = "white";
  form.style.fontWeight = "bold";

  button.style.backgroundColor = "sky-blue";
  button.style.color = "red";
  inputs.forEach((input) => {
    input.style.color = "red";
  });
 inputs.forEach((input => {
  input.style.display = "none"
 }))
 submitbtn.style.display = "none"
 label.forEach(label => {
  label.style.display = "none"
 })
 showMessage.style.display = 'block'
});

fname.addEventListener('input', (e)=>{   //for input event
  console.log(e.target.value)
})
