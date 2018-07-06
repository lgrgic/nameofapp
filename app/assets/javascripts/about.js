var i = 0;
var txt = 'My first encounter with a closed terrarium occurred in 2013 at the school where I worked as a secretary. It was love at first sight. Only three years after I´m starting to work more intensely on my project. At the moment I am exploring the world of bookbinding and papercraft so you can definitely expect more new stuff from us in the future. Luka';
var speed = 50;

function typeWriter() {
  if (i < txt.length) {
    document.getElementById("type-text").innerHTML += txt.charAt(i);
    i++;
    setTimeout(typeWriter, speed);
  }
}
