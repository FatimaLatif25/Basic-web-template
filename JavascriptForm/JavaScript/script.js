const submitbtn = document.getElementById("submitbtn");
const form = document.getElementById("form");
const inputs = form.querySelectorAll("input");
const button = form.querySelector("button");
const showMessage = document.getElementById("show-thanks");
const label = form.querySelectorAll("label");
const fname = document.getElementById("fname");
const lname = document.getElementById("lname");
const email = document.getElementById("email");
const password = document.getElementById("password");

submitbtn.addEventListener("click", function (e) {
  e.preventDefault();

  clearErrorMessage();
  let isValid = true;

  if (fname.value.trim() === "") {
    //for First name field
    displayError(fname, "Please Enter First Name");
    isValid = false;
  }

  if (lname.value.trim() === "") {
    //for Last Name field
    displayError(lname, "Please Enter Last Name");
    isValid = false;
  }

  const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (email.value.trim() === "") {
    //for Email field
    displayError(email, "please Enter email");
    isValid = false;
  } else if (!emailPattern.test(email.value.trim())) {
    displayError(email, "please Enter valid email");
    isValid = false;
  }

  if (password.value.trim() === "") {
    displayError(password, "Please Enter Password");
    isValid = false;
  }

  if (isValid) {
    form.style.backgroundColor = "#0e0e47";
    form.style.color = "white";
    form.style.fontWeight = "bold";

    button.style.backgroundColor = "sky-blue";
    button.style.color = "red";
    inputs.forEach((input) => {
      input.style.color = "red";
    });
    inputs.forEach((input) => {
      input.style.display = "none";
    });
    submitbtn.style.display = "none";
    label.forEach((label) => {
      label.style.display = "none";
    });
    showMessage.style.display = "block";
  }
});

function displayError(input, message) {
  const error = document.createElement("div");
  error.className = "error";
  error.style.color = "red";
  error.style.fontSize = "15px";
  error.innerText = message;
  input.insertAdjacentElement("afterend", error); //it takes 2 parameters first is position and second is element
}

function clearErrorMessage() {
  const errors = document.querySelectorAll(".error");
  console.log("errors", errors);
  errors.forEach((err) => err.remove());
}

fname.addEventListener("input", (e) => {
  //for input event
  console.log(e.target.value);
});
