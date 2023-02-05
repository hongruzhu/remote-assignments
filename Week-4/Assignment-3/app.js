import express from "express";
import {createUser, checkEmail, checkPassword } from "./database.js";
import bodyParser from "body-parser";

const app = express();

app.use(express.json());
app.use(express.static("public"));
app.use(express.urlencoded());
app.set("view engine", "pug");

// Home page呈現
app.get("/", async (req, res) => {
  const display = "none";
  res.render("home", {display});
});

// 註冊路徑處理
app.post("/signup", async (req, res) => {
  const { email, password } = req.body;
  const display = "none";
  if (await checkEmail(email)) {
    await createUser(email, password);
    res.render("member");
  } else {
    const script = `
      const display = document.getElementById('signupMail');
      display.setAttribute('style', 'color:red;display:inline');
    `;  
    res.render("home", {display, script});
  } 
});

// 登入路徑處理
app.post("/signin", async (req, res) => {
  const { email, password } = req.body;
  const display = "none";
  if ((await checkEmail(email)) === false && (await checkPassword(email, password))) {
    res.render("member");
  } else if ((await checkEmail(email))) {
    const script = `
      const display = document.getElementById('signinMail');
      display.setAttribute('style', 'color:red;display:inline');
    `;
    res.render("home", { display, script });
  } else {
    const script = `
      const display = document.getElementById('signinPw');
      display.setAttribute('style', 'color:red;display:inline');
    `;
    res.render("home", { display, script });
  }
});

// Error handling
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send("Something broke! :(");
});

app.listen(3000, () => {
  console.log("Server is runnimg on port 3000");
});
