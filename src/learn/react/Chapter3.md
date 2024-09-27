# 事件绑定

React 组件的事件绑定与 DOM 元素的事件绑定有些不同。

在 React 中，事件绑定是通过 JSX 语法来实现的。

```jsx
import './App.css';
import React from 'react';

class App extends React.Component {
  render() {
    return <div className="App" >
      <div onClick={() => {
        console.log("clicked");
      }}>button</div>
    </div>;
  }
}

export default App;
```

在 JSX 中，事件绑定通过 `on` 开头的属性来实现。

如上例，`onClick` 事件绑定到 `<div>` 元素上，当该元素被点击时，会执行 `console.log("clicked")` 方法。

## this 绑定

改变this指向的方法:
 1. 给方法调用bind规定this指向
 2. 使用一个匿名箭头函数
 3. 方法本身写为箭头函数

通过箭头函数来绑定事件时，`this` 关键字会指向组件实例，而不是 DOM 元素。

```jsx
import './App.css';
import React from 'react';

class App extends React.Component {
  f1() {
    console.log(this);
  }
  render() {
    return <div className="App" >
      <div onClick={() => {
        console.log(this);
      }}>button</div>
    </div>;
  }
}

export default App;
```

## 事件绑定其他操作

1. 传递参数
2. 阻止默认行为
   
```jsx
class App extends React.Component {
  f1 = (a, b) => {
    console.log(a + b);
  }
  render() {
    return <div className="App" >
      <div onClick={this.f1.bind(this, 1, 2)}>button</div>
    </div>;
  }
}
```
