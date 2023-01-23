const express = require("express");
const bodyParser = require("body-parser");
const cookieParser = require("cookie-parser");

const app = express();

app.use(express.urlencoded());
app.use(cookieParser());
app.use(express.static("public"));

app.set("view engine", "pug");

app.get("/", (req, res) => {
  res.send("Hello, My Server!");
});

app.get("/data", (req, res) => {
  const { number } = req.query;

  if (number === undefined) {
    res.send("Lack of Parameter");
  } else if (isNaN(number)) {
    res.send("Wrong Parameter");
  } else {
    res.send(`${((1 + +number) * +number) / 2}`);
  }
});

app.get("/myName", (req, res) => {
  const name = req.cookies.username;
  console.log(name);
  if (name) {
    res.render("name", { name });
  } else {
    res.render("enter");
  }
});

app.get("/trackName", (req, res) => {
  console.log(req.query);
  res.cookie("username", req.query.username);
  res.redirect("/myName");
});

app.listen(3000, () => {
  console.log("The application is running on localhost:3000!");
});
