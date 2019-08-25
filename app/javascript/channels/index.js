// imports all files in this folder ending in '_channel.js'
const channels = require.context('.', true, /_channel\.js$/);
channels.keys().forEach(channels);
