fileName = 'c.json';

x = app.page.pins;

x = JSON.stringify(x, null, 2);

var blob = new Blob([x], { type: 'text/json' }),
  e = document.createEvent('MouseEvents'),
  a = document.createElement('a');

a.download = fileName;

a.href = window.URL.createObjectURL(blob);

a.dataset.downloadurl = ['text/json', a.download, a.href].join(':');

e.initMouseEvent('click', true, false, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null);

a.dispatchEvent(e);
