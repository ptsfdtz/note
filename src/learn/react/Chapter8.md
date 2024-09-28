# 样式设置

## class 和 style

**class**

1. 必须写为className
2. 类名和样式写在css文件里
3. 必须接受一个字符串

**style**
1. 不能像原生一样写成字符串，必须写成对象

```jsx
<div className='father' style={
          {
            color: 'white'
            , backgroundColor: 'blue'
          }}>father
</div>
```

**1. 如何做到组件专用CSS**

新建一个`.module.css`文件，然后在组件里导入，然后在style里用className来引用。

```jsx
import React from 'react';
import sonStyle from './Son.module.css';
class Son extends React.Component {
    state = {
        sonMes: 'Hello'
    }
    render() {
        return <div>
            <div className={sonStyle.son + " " + sonStyle.son1}>son</div>
        </div>
    }
}

export default Son;
```
```css
.son {
    background-color: pink;
}

.son1 {
    color: blue
}
``` 
**2. 如何更舒服的控制类名的添加和减少**

普通的方式，不借助第三方库

```jsx
class Son extends React.Component {
    state = {
        sonMes: 'Hello',
        hasSon1: true,
    }
    render() {
        return <div>
            <div className={"son" + (this.state.hasSon1 ? " son1" : "")}>son</div>
            <button onClick={() => { this.setState({ hasSon1: true }) }}>添加</button>
            <button onClick={() => { this.setState({ hasSon1: false }) }}>移除</button>
        </div>
    }
}
```
使用classnames库，可以更方便的控制类名的添加和减少

```jsx
import React from 'react';
import classNames from 'classnames';
import './Son.css';
class Son extends React.Component {
    state = {
        hasSon1: true,
    }
    render() {
        return <div>
            <div className={classNames({ son: true, son1: this.state.hasSon1 })}>son1</div>
            <button onClick={() => { this.setState({ hasSon1: true }) }}>添加</button>
            <button onClick={() => { this.setState({ hasSon1: false }) }}>移除</button>
        </div>
    }
}

export default Son;
```

如果要配合使用模块化，要引入classnames的bind文件夹，然后在组件里绑定一下

```jsx
import React from 'react';
import classNames from 'classnames/bind';
import sonStyle from './son.module.css';
let bindClassnames = classNames.bind(sonStyle);
class Son extends React.Component {
    state = {
        hasSon1: true,
    }
    render() {
        return <div>
            <div className={bindClassnames({ son: true, son1: this.state.hasSon1 })}>son1</div>
            <button onClick={() => { this.setState({ hasSon1: true }) }}>添加</button>
            <button onClick={() => { this.setState({ hasSon1: false }) }}>移除</button>
        </div>
    }
}

export default Son;
```