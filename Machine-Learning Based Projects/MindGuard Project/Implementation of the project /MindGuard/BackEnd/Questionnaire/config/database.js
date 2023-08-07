import mysql from "mysql2";
import Sequelize from "sequelize";

// create the database if it does not exist
export const createdatabase = async () => {
  try{
    const connection = await mysql.createConnection({ host:"localhost", port:"3306", user:"root", password:"" });
    await connection.query('CREATE DATABASE IF NOT EXISTS sdgp');
    console.log("mysql2 connected..");
  } catch (error) {
    console.error(error);
  }
}



// database name 'propertymanager' username and password
const db = new Sequelize('sdgp', 'root', '', {
    host: "localhost",
    dialect: "mysql"
});

export default db;