function finalBill() {
    var t = document.getElementById("title").value;
    var n = document.getElementById("name").value;
    var m = document.getElementById("model").value;
    var c = document.getElementById("cost").value;
    var cs=0;
    if (document.getElementById("F").checked == true)
    {
        cs = cs + 200;

    }
    if(document.getElementById("B").checked==true)
    {
        if (m == "Hatchback") {
            cs = cs + ((15 * c) / 100);
        }
        if (m == "Small Cars") {
            cs = cs + ((10 * c) / 100);
        }
        if (m == "Sedan") {
            cs = cs + ((18 * c) / 100);
        }
    }
    alert("\"Thanks for your visit " + t + "." + n + ". Your Final bill is\"" + cs);

}
