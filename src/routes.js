const express = require('express');
const routres = express.Router();

routres.get('/info', (req, res) => {
  res.json({
    app: 'MERN DevOps Sample',
    version: '1.0.0'
  });
});

module.exports = routres;