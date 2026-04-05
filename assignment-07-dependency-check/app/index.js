const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send("Hello DevSecOps - Assignment 7");
});

app.listen(3000, () => {
  console.log("App running on port 3000");
});
