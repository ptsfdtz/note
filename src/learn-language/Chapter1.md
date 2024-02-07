# markdown

Markdown是一种可以使用普通文本编辑器编写的标记语言，通过简单的标记语法，它可以使普通文本内容具有一定的格式。

1. 编辑器的使用

`vscode`或者`typora`

[typora](https://typora.io/)付费的markdown专用编辑器

2. 插件安装

```sh
Markdown shortcuts
Auto-Open Markdown Preview
Markdown All in One
```
## markdown常用语法

1. 标题

使用 # 号可表示 1-6 级标题
```markdown 
# 一级标题

## 二级标题

### 三级标题
...
```
2. 段落
- 字体
```markdown
*斜体文字*

**粗体文字**

***粗斜体文字***
```

- 分割线

```markdown
------
```

----------

- 删除线
```markdown
~~Delete~~
```
~~Delete~~

- 下划线
```markdown
<u>text</u>
```
<u>text</u>

- 脚注
```markdown
[^text]：
```
[^text]：脚注

3. 列表

- 无序列表

```markdown
- 第一项
- 第二项
- 第三项
```

- 有序列表

```markdown
1. 第一项
2. 第二项
3. 第三项
```
- 列表嵌套

```markdown
1. 第一项：
    - 第一项嵌套的第一个元素
    - 第一项嵌套的第二个元素
```

4. 代码框

```markdown
```python
print('Markdown')
    def test():
        print('Markdown test!')
```
```javascript
$(document).read(function(){
    alert('Markdown');
});
```

5. 链接
```markdown
[链接名称](链接地址)
```
- 高级链接
```markdown
[Markdown][markdown]
[markdown]: http://www.markdown.com
```
6. 图片
```markdown
![alt 属性文本](图片地址)
![alt 属性文本](图片地址 "可选标题")
```

7. 表格
```markdown
| 表头   | 表头   |
| ------ | ------ |
| 单元格 | 单元格 |
| 单元格 | 单元格 |
```
| 表头   | 表头   |
| ------ | ------ |
| 单元格 | 单元格 |
| 单元格 | 单元格 |