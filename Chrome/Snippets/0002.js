// var test = () => {
//   var f = () => {
//     this.a = 1;
//     this.b = '2';

//     let that = this;

//     let fi = () => {
//       this.a = 123;

//       console.log(this.a, this.b);
//     };

//     fi();

//     console.log(this.a);
//   };

//   f();

//   function ff() {
//     this.a = 1;
//     this.b = '2';

//     let that = this;

//     function fi() {
//       this.a = 123;

//       console.log(this.a, this.b);
//     }

//     fi();

//     console.log(this.a);
//   }

//   ff();
// };

// // test();

// let add = (a, b) => {
//   return a + b;
// };

// let add1 = (b) => {
//   return add(1, b);
// };

// add1(2);

// f = () => {
//   let a = 1;

//   function f1() {
//     console.log(a);
//     return 2;
//   }

//   function f2() {
//     console.log(f1());
//     return 3;
//   }

//   return {
//     f3() {
//       console.log(f2());
//     },
//   };
// };

// var { f3 } = f();
// f3();

// var f = () => {
//   console.log(arguments);
//   console.log(typeof arguments);
//   console.log(arguments instanceof Array);
// };

// f(1, '2', { c: 3 });

// var count = 0;
// Object.defineProperty(this, 'i', {
//   get: function () {
//     return count++;
//   },
//   set: function () {},
// });

// function a() {
//   for (let i = 0; i < 5; i++) {
//     (function (i) {
//       this.i = i;
//       setTimeout(() => {
//         console.log(this.i);
//       }, 0);
//     })(i);
//   }
// }
// function a() {
//   for (let i = 0; i < 5; i++) {
//     setTimeout(function () {
//       console.log(i);
//     }, 0);
//     console.log(i);
//   }
// }
// a();

const obj = {
  selector: { to: { toutiao: 'FE coder' } },
  target: [1, 2, { name: 'byted' }],
};

const get = (o, s) => {
  let tmp = s.split('.');
  let t;
  for (let i = 0; i < tmp.length; i++) {
    if (i === 0) {
      t = o[tmp[i]];
    } else {
      t = t[tmp[i]];
    }

    if (t === undefined) {
      return undefined;
    }
  }

  return t;
};

var a = get(obj, 'selector.to.toutiao');
var b = get(obj, 'source.to.toutiao');

console.log(a, b);
