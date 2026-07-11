# HaiPrompter GitHub 发布流程

这个目录只用于发布 Hai提词器的公开产品内容，不发布源码。

## 公开仓库

- GitHub: https://github.com/daryl-li/HaiPrompter
- 本地公开内容目录: `/Users/lisheng/Documents/Codex/2026-07-08/x/github/HaiPrompter-Solution`
- 安装包目录: `/Users/lisheng/Documents/Codex/2026-07-08/x/github/release-assets`
- 源码草稿目录: `/Users/lisheng/Documents/Codex/2026-07-08/x/github/HaiPrompter-Source-Draft-DoNotPublish`

## 后续更新内容

适合提交到公开仓库的内容：

- README
- 解决方案说明
- 隐私说明
- 支持与反馈说明
- 发布记录
- 截图、图标、演示素材
- Issue 模板

不提交到公开仓库的内容：

- Swift 源码
- Xcode / Swift Package 工程文件
- 未签名或测试中的 app 包
- 本地构建产物
- 私人账号、证书、密钥

## 日常更新

1. 只修改 `HaiPrompter-Solution` 目录里的公开内容。
2. 运行 `scripts/check-public-content.sh` 检查是否混入源码或安装包。
3. 提交并推送到 `https://github.com/daryl-li/HaiPrompter`。
4. 新安装包放到 GitHub Releases，不放进代码仓库。

## 安装包发布

安装包文件保存在：

```text
/Users/lisheng/Documents/Codex/2026-07-08/x/github/release-assets
```

发布新版本时：

1. 更新 `RELEASE_NOTES.md`。
2. 生成新的 zip / dmg。
3. 在 GitHub Releases 新建版本。
4. 上传安装包。
5. 标记 beta 或正式版。

## 当前版本

- 版本: v0.3-beta
- Release: https://github.com/daryl-li/HaiPrompter/releases/tag/v0.3-beta
- 安装包: https://github.com/daryl-li/HaiPrompter/releases/download/v0.3-beta/HaiPrompter-v0.3-beta-macOS.zip
