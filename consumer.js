function charges(){
    var units= document.getElementById("nunits").value;
var charge;
var total;
if (units >0 && units <=100)
{
    charge = (296 / 100);
    total = (units * charge);
}
else if (units > 100)
{
    charge = (556 / 100);
    total = (units * charge);
}
window.alert("No of units are : " + units.toString() + "." +
    "Charges per unit : " + charge + "." +
    "The Electricity Charges are :" + total + ".");
}