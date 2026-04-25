const express = require('express');
const app = express();

app.get('/', (req, res) => {
    const userInput = req.query.name;
    res.send("Hello " + userInput); // Vulnerable to XSS
});

app.listen(3000, () => {
    console.log("App running on port 3000");
});
