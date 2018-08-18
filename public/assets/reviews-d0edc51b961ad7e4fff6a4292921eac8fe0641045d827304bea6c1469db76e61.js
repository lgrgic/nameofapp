function openNav() {
    document.getElementById("mySidenav").style.width = "300px";
    if (typeof(Storage) !== "undefined") {
    localStorage.setItem("sidebar", "opened");
    }
}
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    if (typeof(Storage) !== "undefined") {
    localStorage.setItem("sidebar", "closed");
    }
}
;
