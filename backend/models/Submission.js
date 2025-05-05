// Submission model
const mongoose = require('mongoose');

const submissionSchema = new mongoose.Schema({
  formId: String,
  data: Object,
});

module.exports = mongoose.model('Submission', submissionSchema);
