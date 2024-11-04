# Next.js 基础知识

### 1. 创建Next.js项目

**创建项目**
```sh
npx create-next-app@latest
```

**运行项目**
```sh
npm run dev
```

!如果控制台出现警告，是因为有些浏览器插件在节点注入了属性，导致Next.js无法正常运行。可以尝试禁用插件。

或者在layout.js文件中添加(尽量不要这样做)
```jsx
<html lang='en' suppressHydrationWarning={true}>
```  

**编译项目**
```sh
npm run build
```
