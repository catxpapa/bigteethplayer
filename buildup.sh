#!/bin/bash

# BigTeethPlayer 项目结构创建脚本
# 用于快速搭建懒猫微服音乐播放器应用的目录结构

echo "开始创建 BigTeethPlayer 项目结构..."

# 创建项目根目录
mkdir -p bigteethplayer

# 进入项目目录
cd bigteethplayer

# 创建主要目录结构
mkdir -p public/css/themes
mkdir -p public/js
mkdir -p public/assets/themes/default
mkdir -p public/assets/themes/cat
mkdir -p public/assets/themes/party
mkdir -p public/assets/icons
mkdir -p user-data/themes
mkdir -p user-data/uploads

echo "目录结构创建完成，开始创建文件..."

# 创建懒猫微服配置文件
cat > lzc-manifest.yml << 'EOF'
# 懒猫微服应用配置文件
# BigTeethPlayer - 音乐播放器应用
EOF

# 创建构建配置文件
cat > lzc-build.yml << 'EOF'
# 懒猫微服构建配置文件
# 控制lpk文件打包和预处理流程
EOF

# 创建package.json
cat > package.json << 'EOF'
{
  "name": "bigteethplayer",
  "version": "1.0.0",
  "description": "懒猫微服音乐播放器应用",
  "main": "server.js",
  "scripts": {
    "start": "node server.js"
  },
  "dependencies": {},
  "author": "",
  "license": "MIT"
}
EOF

# 创建Node.js后端服务文件
cat > server.js << 'EOF'
// BigTeethPlayer Node.js后端服务
// 提供音乐播放器的后端API服务
EOF

# 创建前端HTML文件
cat > public/index.html << 'EOF'
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BigTeethPlayer - 音乐播放器</title>
</head>
<body>
    <!-- BigTeethPlayer 主页面 -->
</body>
</html>
EOF

# 创建CSS文件
cat > public/css/main.css << 'EOF'
/* BigTeethPlayer 主样式文件 */
/* 音乐播放器的基础样式定义 */
EOF

# 创建主题样式文件
touch public/css/themes/default.css
touch public/css/themes/cat.css
touch public/css/themes/party.css

# 为主题CSS文件添加注释
echo "/* 默认主题样式 */" > public/css/themes/default.css
echo "/* 猫咪主题样式 */" > public/css/themes/cat.css
echo "/* 派对主题样式 */" > public/css/themes/party.css

# 创建JavaScript文件
cat > public/js/app.js << 'EOF'
// BigTeethPlayer 主应用脚本
// 音乐播放器的核心逻辑控制
EOF

cat > public/js/player.js << 'EOF'
// 音乐播放器核心功能模块
// 处理音频播放、暂停、进度控制等功能
EOF

cat > public/js/theme-manager.js << 'EOF'
// 主题管理器模块
// 处理皮肤切换和主题相关功能
EOF

# 创建主题素材目录的占位文件
touch public/assets/themes/default/.gitkeep
touch public/assets/themes/cat/.gitkeep
touch public/assets/themes/party/.gitkeep
touch public/assets/icons/.gitkeep

# 创建用户数据文件
cat > user-data/settings.json << 'EOF'
{
  "comment": "用户设置配置文件",
  "theme": "default",
  "volume": 0.8,
  "autoplay": false
}
EOF

# 创建用户目录的占位文件
touch user-data/themes/.gitkeep
touch user-data/uploads/.gitkeep

# 创建README文件
cat > README.md << 'EOF'
# BigTeethPlayer

基于懒猫微服的音乐播放器应用

## 项目结构

- `lzc-manifest.yml` - 懒猫微服配置
- `lzc-build.yml` - 构建配置
- `server.js` - Node.js后端服务
- `public/` - 前端静态资源
- `user-data/` - 用户设置存储

## 开发指南

1. 使用 `lzc dev` 启动开发环境
2. 访问 DevShell 进行实时调试
3. 使用 `lzc build` 打包应用

## 功能特性

- 多主题皮肤支持
- 用户自定义设置
- 音乐播放控制
- 文件上传管理
EOF

echo "✅ BigTeethPlayer 项目结构创建完成！"
echo ""
echo "项目目录结构："
echo "bigteethplayer/"
echo "├── lzc-manifest.yml          # 懒猫微服配置"
echo "├── lzc-build.yml            # 构建配置"
echo "├── package.json             # Node.js项目配置"
echo "├── server.js                # Node.js后端服务"
echo "├── public/                  # 前端静态资源"
echo "│   ├── index.html"
echo "│   ├── css/"
echo "│   │   ├── main.css"
echo "│   │   └── themes/          # 皮肤样式"
echo "│   ├── js/"
echo "│   │   ├── app.js"
echo "│   │   ├── player.js"
echo "│   │   └── theme-manager.js"
echo "│   └── assets/"
echo "│       ├── themes/          # 皮肤素材"
echo "│       └── icons/           # 控制按钮图标"
echo "├── user-data/               # 用户设置存储目录"
echo "│   ├── settings.json"
echo "│   ├── themes/             # 用户自定义皮肤"
echo "│   └── uploads/            # 用户上传文件"
echo "└── README.md"
echo ""
ech