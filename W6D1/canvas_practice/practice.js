document.addEventListener("DOMContentLoaded", function(){
const canvy = document.getElementById('mycanvas');
  canvy.height = 500;
  canvy.width = 500;

const ctx = canvy.getContext('2d');
  ctx.fillStyle = 'blue';
  ctx.fillRect(10, 10, 50, 50);

ctx.beginPath();
ctx.arc(100, 100, 50, 0, 2*Math.PI, true);
ctx.strokeStyle = 'green';
ctx.lineWidth = 5;
ctx.stroke();
ctx.fillStyle = 'red';
ctx.fill()

ctx.beginPath();
ctx.arc(100, 100, 50, 0, 2*Math.PI, true);
ctx.strokeStyle = 'green';
ctx.lineWidth = 5;
ctx.stroke();
ctx.fillStyle = 'red';
ctx.fill()

ctx.beginPath();
ctx.moveTo(250, 200);
ctx.lineTo(300, 75);
ctx.lineTo(300, 250);
ctx.strokeStyle = "black";
ctx.lineWidth = 15;
ctx.stroke()
ctx.fillStyle = "orange";
ctx.fill();


});
