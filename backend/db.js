// Database connection
const mongoose = require('mongoose');

mongoose.connect('mongodb://localhost:27017/formapp', {
  useNewUrlParser: true,
  useUnifiedTopology: true,
});

module.exports = mongoose;
