const express = require("express");

const app = express();

app.use(express.json());

app.get("/", (req, res) => {
  res.send("BandCollabo API running");
});

app.get("/projects", (req, res) => {
  res.json({
    message: "Projects endpoint working"
  });
});

app.listen(3000, () => {
  console.log("Server running on port 3000");
});
