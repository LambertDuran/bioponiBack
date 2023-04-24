const app = require("./index");

const PORT = process.env.PORT || 3000;
const server = app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}...`);
});

module.exports = server;
