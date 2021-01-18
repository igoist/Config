const ff = () => {
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve({
        mode: 2,
        data: 'xxxxxxxxxxxff',
      });
    }, 1000);
  });
};

const handleLocked = (l) => {
  console.log('new l: ', l);
  locked = l;
};

const handleSwitch = (mode) => {
  handleLocked(true);

  return new Promise(async (resolve) => {
    console.log('mode: ', mode);
    let r;
    switch (mode) {
      case 0:
        r = {
          mode,
        };
        console.log('0000000000');
        break;
      case 1:
        r = {
          mode,
        };
        console.log('11111111111');
        break;
      case 2:
        r = await ff();
        console.log('xxxxxxxxx: ', r);
        break;
      default:
        r = {
          mode,
        };
        console.log('ddddddddd');
        break;
    }

    handleLocked(false);
    resolve(r);
  });
};

(() => {
  for (let i = 0; i < 5; i++) {
    setTimeout(async () => {
      let r = await handleSwitch(i);
      console.log(r);
    }, i * 2000);
  }
})();
