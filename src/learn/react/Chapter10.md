# -ref 和 context 

**ref：** 用于获取真实dom

**1. ref必须在挂载后才能获取，通常在componentDidMount中获取**
**2. ref获取组件，不能获取函数组件**

```jsx
import './App.css';
import React from 'react';
import Son from './Son.js';
let div1 = React.createRef();
let sonCom = React.createRef();
class App extends React.PureComponent {
  state = {
    mes: "父组件"
  }

  componentDidMount() {
    console.log(div1.current);
    console.log(sonCom.current.f1());
  }
  render() {
    return <div className="App">
      <div>
        {this.state.mes}
      </div>

      <Son ref={sonCom}></Son>
    </div>
  } a
}

export default App;   
```

```jsx
import React from 'react';
class Son extends React.Component {
    state = {
        sonMes: "子组件"
    }
    f1() {
        console.log("子组件f1");
    }
    render() {
        return (
            <div> </div>
        );
    }
}
export default Son; 
```

**context：** 用于嵌套很深的爷孙组件之间context共享数据

**1. 子组件使用父组件创建的context对象，不能自己创建**

**App.jsx**

```jsx
import './App.css';
import React from 'react';
import Son from './Son.js';
let sonCom = React.createRef();
export let Context1 = React.createContext();
class App extends React.PureComponent {
  state = {
    mes: "父组件",
    passMes: "pass message"
  }
  render() {
    return <div className="App">
      <div>
        {this.state.mes}
      </div>
      <Context1.Provider value={{ mes1: this.state.passMes, mes2: "pass message 2" }}>
        <Son ref={sonCom}></Son>
      </Context1.Provider>
    </div>
  } a
}

export default App;   
```

**GrandSon.jsx**

```jsx
import React from 'react';
import { Context1 } from './App';
class GrandSon extends React.Component {
    state = {
        grandsonMes: "孙子组件"
    }
    f1() {
        console.log("孙子组件f1");
    }
    render() {
        return (
            <div className='grandSon'>
                {this.state.grandsonMes}
                <Context1.Consumer>
                    {
                        (value) => {
                            return <div>{value.mes1}</div>
                        }
                    }
                </Context1.Consumer>
            </div>
        );
    }
}
export default GrandSon; 
```