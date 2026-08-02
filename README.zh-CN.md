# Using AI Surface Skills

[English](README.md) | **中文**

<p align="center"><strong>一个 skill · 30 秒安装 · 用于 Claude / Codex / Cursor</strong></p>
<p align="center"><code>using-ai-surface-skills</code> · MIT · Agent Skills 格式</p>

---

## 先从这里开始

### 安装

```powershell
git clone https://github.com/Wanbinyu/skill-using-ai-surface-skills.git
cd skill-using-ai-surface-skills
.\scripts\install.ps1 -Claude
```

```bash
git clone https://github.com/Wanbinyu/skill-using-ai-surface-skills.git
cd skill-using-ai-surface-skills
chmod +x scripts/install.sh && ./scripts/install.sh --claude
```

→ `~/.claude/skills/using-ai-surface-skills/` · **请重启 Claude Code**

### 然后可以直接说

- 「用 `using-ai-surface-skills` skill 处理我当前的改动」
- 或匹配 `SKILL.md` 顶部 `description` 里的中英文触发词

---

## 这个 skill 解决什么

Route agent-tool / MCP work to the right AI Surface skill. Use when the user mentions tools, function calling, MCP tools, tool schema, permissions, human approval, agent retries, skill vs MCP, tool eval, or ship-check for tools. Also Chinese: "tool 契约", "MCP 工具面", "人审", "工具权限", "该用哪个 skill", "skill 还是 MCP". Do NOT use for REST OpenAPI evolution (use api-platform-skills) or MCP server scaffolding tutorials.

完整流程（步骤、完成标准、报告模板）见：**[`SKILL.md`](SKILL.md)**

> 给人看的文档：本页中文 + [English](README.md)。  
> `SKILL.md` 正文以英文为主，方便 agent 稳定执行。

---

## 一个 skill = 一个项目

- 本仓库：**仅** `using-ai-surface-skills`
- 整包装：[ai-surface-skills](https://github.com/Wanbinyu/ai-surface-skills)
- 全部独立 skill：https://github.com/Wanbinyu?tab=repositories&q=skill-

### 插件

```text
/plugin marketplace add Wanbinyu/skill-using-ai-surface-skills
/plugin install using-ai-surface-skills@using-ai-surface-skills
```

## 许可证

MIT · [Wanbinyu](https://github.com/Wanbinyu)
