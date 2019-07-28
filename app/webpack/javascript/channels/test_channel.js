import consumer from './consumer'

consumer.subscriptions.create('channel', {
  // ...
  // console.log('creating channel');
  received: (data) => {
    document.querySelector('#message').innerHTML = data.message
  }

});
