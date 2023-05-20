window.addEventListener("scroll", reveal);
function reveal() {
  const reveals = document.querySelectorAll(".reveal");

  for (let i = 0; i < reveals.length; i++) {
    let windowHeight = window.innerHeight;
    let revealTop = reveals[i].getBoundingClientRect().top;
    let revealPoint = 150;

    if (revealTop < windowHeight - revealPoint) {
      reveals[i].classList.add("active");
    } else {
      reveals[i].classList.remove("active");
    }
  }
}

const links = document.querySelectorAll(".linkNav");

links.forEach((item) => {
  item.addEventListener("click", () => {
    let el = document.getElementById(item.getAttribute("data-link"));
    el.scrollIntoView({ behavior: "smooth", block: "start" });
  });
});

const boton = document.getElementById("sendButton");
const nameField = document.getElementById("name");
const emailField = document.getElementById("email");
const messageField = document.getElementById("message");

boton.addEventListener("click", function () {
  console.log("I was clicked");
});
