# 高阶组件

**逻辑复用：** 如果是UI内推和操作的复用我们会使用组件，但是如果是逻辑复用，比如一个组件需要实现多个功能，我们就需要使用高阶组件。

`TestHoc.js`
```jsx
import React from 'react';
export default function TectHoc(UserCom) {
    return class extends React.Component {
        state = {
            x: 0,
            y: 0
        }

        componentDidMount() {
            window.addEventListener("mousemove", (e) => {
                let x = e.clientX;
                let y = e.clientY;
                this.setState({
                    x: x,
                    y: y
                })
            })
        }

        render() {
            return <>
                < UserCom x={this.state.x} y={this.state.y} {...this.props}></UserCom >
            </>
        }
    }
}
```
Son.js
```jsx
function Son(props) {
    return <div>X: {props.x} Y: {props.y}</div>
}
export default Son; 
```
App.js
```jsx
import TestHoc from "./TestHoc";
import Son from "./Son.js";
let HocSon = TestHoc(Son);
function App() {
  return <div>
    <HocSon></HocSon>
  </div>
}

export default App;
```
这样就可以监看鼠标的位置了。

**什么时候用高阶组件：**

1. 组件既是包含了UI界面的复用，也包含了逻辑的复用
2. 高阶组件：高阶组件只是操作逻辑变化才需要使用