# Using AI Surface Skills

[English](README.md) | **中文**

<p align="center">
  <strong>独立 Agent Skill 项目</strong> · <code>using-ai-surface-skills</code>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="MIT" /></a>
  <a href="https://github.com/agentskills/agentskills"><img src="https://img.shields.io/badge/format-Agent%20Skills-111827" alt="Agent Skills" /></a>
</p>

Route agent-tool / MCP work to the right AI Surface skill. Use when the user mentions tools, function calling, MCP tools, tool schema, permissions, human approval, agent retries, skill vs MCP, tool eval, or ship-check for tools. Also Chinese: "tool 契约", "MCP 工具面", "人审", "工具权限", "该用哪个 skill", "skill 还是 MCP". Do NOT use for REST OpenAPI evolution (use api-platform-skills) or MCP server scaffolding tutorials.

---

## 安装（Claude Code）

```powershell
git clone https://github.com/Wanbinyu/skill-using-ai-surface-skills.git
cd skill-using-ai-surface-skills
.\scripts\install.ps1 -Claude
```

```bash
git clone https://github.com/Wanbinyu/skill-using-ai-surface-skills.git
cd skill-using-ai-surface-skills
chmod +x scripts/install.sh
./scripts/install.sh --claude
```

安装到 Claude 时目录名是 **`using-ai-surface-skills`**（不加 `skill-` 前缀）：

`~/.claude/skills/using-ai-surface-skills/`

装完后请重启 Claude Code。

### 插件方式

```text
/plugin marketplace add Wanbinyu/skill-using-ai-surface-skills
/plugin install using-ai-surface-skills@using-ai-surface-skills
/reload-plugins
```

---

## 这个 skill 做什么

正文说明见 [`SKILL.md`](SKILL.md)（与 `skills/using-ai-surface-skills/SKILL.md` 相同）。

触发词在 `SKILL.md` 顶部 YAML 的 `description` 里（常含中英文）。

> **说明：** `SKILL.md` 正文以**英文**为主，方便 agent 稳定执行。  
> 给人看的文档提供双语：[`README.md`](README.md)（英文）+ 本文件（中文）。

---

## 一个 skill = 一个项目

本仓库**只包含这一个 skill**。  
若要一次安装整包相关技能：

- 合集：[ai-surface-skills](https://github.com/Wanbinyu/ai-surface-skills)
- 目录：[`CATALOG.zh-CN.md`](../CATALOG.zh-CN.md) / [`CATALOG.md`](../CATALOG.md)

---

## 目录结构

```text
skill-using-ai-surface-skills/   （GitHub）或  solo/using-ai-surface-skills/  （本地）
  README.md              # 英文
  README.zh-CN.md        # 中文
  SKILL.md
  skills/using-ai-surface-skills/SKILL.md
  scripts/install.ps1
  .claude-plugin/
```

## 许可证

MIT · [Wanbinyu](https://github.com/Wanbinyu)
