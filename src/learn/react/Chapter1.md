# 组件分类

组件化开发，定义一个基本组件得有东西

1. 组件html模板

2. 数据和方法

## 组件类型

**1. 函数组件**

```jsx
function HelloWorld() { // 新版本的组合是api
    return <h1>Hello World</h1>;
}
```
**2. 类组件**

```jsx
class Hello extends React.Component { // 老版本的组合是createClass
    render() {
        return <div>Hello World</div>;
    }
}
```

**example:**

```jsx
import './App.css';
import React from 'react';

function App() {
  function HelloWorld() {
    return <div>Hello World</div>;
  }
  class ClassHello extends React.Component {
    render() {
      return <div>Hello World</div>;
    }
  }

  return (
    <div className="App">
      <HelloWorld />
      <ClassHello />
    </div>
  );
}

export default App;
```