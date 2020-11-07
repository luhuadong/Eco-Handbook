# How to Build



## 准备工作

这里以 Ubuntu 为例（其他 Linux 发行版、MacOS 或 Windows 也行），首先安装 Python3、Git、Make 等基础软件。

```shell
sudo apt install git
sudo apt install make
sudo apt install python3
sudo apt install python3-pip 
```

克隆仓库

```shell
git clone https://gitee.com/luhuadong/green-guide.git
```

进入仓库目录

```shell
cd green-guide
```

创建并启用虚拟环境

```shell
python3 -m venv venv
source venv/bin/activate
```

安装最新版本的 Sphinx 及依赖

```shell
pip install -U Sphinx
```

为了完成本示例，还需要安装以下软件包

```shell
pip install sphinx-autobuild
```

安装完成后，系统会增加一些 sphinx- 开头的命令

```shell
sphinx-apidoc    sphinx-autobuild    sphinx-autogen    sphinx-build    sphinx-quickstart
```

安装 Markdown 支持

```shell
pip install recommonmark
pip install sphinx_markdown_tables
```

安装主题

```shell
pip install sphinx_rtd_theme
pip install sphinx_hand_theme
pip install sphinx-material
pip install sphinx_materialdesign_theme
```

其他软件包

```shell
pip install sphinxemoji
```



## 本地运行

在项目根目录（看到 Makefile 的那个文件夹），执行如下命令构建 html 文档

```shell
make html
```

生成的 HTML 文档保存在 build/html 目录，可以启动 Web 服务进行本地预览

```shell
sphinx-autobuild source build/html/
```

可以看到如下提示

```shell
Serving on http://127.0.0.1:8000
```

在浏览器输入 `http://127.0.0.1:8000` 即可预览。