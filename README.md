# 🐱 Catache - Emotional Pet Raising Game

<div align="center">
  <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white" alt="HTML5">
  <img src="https://img.shields.io/badge/TailwindCSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white" alt="TailwindCSS">
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" alt="JavaScript">
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart">
</div>

## 📖 项目简介

**Catache** 是一款基于 MBTI 人格类型的情感宠物养成游戏。玩家可以选择不同性格的猫咪角色，在各种环境中与它们互动，体验独特的养成乐趣。每只猫咪都有着基于 16 种 MBTI 人格类型的独特性格特征和行为模式。

### ✨ 核心特色

- 🎭 **16种MBTI猫咪角色** - 每只猫咪都有独特的性格和特征
- 🏠 **多样化环境** - 室内、社交等不同场景
- 🎨 **精美UI设计** - 现代化的用户界面和流畅的动画效果
- 💝 **情感互动系统** - 与猫咪建立深度情感连接
- 📱 **响应式设计** - 支持各种设备和屏幕尺寸

## 🛠️ 技术栈

### 前端技术
- **HTML5** - 页面结构和语义化标记
- **TailwindCSS 3.3.3** - 现代化CSS框架，实现响应式设计
- **JavaScript (ES6+)** - 交互逻辑和动态效果
- **Font Awesome 6.7.2** - 图标库
- **Google Fonts (Nunito)** - 优雅的字体设计

### 开发工具
- **Dart** - 图像处理和颜色提取工具
- **Image Package** - Dart图像处理库
- **Git** - 版本控制

### 设计特性
- **Glassmorphism** - 玻璃拟态设计风格
- **CSS动画** - 流畅的悬停和过渡效果
- **响应式布局** - 适配移动端和桌面端

## 🎮 游戏功能

### 🐾 MBTI猫咪角色系统
游戏包含完整的16种MBTI人格类型猫咪：

**分析师类型 (NT)**
- 🧠 **INTJ** - 建筑师猫咪：独立思考，战略规划
- 🔬 **INTP** - 思想家猫咪：好奇探索，逻辑分析  
- 👑 **ENTJ** - 指挥官猫咪：天生领导，目标导向
- 💡 **ENTP** - 辩论家猫咪：创新思维，善于辩论

**外交官类型 (NF)**
- 🌟 **INFJ** - 提倡者猫咪：理想主义，富有洞察力
- 🎨 **INFP** - 调停者猫咪：创意无限，价值驱动
- 🤝 **ENFJ** - 主人公猫咪：善于激励，关怀他人
- 🎪 **ENFP** - 竞选者猫咪：热情洋溢，充满活力

**守护者类型 (SJ)**
- 📋 **ISTJ** - 物流师猫咪：可靠稳重，注重细节
- 🛡️ **ISFJ** - 守护者猫咪：温暖贴心，乐于助人
- 📊 **ESTJ** - 总经理猫咪：高效执行，组织能力强
- 💖 **ESFJ** - 执政官猫咪：社交达人，关注和谐

**探险家类型 (SP)**
- 🔧 **ISTP** - 鉴赏家猫咪：实用主义，动手能力强
- 🎭 **ISFP** - 探险家猫咪：艺术天赋，追求自由
- 🏃 **ESTP** - 企业家猫咪：行动派，适应力强
- 🎉 **ESFP** - 表演者猫咪：活泼开朗，享受当下

### 🏡 环境系统
- **室内环境** - 温馨的家庭场景
- **社交环境** - 与其他猫咪互动的空间
- **更多环境** - 持续扩展中...

### 🎨 视觉特效
- **动态背景色彩** - 根据猫咪图像自动提取主色调
- **悬停动画** - 流畅的卡片悬停效果
- **响应式交互** - 触摸友好的移动端体验

## 🚀 快速开始

### 环境要求
- 现代化浏览器 (Chrome, Firefox, Safari, Edge)
- 本地Web服务器 (可选，用于开发)

### 安装运行

1. **克隆项目**
```bash
git clone <repository-url>
cd catache
```

2. **直接运行**
```bash
# 方式1: 直接在浏览器中打开
open index.html

# 方式2: 使用Python启动本地服务器
python3 -m http.server 8000

# 方式3: 使用Node.js serve
npx serve .
```

3. **访问游戏**
打开浏览器访问 `http://localhost:8000` 或直接打开 `index.html`

### 开发工具使用

如需使用颜色提取工具：

1. **安装Dart SDK**
```bash
# macOS
brew install dart

# 或从官网下载: https://dart.dev/get-dart
```

2. **安装依赖**
```bash
dart pub add image path
```

3. **运行颜色提取工具**
```bash
dart run extract_bakgr_colors.dart
```

## 📁 项目结构

```
catache/
├── index.html              # 主页面文件
├── extract_bakgr_colors.dart # 颜色提取工具
├── img/                    # 图像资源
│   ├── cats/              # MBTI猫咪角色图片
│   │   ├── INTJ.png
│   │   ├── INTP.png
│   │   └── ...            # 其他15种MBTI类型
│   ├── Indoors.png        # 室内环境
│   ├── Socialize.png      # 社交环境
│   └── Story/             # 故事相关图片
└── README.md              # 项目说明文档
```

## 🎨 设计理念

### 色彩系统
- 每种MBTI类型都有独特的主题色彩
- 使用Dart工具自动提取图像主色调
- 实现动态背景色彩适配

### 用户体验
- **直观导航** - 清晰的页面结构和导航
- **流畅动画** - 精心设计的过渡效果
- **响应式设计** - 完美适配各种设备
- **无障碍访问** - 语义化HTML和键盘导航支持

## 🔧 自定义开发

### 添加新的猫咪角色
1. 在 `img/cats/` 目录添加新的角色图片
2. 在 `index.html` 中添加对应的HTML结构
3. 使用 `extract_bakgr_colors.dart` 提取新图片的主色调
4. 更新JavaScript中的颜色映射

### 修改样式
- 主要样式使用TailwindCSS类名
- 自定义样式在 `<style>` 标签中定义
- 支持CSS变量和动画自定义

## 📱 浏览器兼容性

| 浏览器 | 版本要求 | 支持状态 |
|--------|----------|----------|
| Chrome | 60+ | ✅ 完全支持 |
| Firefox | 60+ | ✅ 完全支持 |
| Safari | 12+ | ✅ 完全支持 |
| Edge | 79+ | ✅ 完全支持 |

## 🤝 贡献指南

欢迎为Catache项目贡献代码！

1. Fork 本项目
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启 Pull Request

## 📄 开源协议

本项目采用 MIT 协议 - 查看 [LICENSE](LICENSE) 文件了解详情

## 🙏 致谢

- [TailwindCSS](https://tailwindcss.com/) - 优秀的CSS框架
- [Font Awesome](https://fontawesome.com/) - 丰富的图标库
- [Google Fonts](https://fonts.google.com/) - 美观的字体
- [Dart Image Package](https://pub.dev/packages/image) - 强大的图像处理库

---

<div align="center">
  <p>🐱 用爱养成每一只独特的MBTI猫咪 🐱</p>
  <p>Made with ❤️ for cat lovers and MBTI enthusiasts</p>
</div>
