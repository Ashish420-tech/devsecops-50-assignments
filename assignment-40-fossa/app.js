const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("FOSSA Scan Demo App 🚀");
});

app.listen(3000, () => {
  console.log("Server running on port 3000");
});
