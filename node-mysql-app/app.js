// Import the MySQL module
const mysql = require("mysql2");

// Create a connection to the MySQL database
const connection = mysql.createConnection({
  host: "localhost", // The host where the database is located
  user: "scott", // Your MySQL username
  password: "pass", // Your MySQL password (leave empty if no password)
  database: "emp", // The database you want to connect to
});

// Connect to the database
connection.connect((err) => {
  if (err) {
    console.error("Error connecting to the database:", err);
    return;
  }
  console.log("Connected to the MySQL database!");

  // Run a simple query
  connection.query("SELECT * FROM emp", (err, results, fields) => {
    if (err) {
      console.error("Error executing query:", err);
      return;
    }
    console.log("Query results:", results);
  });

  // Close the connection
  connection.end();
});
