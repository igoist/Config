let aO = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      // resolve(123);

      reject('fake news!!!!!!');
    }, 2500);
  })
    .then((r) => {
      console.log('r: ', r);
      return r + 2;
    })
    .catch((e) => {
      console.log('e: ', e);
      return e;
    });
};

let bO = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve(123);
    }, 500);
  });
};

(async () => {
  let r = await aO();

  console.log(r);
})();

const a1 = () => {
  return new Promise((resolve) => {
    setTimeout(() => {
      console.log('aaaaaaaa');

      resolve('a');
    }, 3000);
  });
};

const b1 = () => {
  return new Promise((resolve) => {
    setTimeout(() => {
      console.log('bbbbbbb');

      resolve('b');
    }, 2500);
  });
};

const a = async () => {
  let r = await a1();
  console.log(r);

  return r;
};
const b = async () => {
  let r = await b1();
  console.log(r);

  return r;
};

(async () => {
  await a();
  await b();
  console.log('cccccccccc');
})();
