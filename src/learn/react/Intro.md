# react

## 安装 Node.js

Node.js 是一个基于 Chrome V8 引擎的 JavaScript 运行环境，可以让 JavaScript 运行在服务器端。

下载：https://nodejs.org/zh-cn/download/package-manager

## 使用creact-react-app创建React项目

```bash
npx create-react-app my-app
cd my-app
npm start
```

## 文件目录

```
my-app
├── README.md 
├── node_modules // 依赖包
├── package.json // 项目配置文件
├── .gitignore
├── public
│   ├── favicon.ico
│   ├── index.html
│   └── manifest.json
└── src
    ├── App.css 
    ├── App.js // 入口文件
    ├── App.test.js // 测试文件
    ├── index.css // 全局样式文件
    ├── index.js // 入口文件
    └── logo.svg 
```

## 两个核心库

react： React 核心库，提供react的各个功能

react-dom： 提供一些dom操作方法，比如渲染、更新、删除等

## react项目组件关系:

![react组件关系](./images/react组件关系.png)

