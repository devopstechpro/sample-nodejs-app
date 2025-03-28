const express = require('express');
const app = express();
const port = process.env.PORT || 8080;

app.get('/', (req, res) => {
  const environmentVariables = Object.entries(process.env)
    .map(([key, value]) => `${key}: ${value}`)
    .join('\n');

  res.send(`
    <h1>Environment Variables</h1>
    <pre>${environmentVariables}</pre>
  `);
});

app.listen(port, () => {
  console.log(`Environment variable app listening on port ${port}`);
  console.log('Environment variables:');
  console.log(process.env);
});
