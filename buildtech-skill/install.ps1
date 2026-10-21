# ==============================================================================
# BuildTech AI Agent Skill — 1-Click Installer (Windows PowerShell)
# Installs into Google Antigravity, Claude Code, and Cursor/Codex environments
# ==============================================================================

$ErrorActionPreference = "Stop"

$SkillName = "buildtech"
$SourceDir = $PSScriptRoot

Write-Host "⚡ Installing '$SkillName' AI Agent Skill..." -ForegroundColor Cyan

# 1. Antigravity Global Skills (~/.gemini/config/skills/buildtech)
$AgyGlobal = Join-Path $env:USERPROFILE ".gemini\config\skills\$SkillName"
New-Item -ItemType Directory -Force -Path $AgyGlobal | Out-Null
Copy-Item -Path (Join-Path $SourceDir "SKILL.md") -Destination $AgyGlobal -Force
Copy-Item -Path (Join-Path $SourceDir "templates") -Destination $AgyGlobal -Recurse -Force
Copy-Item -Path (Join-Path $SourceDir "scripts") -Destination $AgyGlobal -Recurse -Force
Write-Host "✅ Installed for Google Antigravity (Global: $AgyGlobal)" -ForegroundColor Green

# 2. Local Project / Workspace (.agents\skills\buildtech)
$WorkspaceAgents = ".agents\skills\$SkillName"
New-Item -ItemType Directory -Force -Path $WorkspaceAgents | Out-Null
Copy-Item -Path (Join-Path $SourceDir "SKILL.md") -Destination $WorkspaceAgents -Force
Copy-Item -Path (Join-Path $SourceDir "templates") -Destination $WorkspaceAgents -Recurse -Force
Copy-Item -Path (Join-Path $SourceDir "scripts") -Destination $WorkspaceAgents -Recurse -Force
Write-Host "✅ Installed for Project Workspace ($WorkspaceAgents)" -ForegroundColor Green

# 3. Claude Code (.claude\skills\buildtech)
$ClaudeDir = ".claude\skills\$SkillName"
New-Item -ItemType Directory -Force -Path $ClaudeDir | Out-Null
Copy-Item -Path (Join-Path $SourceDir "SKILL.md") -Destination $ClaudeDir -Force
Copy-Item -Path (Join-Path $SourceDir "templates") -Destination $ClaudeDir -Recurse -Force
Copy-Item -Path (Join-Path $SourceDir "scripts") -Destination $ClaudeDir -Recurse -Force
Write-Host "✅ Installed for Claude Code ($ClaudeDir)" -ForegroundColor Green

Write-Host ""
Write-Host "🎉 '$SkillName' is now ready to use!" -ForegroundColor Yellow
Write-Host "👉 Type /buildtech in your chat to start engineering hardware products!" -ForegroundColor White
