function mouseoverImage(event) {
  console.log("mouseover happened! here's the mouseover event:");
  console.log(event);
  event.target.style.border = "10px dotted brown";
}

var photo = document.getElementById("enoki");
photo.addEventListener("mouseover", mouseoverImage);