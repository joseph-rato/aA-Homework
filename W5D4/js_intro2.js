
function titleize(names, callback) {
  let titleize = names.map(name => `Mx. ${name} Jinglehemiher Schmit`);
  callback(titleize);
}

titleize(["Mary", "Brian", "Leo"], (names) => {
  names.forEach(name => console.log(name));
})

function Elephant(name, height, tricks) {
  this.name = name
  this.height = height
  this.tricks = tricks
}

Elephant.prototype.trumpet() {
  console.log(`${this.name} the elephant goes toot toot`);
};

Elephant.prototype.grow(){
  this.height = this.height + 12;
};

Elephant.prototype.addTrick(trick) {
  this.tricks = this.tricks.push(trick);
};

Elephant.prototype.play() {
  trickIndex = Math.floor(Math.random() * Math.floor(this.tricks.length))
  console.log(`${this.name} is ${this.tricks[trickIndex]}!`);
};

Elephant.paradeHelper = function (elephant) {
  console.log(`${elephant.name} is shmoosing bye!`)
};


function dinerBreakfast() {
  let order = "I'd like some fatty bacon plz!";
  console.log(order);

  return function (food) {
    order = `${order.slice(0, order.length - 5)} and ${food} plz.`;
    console.log(order)
  };
};
