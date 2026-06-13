const express = require('express');
const routres = express.Router();

routres.get('/info', (req, res) => {
  res.json({
    app: 'MERN DevOps Sample',
    version: '1.0.0'
  });
});

routres.get('/data', (req, res) => {
  res.json({
    name: 'Mern pipeline',
    description: 'Mern pipeline for devops',
    version: '1.1.0'
  });
});

module.exports = routres;