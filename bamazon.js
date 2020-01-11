var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "Toolfan91",
    database: "bamazon_DB"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
    beginSearch();
});
function beginSeach() {
    inquirer
        .prompt({
            name: "products list",
            type: "rawlist",
            message: "Make your selection from our finest inventory",
            choices: [
                ": clothing :",
                ": kitchenware :",
                ": gaming :"
            ]
        })
        .then(function (answer) {
            switch (answer.action) {
                case " Find products for clothing":
                    clothingSearch();
                    break;
                case " Find products for kitchen ware":
                    kitchenWare();
                    break;
                case " Find products for gaming: ":
                    gaming();
                    break;
            }
        });
 }

 function clothingSearch() {
     inquirer
     .prompt({
         name:"clothing",
         type: "rawlist",
         message: "pick a option : ",
         choices:[
             "|shoes|",
             "|pants|"
         ]
     })
     .then(function (answer) {
         var query = "SELECT departmen_name FROM products WHERE ?";
         connection.query(query, { clothing: answer.clothing }, function(err, res) {
             for (var i = 0; i < res.length; i++) {
                 console.log("clothing: " + res[i].clothing)

             }
             beginSeach();
         });
     });
 }