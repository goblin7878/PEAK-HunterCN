# HunterCN — 猎人模组配置菜单汉化

<img src="icon.png" width="128" alt="icon">

将 **PEAK Hunter** 模组的游戏内配置菜单汉化为简体中文，方便中文玩家直接阅读和调整各项设置，无需再借助翻译软件。

> 本模组基于原版 [PEAK-Hunter](https://github.com/BloopTankStudios/PEAK-Hunter) 1.2.1 制作。

## 功能

- 汉化 Hunter 模组的游戏内配置菜单
- 保留原版全部功能与默认配置
- 支持 r2modman / Thunderstore Mod Manager 安装

## 安装

### 方式一：模组管理器（推荐）

1. 安装 [r2modman](https://r2modman.com/) 或 Thunderstore Mod Manager，并选择 **PEAK** 作为游戏。
2. 安装依赖 **BepInExPack_PEAK**（版本 5.4.75301）。
3. 如果本模组已发布到 Thunderstore，直接搜索安装；否则在管理器中用“从本地文件安装”（Install from file）选择本仓库 Release 中的 zip 包。

### 方式二：手动安装

1. 为 PEAK 安装 BepInEx 5.4.75301（推荐使用 [BepInExPack_PEAK](https://thunderstore.io/c/peak/p/BepInEx/BepInExPack_PEAK/)）。
2. 解压本模组压缩包。
3. 将 `plugins/` 目录下的 `com.github.BloopTankStudios.PEAK-Hunter.dll` 和 `assets/` 文件夹复制到游戏目录的 `BepInEx/plugins/` 中。

   最终结构：

   ```text
   PEAK/
   └── BepInEx/
       └── plugins/
           ├── com.github.BloopTankStudios.PEAK-Hunter.dll
           └── assets/
               ├── assets
               └── peak-hunter
   ```

4. 启动游戏。

## 重要说明

本汉化包为**整合包**：内置了原版 Hunter 模组的 DLL 与汉化后的资源文件，插件 GUID 与原版相同（`com.github.BloopTankStudios.PEAK-Hunter`）。

**请勿与原版 Hunter 模组同时安装**，否则可能出现插件重复加载或配置冲突。

## 依赖

- [BepInExPack_PEAK](https://thunderstore.io/c/peak/p/BepInEx/BepInExPack_PEAK/) 5.4.75301

## 更新日志

见 [CHANGELOG.md](CHANGELOG.md)。

## 致谢

- 原模组作者：BloopTankStudios — [PEAK-Hunter](https://github.com/BloopTankStudios/PEAK-Hunter)
- 本模组仅对配置菜单进行本地化，所有原有功能及代码版权归原作者所有。

## 许可

本项目遵循 MIT License，详见 [LICENSE](LICENSE)。原模组的版权声明已保留。

## 免责声明

本模组为个人学习交流作品，仅供交流使用，请勿用于商业用途。如有侵权，请联系删除。

---

## English

**HunterCN** is a Simplified Chinese localization for the in-game configuration menu of the **PEAK Hunter** mod. It is based on [PEAK-Hunter](https://github.com/BloopTankStudios/PEAK-Hunter) 1.2.1.

### Installation

1. Install BepInEx 5.4.75301 (BepInExPack_PEAK) for PEAK.
2. Extract the package and copy `plugins/com.github.BloopTankStudios.PEAK-Hunter.dll` and `plugins/assets/` into `PEAK/BepInEx/plugins/`.
3. Launch the game.

> This package bundles the original Hunter mod DLL and localized asset bundles. Do **not** install it together with the original Hunter mod — they share the same plugin GUID.

### Credits

- Original mod: BloopTankStudios — https://github.com/BloopTankStudios/PEAK-Hunter
- Licensed under the MIT License. The original copyright notice is preserved.
