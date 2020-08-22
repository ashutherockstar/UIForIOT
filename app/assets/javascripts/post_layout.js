
function myFunction() {
    var x = document.getElementById("index2");
    if (x.style.display == "none" || x.style.display == "") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
 
}
function on() {
    document.getElementById("overlay").style.display = "block";
  }
  
  function off() {
    document.getElementById("overlay").style.display = "none";
  }

function myFunction1() {
    var x = document.getElementById("overlay");
    if (x.style.display == "none" || x.style.display == "") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
 
}

$( function() {
    $("button").on('click', function() {
          $("button").removeClass("current");
        $(this).addClass("current");
        
        var speed = $(this).data("speed");
        
        if(speed === "paused") {
            $(".circle").css("animation-play-state", "paused");
        } else {
            $(".circle").css({ 
                animationPlayState: "running",
                animationDuration: speed
            });
        }
    });
  });


function myFunction2() {
    var x = document.getElementById("overlay1");
    if (x.style.display == "none" || x.style.display == "") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
 
}


function on1() {
    document.getElementById("overlay1").style.display = "block";
  }
  
  function off1() {
    document.getElementById("overlay1").style.display = "none";
  }

  function myFunction3() {
    var x = document.getElementById("overlay2");
    if (x.style.display == "none" || x.style.display == "") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
 
}


function on2() {
    document.getElementById("overlay2").style.display = "block";
  }
  
function off2() {
    document.getElementById("overlay2").style.display = "none";
  }
  
