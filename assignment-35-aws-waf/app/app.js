const express = require('express');
const app = express();

app.get('/', (req, res) => {
  const name = req.query.name || "Guest";

  // ❌ Vulnerable to XSS
  res.send(`<h1>Hello ${name}</h1>`);
});

app.listen(3004, () => {
  console.log("App running on port 3004");
});
