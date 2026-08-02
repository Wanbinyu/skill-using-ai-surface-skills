# Using AI Surface Skills

**English** | [中文](README.zh-CN.md)

<p align="center">
  <strong>Standalone Agent Skill</strong> · <code>using-ai-surface-skills</code>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="MIT" /></a>
  <a href="https://github.com/agentskills/agentskills"><img src="https://img.shields.io/badge/format-Agent%20Skills-111827" alt="Agent Skills" /></a>
</p>

Route agent-tool / MCP work to the right AI Surface skill. Use when the user mentions tools, function calling, MCP tools, tool schema, permissions, human approval, agent retries, skill vs MCP, tool eval, or ship-check for tools. Also Chinese: "tool 契约", "MCP 工具面", "人审", "工具权限", "该用哪个 skill", "skill 还是 MCP". Do NOT use for REST OpenAPI evolution (use api-platform-skills) or MCP server scaffolding tutorials.

---

## Install (Claude Code)

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

Claude skill id remains **`using-ai-surface-skills`** (no `skill-` prefix):

`~/.claude/skills/using-ai-surface-skills/`

Restart Claude Code after install.

### Plugin

```text
/plugin marketplace add Wanbinyu/skill-using-ai-surface-skills
/plugin install using-ai-surface-skills@using-ai-surface-skills
/reload-plugins
```

---

## What this skill does

See [`SKILL.md`](SKILL.md) (same as `skills/using-ai-surface-skills/SKILL.md`).

The YAML `description` at the top of `SKILL.md` holds triggers (often EN + ZH).

> **Note:** `SKILL.md` body is English so agents follow instructions reliably.  
> Human docs are bilingual: this file + [`README.zh-CN.md`](README.zh-CN.md).

---

## One skill = one project

This repo ships **only this skill**.  
Bulk install of related skills:

- Collection: [ai-surface-skills](https://github.com/Wanbinyu/ai-surface-skills)
- Catalog: [`CATALOG.md`](../CATALOG.md) / [`CATALOG.zh-CN.md`](../CATALOG.zh-CN.md) (local `G:\\skill\\solo`)

---

## Layout

```text
skill-using-ai-surface-skills/   (GitHub)  or  solo/using-ai-surface-skills/  (local)
  README.md              # English
  README.zh-CN.md        # Chinese
  SKILL.md
  skills/using-ai-surface-skills/SKILL.md
  scripts/install.ps1
  .claude-plugin/
```

## License

MIT · [Wanbinyu](https://github.com/Wanbinyu)
