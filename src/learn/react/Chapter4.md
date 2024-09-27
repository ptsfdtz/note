# 响应式数据

jsx 语法中，可以直接绑定数据，这样当数据发生变化时，组件会自动重新渲染。

```jsx
class App extends React.Component {
  state = {
    a: 1,
  }
  render() {
    return <div className="App">
      {this.state.a}
    </div>
  }
}
```

这样，当 `this.state.a` 发生变化时，组件会自动重新渲染。

但是，如果 `this.state.a` 是一个对象，那么当对象中的某个属性发生变化时，组件不会自动重新渲染。

我们需要使用 `setState` 方法来更新状态，并且传入一个函数作为参数，函数接收当前状态作为参数，返回新的状态。

```jsx
class App extends React.Component {
  state = {
    a: 1,
  }

  addA = () => {
    this.setState({
      a: this.state.a + 1
    })
  }

  render() {
    return <div className="App">
      {this.state.a}
      <button onClick={this.addA}>Add A</button>
    </div>
  }
}
```

这样，当 `this.state.a` 发生变化时，组件会自动重新渲染。

![setState流程图解](./images/setStade工作流程图解.png)

调用setState方法才会触发更新，修改state不会触发刷新。

setState方法是异步的，要获取修改后的值，需要通过回调函数。

```jsx
this.setState({
  a: this.state.a + 1
}, () => {
  console.log(this.state.a)//这样，在setState方法执行完毕后，才会执行回调函数，并获取修改后的值。
})
```

## PureComponent

PureComponent 是一个高阶组件，它会对 props 和 state 进行浅比较，只有当 props 和 state 发生变化时才会重新渲染。

```jsx
class App extends PureComponent {
  state = {
    a: 1,
  }

  addA = () => {
    this.setState({
      a: this.state.a + 1
    })
  }

  render() {
    return <div className="App">
      {this.state.a}
      <button onClick={this.addA}>Add A</button>
    </div>
  }
}
```

