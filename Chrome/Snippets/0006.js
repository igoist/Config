/**
 * [带你彻底弄懂Event Loop](https://segmentfault.com/a/1190000016278115)
 */

const case1 = () => {
  /**
   * d1 d2 case:
   *   [0, 0] - 1 4 7 5 2 3 6
   *  [10, 9] - 1 4 7 5 6 2 3
   * [10, 10] - 1 4 7 5 2 3 6
   */

  const d1 = 0;
  const d2 = 0;

  console.log(1);

  setTimeout(() => {
    console.log(2);

    Promise.resolve().then(() => {
      console.log(3);
    });
  }, d1);

  new Promise((resolve, reject) => {
    console.log(4);
    resolve(5);
  }).then((data) => {
    console.log(data);
  });

  setTimeout(() => {
    console.log(6);
  }, d2);

  console.log(7);
};

// 1 4 10 5 6 7 2 3 9 8
const case2 = () => {
  console.log(1);

  setTimeout(() => {
    console.log(2);
    Promise.resolve().then(() => {
      console.log(3);
    });
  });

  new Promise((resolve, reject) => {
    console.log(4);
    resolve(5);
  }).then((data) => {
    console.log(data);

    Promise.resolve()
      .then(() => {
        console.log(6);
      })
      .then(() => {
        console.log(7);

        setTimeout(() => {
          console.log(8);
        }, 0);
      });
  });

  setTimeout(() => {
    console.log(9);
  });

  console.log(10);
};

// case1();
case2();
