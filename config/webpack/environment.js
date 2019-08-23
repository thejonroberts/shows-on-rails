const erb =  require('./loaders/erb');
const { environment } = require('@rails/webpacker')

environment.loaders.prepend('erb', erb)
module.exports = environment
