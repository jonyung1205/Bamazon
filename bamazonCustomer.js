// Requiring dependencies.
var mysql = require("mysql");
var inquirer = require("inquirer");


// Setting up connection with mySQL
var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "",
    database: "bamazonDB"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    afterConnection();
});

function afterConnection() {
    connection.query("SELECT * FROM products", function (err, res) {
        if (err) throw err;
        purchaseItem(res);
    });
}

// Prompt setup
var purchaseItem = function (products) {
    let choices = []
    console.log(products)
    for (i = 0; i < products.length; i++) {
        var name = products[i].product_name
        choices.push(name)
    }
    inquirer.prompt([{
                name: 'item',
                type: 'list',
                message: 'Which item would you like to purchase? (Enter the Item ID)',
                choices: choices
            },
            {
                name: 'quantity',
                type: 'input',
                message: 'How many would you like to purchase?'
            }

        ]).then(function (answer) {
            var name = answer.item;
            var quantity = answer.quantity;
            var updatedQuantity = itemQuantity - answer.item;
            var item = answer.item
            var itemQuantity = item.stock_quantity
            if (quantity > 0) {
                connection.query("UPDATE products SET ? WHERE item = ?", [{
                    stock_quantity: updatedQuantity,
                    product_name: name,
                }, {
                }]);
            } else {
                console.log('Insuffient quantity');
                purchaseItem();
            }
        })
}