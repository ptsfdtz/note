# 表单绑定

React 中很多思路都是按原生的操作去做的，表单绑定也是一样的。

原生表单获取表单输入值，我们可以通过监听input，change等事件，然后获取e.target.value

如果想要设置表单的值，通常设置value属性即可，如果是选择框则是checked属性。

**输入框绑定**
```jsx
class App extends React.PureComponent {
  state = {
    inputValue: ''
  }

  render() {
    return <div className="App">
      {this.state.inputValue}
      <input value={this.state.inputValue} onInput={(e) => {
        this.setState({ inputValue: e.target.value });
      }} />
    </div>
  }
}
```

**选择框绑定**
```jsx
class App extends React.PureComponent {
  state = {
    checkedArr: ["first"]
  }

  handleCheck = (e) => {
    let arr = [...this.state.checkedArr]
    if (e.target.checked) {
      arr.push(e.target.value)
    } else {
      arr.splice(arr.indexOf(e.target.value), 1)
    }
    this.setState({ checkedArr: arr })
  }

  render() {
    return <div className="App">
      {this.state.checkedArr}
      <input checked={this.state.checkedArr.indexOf("first") !== -1} onChange={this.handleCheck} value="first" type="checkbox" name="choose" />选项1
      <input checked={this.state.checkedArr.indexOf("second") !== -1} onChange={this.handleCheck} value="second" type="checkbox" name="choose" />选项2
      <input checked={this.state.checkedArr.indexOf("third") !== -1} onChange={this.handleCheck} value="thrid" type="checkbox" name="choose" />选项3
    </div>
  }
}
```

其他原生表单元素的绑定，比如textarea，radio，select等，都是类似的。