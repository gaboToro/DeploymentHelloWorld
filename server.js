const express = require('express');
const app = express();
// Use the PORT environment variable, or 3000 by default for local tests
const port = process.env.PORT || 3000; 

app.get('/', (req, res) => {
  res.send('<h1>Hello World!</h1><p>Successfully deployed to the cloud with Docker.</p>');
});

app.listen(port, () => {
  console.log(`Application running on port: ${port}`);
});