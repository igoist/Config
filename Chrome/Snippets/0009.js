// 通过代码实现将符合下列数据结构的数据渲染成 HTML。例如：

var data = [
  {
    id: 'node1',
    type: 'div',
    className: 'section1',
    children: [
      {
        id: 'node2',
        type: 'div',
        className: 'text',
        children: [
          {
            id: 'node3',
            type: 'span',
            content: '说明文字',
            onClick: () => {
              console.log(123);
            },
          },
          {
            id: 'node4',
            type: 'i',
            className: 'icon-font-example',
          },
        ],
      },
    ],
  },
  {
    id: 'node5',
    type: 'div',
    className: 'section1',
    children: [
      {
        id: 'node6',
        type: 'input',
        className: 'custom-input',
      },
    ],
  },
];

// 你的实现
class Renderer {
  constructor(data) {
    this.data = data;
  }

  recursionRender(item) {
    let tree = document.createElement(item.type);
    tree.id = item.id;
    if (item.className) {
      tree.className = item.className;
    }
    if (item.content) {
      tree.innerText = item.content;
    }
    item.onClick && tree.addEventListener('click', item.onClick);
    if (item.children) {
      for (let i = 0; i < item.children.length; i++) {
        tree.appendChild(this.recursionRender(item.children[i]));
      }
    }
    return tree;
  }

  render() {
    // 返回 HTML
    // console.log(this.data);

    let arr = [];
    for (let i = 0; i < this.data.length; i++) {
      let tmp = this.recursionRender(this.data[i]);
      arr.push(tmp);
    }
    return arr;
  }

  recursionSearch(child, parent, target, flag = true) {
    if (child.id === target) {
      if (parent && flag) {
        parent.children = parent.children.filter((c) => c.id !== target);
      }

      return child;
    } else if (child.children && child.children.length) {
      for (let i = 0; i < child.children.length; i++) {
        let tmp = this.recursionSearch(child.children[i], child, target, flag);
        if (tmp) {
          return tmp;
        }
      }
    }

    return null;
  }

  moveNode(source, target) {
    // 将data中的任意一个节点移动到目标节点下，并重新渲染。source和target分别为被移动节点id和目标节点id
    // 返回重新渲染后的 HTML
    let a;
    for (let i = 0; i < this.data.length; i++) {
      let tmp = this.recursionSearch(this.data[i], this.data, source);
      if (tmp) {
        a = tmp;
      }
    }

    for (let i = 0; i < this.data.length; i++) {
      let tmp = this.recursionSearch(this.data[i], null, target, false);
      if (tmp) {
        if (tmp.children && tmp.children.length) {
          tmp.children.push(a);
        } else {
          tmp.children = [a];
        }
      }
    }
    console.log(this.data);

    return this.render();
  }
}

var r = new Renderer(data);

var y = r.render(); // 输出 HTML
var z = r.moveNode('node2', 'node5'); // 重新输出 HTML

z.map((item) => document.body.appendChild(item));
