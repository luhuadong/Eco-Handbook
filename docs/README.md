# Sphinx 构建说明





## SEO 优化

### 生成网站地图（sitemap）

[https://techwriter.documatt.com/2020/sphinx-sitemap.html](https://techwriter.documatt.com/2020/sphinx-sitemap.html)



### 生成 robot.txt





## sphinx-material 主题

- <https://pypi.org/project/sphinx-material/>
- <https://github.com/bashtage/sphinx-material>

### 主题颜色

In case someone else finds this issue, the available options are documented here: https://bashtage.github.io/sphinx-material/customization.html#configuration-options

color_primary

- Primary colo. Options are red, pink, purple, deep-purple, indigo, blue, light-blue, cyan, teal, green, light-green, lime, yellow, amber, orange, deep-orange, brown, grey, blue-grey, and white.

color_accent

- Accent color. Options are red, pink, purple, deep-purple, indigo, blue, light-blue, cyan, teal, green, light-green, lime, yellow, amber, orange, and deep-orange.



## 其他

### 外部链接从空白页打开

参考：<https://stackoverflow.com/questions/11716781/open-a-link-in-a-new-window-in-restructuredtext>

添加一个 custom.js 脚本，这样就不用修改 theme 的文件

```js
$(document).ready(function () {
    $('a.external').attr('target', '_blank');
});
```

