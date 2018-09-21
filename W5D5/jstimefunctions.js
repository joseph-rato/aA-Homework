whatTimeNow() {
    console.log(alert('HAMMERTIME'));
}

window.setTimeout(whatTimeNow, 5000)



function hammerTime (time) {
    window.setTimeout(function() {
        alert(`${time} is HAMMER TIME!`);
    });
}

const realine = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});
