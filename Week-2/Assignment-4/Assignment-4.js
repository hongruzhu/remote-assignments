const textChange = document.querySelector(".headline");
const banner = document.querySelector(".banner");
const btnChange = document.querySelector(".btn-change");
const sectionChange = document.querySelector(".change");

banner.addEventListener("click", () => {
   textChange.textContent = "Have a Good Time!";
});

btnChange.addEventListener("click", () => {
  sectionChange.removeAttribute("style");
});
