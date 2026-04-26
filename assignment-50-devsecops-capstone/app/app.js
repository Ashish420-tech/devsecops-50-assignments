const express = require("express");
const app = express();

// ❌ Intentional secret (for Gitleaks detection)
const password = "admin123";

// ✅ Health check endpoint (important for DevOps / Kubernetes)
app.get("/health", (req, res) => {
  res.status(200).send("OK");
});

// ✅ Main route
app.get("/", (req, res) => {
  res.send("DevSecOps Capstone Running");
});

// ✅ Dynamic Port (BEST PRACTICE)
const PORT = process.env.PORT || 3005;

app.listen(PORT, () => {
  console.log(`✅ Server running on port ${PORT}`);
});
