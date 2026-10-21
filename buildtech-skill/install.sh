#!/usr/bin/env bash
# ==============================================================================
# BuildTech AI Agent Skill — 1-Click Installer (Linux & macOS)
# Installs into Google Antigravity, Claude Code, and Cursor/Codex environments
# ==============================================================================

set -e

SKILL_NAME="buildtech"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "⚡ Installing '${SKILL_NAME}' AI Agent Skill..."

# 1. Antigravity Global Skills (~/.gemini/config/skills/buildtech)
AGY_GLOBAL_DIR="$HOME/.gemini/config/skills/$SKILL_NAME"
mkdir -p "$AGY_GLOBAL_DIR"
cp -r "$SCRIPT_DIR/SKILL.md" "$SCRIPT_DIR/templates" "$SCRIPT_DIR/scripts" "$AGY_GLOBAL_DIR/"
echo "✅ Installed for Google Antigravity (Global: $AGY_GLOBAL_DIR)"

# 2. Local Project / Workspace (.agents/skills/buildtech)
PROJECT_AGENTS_DIR=".agents/skills/$SKILL_NAME"
mkdir -p "$PROJECT_AGENTS_DIR"
cp -r "$SCRIPT_DIR/SKILL.md" "$SCRIPT_DIR/templates" "$SCRIPT_DIR/scripts" "$PROJECT_AGENTS_DIR/"
echo "✅ Installed for Project Workspace (.agents/skills/$SKILL_NAME)"

# 3. Claude Code (.claude/skills/buildtech)
CLAUDE_DIR=".claude/skills/$SKILL_NAME"
mkdir -p "$CLAUDE_DIR"
cp -r "$SCRIPT_DIR/SKILL.md" "$SCRIPT_DIR/templates" "$SCRIPT_DIR/scripts" "$CLAUDE_DIR/"
echo "✅ Installed for Claude Code ($CLAUDE_DIR)"

echo ""
echo "🎉 '${SKILL_NAME}' is now ready to use!"
echo "👉 Type /buildtech in your chat to start engineering hardware products!"
