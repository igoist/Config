async function abc() {
  let r = await new Promise(resolve => {
    setTimeout(() => {
      resolve('xxx');
    }, 1500);
  });
  console.log(r);
}

abc();
