const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send("Hello DevSecOps");
});
const AWS_SECRET = "AKIA123456789SECRET";
app.listen(3000, () => console.log("Running on port 3000"));
