var mysql = require('mysql');

var con = mysql.createConnection({
host: "magnesium",
user: "a16taaltonen",
password: "tuon5opriT12",
database: "ska16taaltonen"
});

con.connect(function(err) {
if (err) throw err;
con.query("SELECT * FROM asiakkaat", function (err, result, fields) {
if (err) throw err;
console.log(result);
});
});