// PouchDB setup
const PouchDB = require('pouchdb');

const db = new PouchDB('localdb');

module.exports = db;
