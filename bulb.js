const bulb = document.getElementById("bulb");
const button = document.getElementById("switchBtn");
button.addEventListener("click",() =>{
    bulb.classList.toggle("on");
})