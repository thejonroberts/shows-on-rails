import consumer from './consumer';

consumer.subscriptions.create('TestingChannel', {
  connected: () => {
    console.log('connected');
  },
  rejected: () => {
    console.log('rejected');
  },
  disconnected: () => {
    console.log('disconnected');
  },
  received: (data) => {
    console.log(data);
  },
});
