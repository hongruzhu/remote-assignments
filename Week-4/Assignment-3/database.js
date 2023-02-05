import mysql from 'mysql2';
import dotenv from "dotenv";
dotenv.config();

const pool = mysql
  .createPool({
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DATABASE,
  })
  .promise();

// 註冊信箱密碼，增加至user table
export async function createUser(email, password){
  const [result] = await pool.query(`
  INSERT INTO user (email, password)
  VALUES (?, ?)
  `, [email, password]);
}

// 確認table有該筆信箱，回傳true代表沒有
export async function checkEmail(email) {
  const [check] = await pool.query(`
  SELECT email 
  FROM user
  WHERE email = ?
  `, [email]);
  if (check.length === 0) {
    return true;
  } else {
    return false;
  }
}

// 確認該筆信箱的密碼正確，回傳true代表正確
export async function checkPassword(email, password) {
  const [check] = await pool.query(`
  SELECT password 
  FROM user
  WHERE email = ?
  `,[email]);
  if (check[0].password === password) {
    return true;
  } else {
    return false;
  }
}