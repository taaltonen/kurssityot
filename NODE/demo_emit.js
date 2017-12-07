var events = require('events');
var eventEmitter = new events.EventEmitter();

//Luo tapahtumankäsittelijä:
var myEventHandler = function () {
console.log('Kuulen huutoa!');
}

//Liitä tapahtumankäsittelijä tapahtumaan:
eventEmitter.on('scream', myEventHandler);

//Toteuta tapahtuma 'scream':
eventEmitter.emit('scream');