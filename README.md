# Using AI Surface Skills

**English** | [中文](README.zh-CN.md)

<p align="center"><strong>One skill. Install in 30 seconds. Use in Claude / Codex / Cursor.</strong></p>
<p align="center"><code>using-ai-surface-skills</code> · MIT · Agent Skills format</p>

---

## Start here

### Install

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

→ `~/.claude/skills/using-ai-surface-skills/` · **Restart Claude Code**

### Then say (examples)

- *Use the `using-ai-surface-skills` skill on my current change.*
- Or any phrase matching the triggers in `SKILL.md` frontmatter (EN + ZH).

---

## What this skill is for

Route agent-tool / MCP work to the right AI Surface skill. Use when the user mentions tools, function calling, MCP tools, tool schema, permissions, human approval, agent retries, skill vs MCP, tool eval, or ship-check for tools. Also Chinese: "tool 契约", "MCP 工具面", "人审", "工具权限", "该用哪个 skill", "skill 还是 MCP". Do NOT use for REST OpenAPI evolution (use api-platform-skills) or MCP server scaffolding tutorials.

Full workflow (steps, exit criteria, report template): **[`SKILL.md`](SKILL.md)**

> Human docs: EN + [中文](README.zh-CN.md).  
> `SKILL.md` body is English so agents execute consistently.

---

## One skill = one project

- This repo: **only** `using-ai-surface-skills`
- Bulk packs: [ai-surface-skills](https://github.com/Wanbinyu/ai-surface-skills)
- All solo skills: https://github.com/Wanbinyu?tab=repositories&q=skill-

### Plugin

```text
/plugin marketplace add Wanbinyu/skill-using-ai-surface-skills
/plugin install using-ai-surface-skills@using-ai-surface-skills
```

## License

MIT · [Wanbinyu](https://github.com/Wanbinyu)
