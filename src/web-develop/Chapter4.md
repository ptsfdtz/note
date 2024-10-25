# HEXO

### 安装

```sh 
npm install -g hexo-cli
hexo init <folder>
cd <folder>
npm install
```

### 目录结构
```
.
├── _config.yml
├── package.json
├── scaffolds
├── source
|   ├── _drafts
|   └── _posts
└── themes
```

### themes

1. Redefine

[Redefine-docs](https://redefine-docs.ohevan.com/introduction)

### github pages

在`.github/workflows`目录下创建`pages.yml`文件，内容如下：

```yaml
name: pages

on:
  push:
    branches:
      - main
  pull_request:
  workflow_dispatch:

jobs:
  pages:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      - uses: actions/setup-node@v3
        with:
          node-version: 18

      - uses: actions/cache@v3
        with:
          path: "**/node_modules"
          key: ${{ runner.OS }}-npm-cache-${{ hashFiles('**/package-lock.json') }}
          restore-keys: ${{ runner.OS }}-npm-cache-

      - run: npm install
      - run: npm run build

      - name: Deploy to github pages
        uses: crazy-max/ghaction-github-pages@v3.1.0
        with:
          target_branch: gh-pages
          build_dir: public
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```