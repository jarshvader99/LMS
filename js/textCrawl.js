var nbrStars = 1000;

for (let i = 0; i < nbrStars; i++) {
    let star = document.createElement("div");
    star.className = "star";
    var xy = rndPos();
    star.style.top = xy[0] + 'px';
    star.style.left = xy[1] + 'px';
    document.body.append(star);
}

function rndPos() {
    var x = window.innerHeight;
    var y = window.innerWidth;
    var rndX = Math.floor(Math.random() * x);
    var rndY = Math.floor(Math.random() * y);
    return [rndX, rndY];
}


