function changeFormColor() {
  const form = document.getElementById("form");
  const inputs = form.querySelectorAll("input");
  const button = form.querySelector("button");

  form.style.backgroundColor = "#0e0e47";
  form.style.color = "white";
  form.style.fontWeight = "bold";

  button.style.backgroundColor = "sky-blue";
  button.style.color = "red";
  inputs.forEach((input) => {
    input.style.color = "red";
  });
}
