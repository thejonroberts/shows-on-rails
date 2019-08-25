if (navigator.serviceWorker) {
  navigator.serviceWorker.register('/serviceworker.js', { scope: './' })
    .then(function(_reg) {
      console.log('[Companion]', 'Service worker registered!');
    })
    .catch(e => console.error(e));
}
