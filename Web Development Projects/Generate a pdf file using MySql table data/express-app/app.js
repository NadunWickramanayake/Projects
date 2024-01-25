const express = require('express');
const mysql = require('mysql2');
const ejs = require('ejs');
var path = require('path');
const app = express();

// Create a connection pool to the MySQL database
const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'generate_pdf',
});

// Set the view engine to EJS
app.set('view engine', 'ejs');

// Route to fetch data from the database and render it in an HTML table
app.get('/', (req, res) => {
  const sqlQuery = 'SELECT * FROM students_marks';

  pool.query(sqlQuery, (error, results) => {
    if (error) {
      console.error('Error executing the query:', error);
      return res.status(500).send('Internal Server Error');
    }

    const tableData = results;

    // Render the HTML template with the table data
    res.render('index', { tableData });
  });
});

app.use(express.static(path.join(__dirname, 'public')));


const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});



