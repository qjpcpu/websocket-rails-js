(function() {
  var WebSocketRails;

  WebSocketRails = require('./websocket_rails');

  WebSocketRails = require('./event');

  WebSocketRails = require('./abstract_connection');

  WebSocketRails = require('./http_connection');

  WebSocketRails = require('./websocket_connection');

  WebSocketRails = require('./channel');

  global.WebSocketRails = module.exports = WebSocketRails;

}).call(this);