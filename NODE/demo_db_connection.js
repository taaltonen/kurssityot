var mysql = require('mysql');

var con = mysql.createConnection({
host: "magnesium",
user: "a16taaltonen",
password: "tuon5opriT12"
});

con.connect(function(err) {
if (err) throw err;
console.log("Yhdistetty!");
});