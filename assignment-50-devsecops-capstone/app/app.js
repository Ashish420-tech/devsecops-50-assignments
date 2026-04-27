const express = require("express");
const app = express();

const PORT = process.env.PORT || 3005;

app.get("/", (req, res) => {
  res.send("DevSecOps Capstone Running 🚀");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
