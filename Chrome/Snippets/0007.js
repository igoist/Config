// case 01
function* coffeeMachineGenerator(beans) {
  do {
    yield cookCoffee();
  } while (--beans);

  // 煮咖啡
  function cookCoffee() {
    console.log('cooking');

    return 'Here you are';
  }
}

// 往咖啡机放咖啡豆
let coffeeMachine = coffeeMachineGenerator(10);

// 我想喝咖啡了
coffeeMachine.next();

// 我在3秒后还会喝咖啡
setTimeout(() => {
  coffeeMachine.next();
}, 3 * 1e3);

/**
 * 作者：贾顺名
 * 链接：https://zhuanlan.zhihu.com/p/36895772
 **/
// case 02
function* randomGenerator(...randoms) {
  let len = randoms.length;
  while (true) {
    yield randoms[Math.floor(Math.random() * len)];
  }
}

const randomeGen = randomGenerator(1, 2, 3, 4);

(() => {
  for (let i = 0; i < 10; i++) {
    setTimeout(() => {
      console.log(`${i} - ${randomeGen.next().value}`);
    }, i * 560);
  }
})();


// case 3 斐波那契数
function * fibonacci(seed1, seed2) {
  while (true) {
    yield (() => {
      seed2 = seed2 + seed1;
      seed1 = seed2 - seed1;
      return seed2;
    })();
  }
}

const fib = fibonacci(0, 1);
fib.next();

// case 4 分页控制
async function * loadDataGenerator (url) {
  let page = 1

  while (true) {
    page = (yield await ajax(url, {
      data: page
    })) || ++page
  }
}

// 使用setTimeout模拟异步请求
function ajax (url, { data: page }) {
  return new Promise((resolve) => {
    setTimeout(_ => {
      console.log(`get page: ${page}`);
      resolve()
    }, 1000)
  })
}

let loadData = loadDataGenerator('get-data-url')

(async () => {
  await loadData.next();
  await loadData.next();

  // force load page 1
  await loadData.next(1);
  await loadData.next();
})();