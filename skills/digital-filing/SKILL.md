---
name: digital-filing
description: Comprehensive digital filing system using Luke Davies' PATH methodology (Projects, Areas, Tools, History) with a GitHub-first sync strategy. Every file on the local machine MUST sync to either Google Drive or GitHub — nothing lives only locally. Organises files and folders, applies naming conventions, runs weekly desktop/downloads cleanup, identifies duplicates, enforces the Two Sync Lanes rule, manages the AI agent ecosystem (skills repo + OpenClaw/Yabby), and ensures single source of truth. Use when creating folder structures, naming files, organising documents, cleaning desktop, processing downloads, weekly reset, digital audit, creating project folders, archiving, syncing to GitHub, managing skills or OpenClaw config, or when the user mentions PATH, filing, folder structure, cleanup, single source of truth, document management, GitHub sync, or AI agent files.
---

# Digital Filing — PATH Methodology (Claude Skill)

A complete digital filing system designed by Luke Davies for his multi-company
and personal workflow. Built around two core sync lanes: **Google Drive** for
business documents and **GitHub** for code, configuration, and knowledge-as-code.

---

## 1. Core Principles

These rules govern EVERY filing decision. Never break them.

### 1.1 Two Sync Lanes (The Master Rule)

Every file on the local Mac MUST be syncing to one of exactly two platforms.
If a file is not syncing, it is either unfiled or in the wrong place. Fix it immediately.

| Lane | What belongs here | Sync method | Local path |
|------|-------------------|-------------|------------|
| **Google Drive** | Business documents, contracts, invoices, plans, media, templates, Master Context, SOPs, branding assets | Google Drive desktop app (automatic) | `~/Library/CloudStorage/GoogleDrive-*` |
| **GitHub** | Code projects, Claude/Cowork skills, OpenClaw/Yabby agent config, shell scripts, automation, any `.git` repo | `git push/pull` (manual or scripted) | `~/Code/` and `~/Skills/` |

**There is no third lane.** If something doesn't fit Google Drive or GitHub, ask:
"Is this a document or is this code/config?" That determines the lane. Period.

**Why this matters:** If your Mac dies tomorrow, you lose nothing. Google Drive
restores your business documents. GitHub restores your code, skills, and AI agent
config. Zero data lives only on the local machine.

### 1.2 Single Source of Truth (SSOT)

Any piece of information lives in ONE definitive place. Absolute clarity on where
to look for what. When you go to that place, you know it's the most up-to-date version.

**SSOT mapping:**

| Information type | SSOT location | Sync lane |
|---|---|---|
| Working documents (Google Docs, Sheets) | Google Drive shared drives | Google Drive |
| Finalised documents (PDFs, signed contracts) | Project management system (ClickUp) | Google Drive |
| Financial records (invoices, transactions) | Accounting software (Xero) | Google Drive |
| Master Context files | Google Drive `Tools > Master Context/` | Google Drive |
| Notes and ideas | Note-taking app (one app only) | Google Drive |
| Conversations | Messaging platform thread (one per topic) | N/A (platform) |
| Tasks | ClickUp | N/A (platform) |
| Code projects (apps, websites) | GitHub repo → local clone at `~/Code/` | GitHub |
| Claude/Cowork skills | GitHub `thefuturebuilder/skills` → `~/Skills/` | GitHub |
| OpenClaw agent config (Yabby) | GitHub `thefuturebuilder/yabby` → `~/Code/ai/yabby/` | GitHub |
| Shell scripts & automation | GitHub repo → `~/Code/personal/` | GitHub |

### 1.3 Three-Click Rule
Access any file in maximum 3 clicks from your root (shared drive, Finder, etc.).
If it takes more than 3 clicks, the system is too deep. Restructure.

### 1.4 Maximum 20 Subfolders
No single folder should contain more than 20 subfolders. More than that creates
clutter and slows scanning. If you exceed 20, split into subcategories.

### 1.5 Centralised Company Storage
ALL work files on the company shared drive (Google Shared Drive, not "My Drive").
Never on personal devices, personal cloud accounts, or email attachments.
Shared drives ensure the BUSINESS owns the files, not the individual.

**"My Drive" is a red zone.** Files found in any Google My Drive should be moved
to the appropriate shared drive PATH folder or red-tagged immediately. The only
exception is temporary personal scratch files that will be filed within the same day.

### 1.6 Group-Based Access
Set permissions through groups (Executive, Project Management, All Team, Contractors).
Never share individual files one by one. Use role-based email aliases
(accounts@, admin@, projects@). Only give access to folders teams need.

### 1.7 Consistent Naming Conventions
Standardised naming across everything. If people call the same thing different names,
files become unfindable. One convention, applied everywhere, every time.

### 1.8 Prioritise Frequently Used
Most-accessed folders and files at the top. Use pinning or numbering prefixes
(e.g. `01_`, `02_`, `A01.`, `T01.`) to push important items to the top of file listings.

### 1.9 Less Friction the Better
Minimise effort between receiving/creating a file and filing it.
Set up automations where possible (e.g. auto-filing invoices into Xero, git auto-sync).
The easier it is, the more consistently it gets done.

### 1.10 Strict Exclusion Zones (Do Not Touch)
Certain folders are strictly off-limits. Claude must **NEVER** modify, rename, move,
or analyze files within these exclusion zones:
- **Future Builder Drive:** `ASSET LIBRARY (Members Only - Live Shared Folder)`
- **Any `.git/` directory:** Never modify Git internals directly.
- **Any `node_modules/` directory:** Managed by package managers, not filing.

If the user asks to organize a drive containing an excluded folder, Claude must
explicitly acknowledge it is skipping that folder.

### 1.11 Strict Routing for Sensitive & Personal Data (Security)
Protect confidential information with strict routing:
1. **Personal Files:** Anything personal to Luke Davies MUST be routed exclusively to
   `Davies Group > Luke Davies (Davies Group)` shared drive. It must NEVER end up in
   the shared Future Builder, Davies Construction, or Align folders.
2. **HR, Wages & Financials:** Anything related to job descriptions, employee wages,
   or company financials MUST be routed to folders with restricted/executive permissions.
   Never place them in general project or accessible team folders.
3. **API Keys, Secrets, Credentials:** NEVER commit to GitHub. Use `.env` files
   (listed in `.gitignore`) or a secrets manager. If found in a repo, rotate immediately.

### 1.12 Communicate All Moves (Team Collaboration)
Never move anything without notifying others involved. When making bulk moves in a
shared drive, drop a note in the relevant Slack/messaging thread.

### 1.13 Redundant Backup Protocol (Safety Net)
Maintain full backup in a secondary location:
- **Google Drive** is backed up by the SSD on the Mac Mini or a non-Google cloud service.
- **GitHub** is inherently distributed (every clone is a backup), but maintain at least
  two local clones (e.g. Mac + Mac Mini) pulling from the same remote.
- Never rely on a single platform for critical business data.

### 1.14 Zero Unsynced Files (The Audit Rule)
During every weekly reset, verify: **no file or folder exists on the local Mac that
is not inside a Google Drive sync path OR a Git repository.** The only exceptions are:
- System/application files (e.g. `~/Library/`, `/Applications/`)
- Temporary working files in `~/Downloads/` or `~/Desktop/` that will be processed
  during the weekly cleanup (see Section 6)

If an unsynced file is found anywhere else, it must be immediately moved to the
correct sync lane or red-tagged.

---

## 2. PATH Folder Structure (Google Drive)

PATH = **P**rojects, **A**reas/Workstreams, **T**ools, **H**istory.
These are the 4 root folders on every Google Shared Drive.

```
Shared Drive Root/
├── 1. PROJECTS/          # Short-term, goal-oriented work with clear deadlines
├── 2. AREAS/             # Ongoing responsibilities and operational zones
├── 3. TOOLS/             # Reusable resources, assets, and knowledge
└── 4. HISTORY/           # Completed work, archives, red-tagged items, backups
```

### 2.1 Google Drive Map (Current State)

Luke operates across 4 Google Workspace accounts and 1 OneDrive:

| Account | Shared Drives | Purpose |
|---|---|---|
| `luke@futurebuilder.co` | 1. PROJECTS, 2. ACCOUNTABILITY STREAMS, 3. TOOLS, 4. HISTORY, ASSET LIBRARY | Future Builder business |
| `luke@daviesconstruction.com.au` | 1. PROJECTS, 2. AREAS, 3. TOOLS, 4. HISTORY | Davies Construction business |
| `luke@daviesgroup.org` | Luke Davies (Davies Group), + family/entity drives | Personal + group holding |
| `luke@alignarchitecture.com.au` | My Drive only | Align Architecture |
| OneDrive-Personal | (unused) | Can be decommissioned |

**Local paths** (via Google Drive for Desktop):
```
~/Library/CloudStorage/
├── GoogleDrive-luke@futurebuilder.co/Shared drives/
├── GoogleDrive-luke@daviesconstruction.com.au/Shared drives/
├── GoogleDrive-luke@daviesgroup.org/Shared drives/
├── GoogleDrive-luke@alignarchitecture.com.au/My Drive/
└── OneDrive-Personal/                          # Unused — decommission candidate
```

### 2.2 Projects/ — What Goes Here

**Definition**: Short-term, goal-oriented work with clear deadlines and deliverables.

**Davies Construction structure** (Level 1 = lifecycle stages):
```
1. PROJECTS/
├── 1.1 CONSTRUCTION PROJECTS/
│   └── [Job Number]_[Address] _ [Client]/
├── 1.2 PRE-CONSTRUCTION PROJECTS/
│   └── [Job Number]_[Address] _ [Client]/
├── 1.3 POST-CONSTRUCTION PROJECTS/
│   └── [Job Number]_[Address] _ [Client]/
└── 1.4 BUSINESS DEVELOPMENT PROJECTS/
    └── [YYMM]_[Description]/
```

**Future Builder structure:**
```
1. PROJECTS/
├── 2501_Future Builder App (Alfie)/
├── 2502_Clickup Operating System/
├── 2503_Partners Ecosystem/
├── 2504_Content & Wunderbuild Asset Expansion/
├── 2505_New Zealand Expansion/
├── 2506_Marketing Engine/
├── 2507_Finance Systems & Profit First/
└── Project Template/
```

**Project subfolder template** (construction):
```
[Project Name]/
├── Sales Information/
├── Estimates/
├── Contracts/
├── Plans/
├── Setout Files/
├── Specifications/
├── Variations/
├── Quote Requests/
├── Purchase Orders/
├── Permits/
├── Reports & Certificates/
├── Safety/
├── Media/
├── Form Logs/
├── Project Metrics/
├── Quality Control/
├── Invoices/
├── Handover/
├── Warranty/
└── Archive/
```

**Project lifecycle rule**: When a project changes phase, MOVE the entire folder
to the appropriate lifecycle folder.
Pre-Construction → Construction → Post-Construction.

**Ask yourself**: "Does this have a deadline and a finish line?"
- Yes → It's a **Project**
- No, it's something I always manage → It's an **Area/Workstream**

### 2.3 Areas/Workstreams/ — What Goes Here

**Definition**: Ongoing responsibilities and operational zones.
These are continuous functions — they never "complete" like a project.

**Davies Construction:**
```
2. AREAS/
├── 2.1 MEETINGS/
├── 2.2 5S & CONTINUOUS IMPROVEMENT/
├── 2.3 REPORTING & ANALYTICS/
├── 2.4 COMPLIANCE, SAFETY, ENVIRONMENT & QUALITY/
├── 2.5 SALES & LEAD MANAGEMENT/
├── 2.6 QUICK SHARE/
├── 2.7 TRAVEL & TICKETS/
├── BUSINESS DEVELOPMENT & GROWTH/
├── CONTENT CREATION/
├── INSURANCE/
├── MARKETING & PUBLIC RELATIONS/
├── PROPERTIES & ACQUISITIONS/
├── VEHICLES & FLEET/
└── VIRTUAL ASSISTANTS/
```

**Future Builder:**
```
2. ACCOUNTABILITY STREAMS/
├── A00. CEO & Strategy/
├── A01. Growth Cadence Meetings/
├── A02. Continuous Improvement/
├── A03. Daily Definites/
├── A04. Monday Masterminds/
├── A05. Systems & SOPs/
├── A06. Sales & Lead Management/
├── A07. Marketing & Content Pipeline/
├── A08. Finance & Reporting/
├── A09. Course Production/
├── A10. Asset Development/
├── A11. Product Development/
├── A12. Member Engagement/
└── A13. 1-on-1 Mentor Meetings/
```

### 2.4 Tools/ — What Goes Here

**Definition**: Reusable resources, assets, and knowledge.

**Future Builder:**
```
3. TOOLS/
├── T01. Business Context/
├── T02. Templates/
├── T03. SOPs/
├── T04. Playbooks/
├── T05. Reports & Dashboards/
├── T06. Skills/
├── T07. Code & Repositories/    # Reference docs ONLY — actual code on GitHub
├── T08. Legal & Company Records/
├── T09. Contacts/
└── T10. Databases & Registers/
```

**Davies Construction:**
```
3. TOOLS/
├── 3.1 HOW-TO GUIDES & SOPS/
├── 3.2 TEMPLATES/
├── 3.3 FORMS & CHECKLISTS/
├── 3.4 DATABASES & TRACKERS/
├── 3.5 ESTIMATING & PRICING/
├── 3.6 MEDIA LIBRARY/
├── BRANDING & MARKETING/
├── FINANCIAL TOOLS & TEMPLATES/
├── HR & TEAM RESOURCES/
├── LEGAL & CONTRACTS/
└── SUPPLIERS & CONTRACTORS/
```

**Personal (Davies Group > Luke Davies):**
```
3. Tools/
├── Master Context/           # Cross-platform AI context (Google Docs format)
├── Skills Backup/            # Periodic export of skills repo for non-Git access
└── Templates/
```

### 2.5 History/ — What Goes Here

**Definition**: Completed projects, archived documents, superseded versions,
and red-tagged items. NOTHING IS EVER DELETED — it goes to History.

```
4. HISTORY/
├── Archives/     # Completed projects and old documents
├── Red Tag/      # Uncertain, unused, or duplicate items awaiting sorting
└── Backups/      # Secure copies of critical data
```

**Red Tag definition**: Any file that is not actively used, hasn't been touched
in 6+ months, might be a duplicate, or you're unsure where it belongs. Move it
to Red Tag immediately. Sort it later during dedicated cleanup time.

### 2.6 Master Context/ — What Goes Here

**Definition**: The definitive source of truth for business context accessible
from any platform (mobile, web, ChatGPT, Claude web, etc.).

**Location**: Davies Group > Luke Davies > Tools > Master Context/
**Format**: Google Docs (for cross-platform access and real-time editing)

**Rules**:
1. **Save Routing**: "Save this as master context" → this directory.
2. **Never Overwrite Silently**: Present proposed changes, wait for approval.
3. **Cross-Platform**: Lives in Google Drive because it must be accessible from
   mobile, web, and various AI apps — not just local terminal.
4. **Relationship to Yabby**: Master Context is the human-readable, cross-platform
   version. Yabby's `context/` files (on GitHub) are the agent-native version
   optimised for OpenClaw. They may contain overlapping information but serve
   different access patterns. When Master Context is updated, consider whether
   Yabby's context files also need updating, and vice versa.

---

## 3. GitHub Sync Lane (Code, Skills & AI)

### 3.1 The Iron Rule

**Code, config, and knowledge-as-code NEVER go in Google Drive.**
Google Drive's sync engine conflicts with Git's `.git` directory and corrupts
repositories. It also wastes bandwidth syncing `node_modules/` (tens of thousands
of files). GitHub and Google Drive are two completely separate sync lanes.

### 3.2 GitHub Account

- **Username:** `thefuturebuilder`
- **Active repos:** See Section 3.5 for the full registry.

### 3.3 Local Folder Structure

All GitHub-synced content lives under two local roots:

```
~/Skills/                              # Git clone of thefuturebuilder/skills
│   ├── skills/
│   │   ├── digital-filing/            # This skill
│   │   ├── futurebuilder-content/
│   │   ├── ceo-thinking-partner/
│   │   ├── construction-disputes/
│   │   ├── skill-creator/
│   │   ├── fb-course-script-creator/
│   │   ├── fb-course-production-workflow/
│   │   ├── fb-platform-schema/
│   │   ├── da-ba-approval/
│   │   ├── schedule/
│   │   └── ... (Anthropic default skills)
│   └── .git/                          → github.com/thefuturebuilder/skills

~/Code/
├── futurebuilder/
│   ├── alfie/                         → github.com/thefuturebuilder/v4.0-alfie
│   └── bns/                           → github.com/thefuturebuilder/v1.0-BNS
│
├── davies-group/
│   └── dc-website/                    → github.com/thefuturebuilder/davies-construction-website
│
├── ai/
│   └── yabby/                         → github.com/thefuturebuilder/yabby (NEW)
│       ├── SOUL.md                    # Yabby's identity & personality
│       ├── HEARTBEAT.md               # Scheduled tasks / automations
│       ├── TOOLS.md                   # Tool usage instructions
│       ├── AGENTS.md                  # Agent definitions
│       ├── context/
│       │   ├── user-profile.md        # Luke's user context for Yabby
│       │   └── outlines/              # Context outlines
│       └── memory/                    # Accumulated memory files
│
├── personal/
│   ├── automation/                    # Shell scripts, cron jobs, sync scripts
│   └── learning/                      # Experiments, tutorials
│
└── _shared/
    ├── templates/                     # Shared boilerplate
    └── scripts/                       # Cross-project utility scripts
```

**Why two roots (`~/Skills/` and `~/Code/`)?**
The `~/Skills/` folder is the Cowork plugin installation point — Cowork reads skills
from this exact path. Moving it inside `~/Code/` would break the Cowork integration.
Both are Git repos syncing to GitHub, both follow the same sync discipline.

### 3.4 Naming Conventions (Code & Git)

- All lowercase, hyphens instead of spaces
- No special characters
- Descriptive but concise
- Local folder names can differ from GitHub repo names for clarity
  (e.g. local `alfie/` ← GitHub `v4.0-alfie`)

### 3.5 GitHub Repository Registry

**Active repos (KEEP):**

| GitHub repo | Local path | Purpose |
|---|---|---|
| `thefuturebuilder/skills` | `~/Skills/` | Claude/Cowork skills (forked from Anthropic) |
| `thefuturebuilder/v4.0-alfie` | `~/Code/futurebuilder/alfie/` | Alfie app v4 |
| `thefuturebuilder/v1.0-BNS` | `~/Code/futurebuilder/bns/` | BNS app v1 |
| `thefuturebuilder/davies-construction-website` | `~/Code/davies-group/dc-website/` | DC website |
| `thefuturebuilder/davies-construction` | `~/Code/davies-group/dc-app/` | DC app/system |
| `thefuturebuilder/yabby` | `~/Code/ai/yabby/` | OpenClaw agent (NEW — create this) |

**Archived repos (DO NOT CLONE):**

| GitHub repo | Reason |
|---|---|
| `rork-future-builder-v2` | Superseded — created by Rork |
| `future-builder-v2-trcigz` | Superseded — created by Natively |
| `Luke-Davies-Clone-Lovable-` | Already archived |
| `base-embrace` | Stale since Jan 2026 |
| `augment-me` | Stale since Nov 2025 |

When archiving: GitHub → Settings → Archive this repository. Do NOT delete.

### 3.6 Git Sync Workflow

**Daily habit — sync AI repos:**
```bash
#!/bin/bash
# ~/Code/personal/automation/sync-ai.sh

repos=(
  "$HOME/Skills"
  "$HOME/Code/ai/yabby"
)

for repo in "${repos[@]}"; do
  echo "Syncing $repo..."
  cd "$repo"
  git pull --rebase
  if [ -n "$(git status --porcelain)" ]; then
    git add -A
    git commit -m "Sync $(date +%Y-%m-%d)"
    git push
  fi
done

echo "All AI repos synced."
```

**For code projects (alfie, BNS, DC website):**
Use feature branches and meaningful commit messages. These are active codebases —
don't auto-commit. Push when you've made deliberate changes.

### 3.7 What Goes Where — The Decision Tree

```
Is it a business document (PDF, contract, invoice, plan, media, template)?
  → Google Drive → appropriate shared drive PATH folder

Is it code for an app or website?
  → ~/Code/[company]/[project]/ → GitHub

Is it a Claude/Cowork skill (.md)?
  → ~/Skills/skills/[skill-name]/ → GitHub (skills repo)

Is it OpenClaw/Yabby config (SOUL.md, HEARTBEAT.md, context, memory)?
  → ~/Code/ai/yabby/ → GitHub (yabby repo)

Is it a shell script, automation, or utility?
  → ~/Code/personal/automation/ → GitHub

Is it a screenshot or downloaded file?
  → Process during weekly cleanup → route to Google Drive or GitHub

Is it Master Context (cross-platform AI knowledge)?
  → Google Drive → Davies Group > Luke Davies > Tools > Master Context/

Not sure?
  → Google Drive → History/Red Tag/ (if it's a document)
  → ~/Code/personal/ (if it looks like code/config)
```

---

## 4. Naming Conventions

### 4.1 Project Folder Names

**Construction projects**:
`[Job Number]_[Site Address] _ [Client First Names]`
```
J-01009_122 Main Street _ Jack & Jill
J-01010_45 Ocean Drive _ Sarah & Tom
```

**Business development projects**:
`[YYMM]_[Description]`
```
2501_Future Builder App (Alfie)
2503_Implement ClickUp
2507_Finance Systems & Profit First
```

### 4.2 Document Names

**Core rule**: Think about your future self. What will you search for in 6 months?

**Project documents** — always include date and type keyword:
`[YYYY-Mon-DD]_[Type Keyword] [Description]_[Project Number].[ext]`
```
2025-Mar-30_Engineering Plans_J-01003_122 Main Street.pdf
2026-Feb-14_Meeting Notes_J-01009_Design Review.docx
```

**Type keywords** (always use one of these):
Doc, Meeting Notes, Working Sheet, Form, Feedback, Agenda, Plan, Permit,
Report, Certificate, Invoice, Quote, Purchase Order, Variation, Specification

**Date rules**:
- Use the date the document was originally issued (not uploaded)
- If no issue date exists, use the upload date
- Format: `YYYY-Mon-DD` (e.g. `2025-Mar-30`) — month as 3-letter abbreviation

**Business assets** — include version number:
`[Descriptive Name]_V[Major].[Minor].[ext]`
```
Employee Cost Spreadsheet_V1.0.xlsx
Standard Operating Procedure for Filing_V2.1.pdf
```

**Screenshot naming**:
`[YYYY-Mon-DD]_Screenshot_[Description].[ext]`
```
2026-Feb-14_Screenshot_Alfie Dashboard Design.png
```

### 4.3 Duplicate Prevention

NEVER add `(1)`, `(2)`, `Copy of` etc. If a file with that name already exists,
one of them shouldn't be there. Determine which is correct and move the other
to History/Red Tag.

---

## 5. Instructions for Claude: Interactive Organization

When the user requests help organizing an arbitrary folder, follow these steps:

### 5.1 Understand and Analyze
Ask clarifying questions if needed (files to avoid, current projects).
Evaluate the current structural state:
```bash
ls -la [target_directory]
du -sh [target_directory]/* | sort -rh | head -20
find [target_directory] -type f | sed 's/.*\.//' | sort | uniq -c | sort -rn
```
Summarize: total files, type breakdown, sizing, naming issues.

### 5.2 Determine Sync Lane
Before proposing any moves, classify every file:
- **Google Drive lane**: documents, media, templates, business assets
- **GitHub lane**: code, scripts, config, `.md` skill files, OpenClaw files
- **Red Tag**: can't determine — propose moving to History/Red Tag

### 5.3 Find Duplicates
```bash
find [target_directory] -type f -exec md5 {} \; | sort | uniq -d
find [target_directory] -type f -printf '%f\n' | sort | uniq -d
```
**Always ask for confirmation before deleting or moving duplicates.**

### 5.4 Propose Organization Plan
Present a clear plan before executing:
```markdown
# Organization Plan for [Directory]

## Current State
- X files across Y folders, [Size] total
- Major issues: [e.g. duplicated (1) files, no dates, unsynced files]

## Proposed Changes
### → Google Drive
1. Move X PDFs into [Drive] > [PATH folder]
2. Rename to standard naming convention

### → GitHub
3. Move Y scripts into ~/Code/personal/automation/
4. Commit and push

### → Red Tag
5. Move Z unknown files to History/Red Tag

Ready to proceed? (yes/no/modify)
```

### 5.5 Execute Safely
Upon approval:
1. Create directories as needed.
2. Log all movements clearly.
3. Rename using `YYYY-Mon-DD` convention.
4. Commit and push any GitHub lane changes.
5. Stop and ask if severe conflicts exist.

### 5.6 Rogue Folder & File Protocol (Drive Audits)
When auditing a Google Drive root:
1. **Identify Rogues:** Anything NOT inside the 4 PATH folders is a rogue.
2. **File or Red Tag:** If obvious where it belongs, propose moving it.
   If unsure, propose `History/Red Tag/`.
3. **My Drive Sweep:** Anything in "My Drive" that should be on a shared drive
   gets flagged. My Drive is not for permanent storage.
4. **Teaching Mechanism:** Moving rogues to Red Tag teaches the team.
5. **Monthly Summary Email:** When requested, summarize Red Tag contents and
   draft a team notification.

---

## 6. Document Flow: Capture → Route → File

### 6.1 Auto-Filing Inbox (The "Drop Zone")

**Location:** `~/Desktop/` and `~/Downloads/` serve as temporary inboxes.
**Timing:** Processed during weekly cleanup or when Claude is asked to
"Process my inbox."

**Workflow:**
1. Files arrive via email, Slack, browser downloads, or screenshots.
2. Ask Claude: "Process my inbox"
3. Claude will:
   - Analyze every file in Desktop and Downloads.
   - Classify into Google Drive lane or GitHub lane.
   - Propose names (`[YYYY-Mon-DD]_[Type]_[Desc].ext`) and destinations.
   - Adhere to Security Rule 1.11 for sensitive files.
   - Present the full plan and wait for approval.
   - Execute and leave Desktop/Downloads empty.

### 6.2 Capture Points
- Desktop / Downloads (temporary inbox)
- Phone scanner app (physical receipts/documents)
- Email inbox (processing, not permanent storage)
- Camera roll (photos from site)

### 6.3 Routing Rules
| Captured item | Route to |
|---|---|
| General business files | Google Drive → appropriate shared drive PATH folder |
| Finalised project docs | ClickUp (project management) |
| Code files, scripts | `~/Code/` → GitHub |
| Skill files (.md) | `~/Skills/` → GitHub |
| OpenClaw/Yabby config | `~/Code/ai/yabby/` → GitHub |
| Master Context updates | Google Drive → Tools > Master Context/ |
| Screenshots | Rename → process during weekly cleanup |

### 6.4 Daily Habit: Quick Digital Clean
At the end of each day (or regularly throughout):
1. Scan Desktop and Downloads for anything that can be immediately filed.
2. File what's obvious (drag to Google Drive or save to Git repo).
3. Anything unclear stays for the weekly cleanup.

---

## 7. Weekly Reset Checklist

### Desktop & Downloads Cleanup
```
Desktop & Downloads
    ↓ Scan all files
    ↓ Classify: Google Drive lane or GitHub lane
    ↓ Rename properly
    ↓ Route to correct destination
    ↓ Anything unclassifiable → Google Drive History/Red Tag
    ↓ Desktop & Downloads are now EMPTY
```

### Screenshot Processing
1. Extract date from macOS filename (e.g. `Screenshot 2026-02-14 at 6.14.15 pm.png`)
2. **Look at the screenshot** to identify what it shows
3. Rename: `[YYYY-Mon-DD]_Screenshot_[Description].png`
4. Route to the relevant Google Drive PATH folder, or History/Red Tag if unclear.

### Full Weekly Checklist

- [ ] **Clear Desktop** → route files to correct sync lane
- [ ] **Clear Downloads** → route files to correct sync lane
- [ ] **Rename screenshots** with descriptions
- [ ] **Git sync AI repos** → run `sync-ai.sh` (skills + yabby)
- [ ] **Git push** any uncommitted code project changes
- [ ] **Audit Drive roots** → Rogue Folder Protocol on main drives
- [ ] **Sweep My Drives** → move any My Drive files to shared drives
- [ ] **Archive completed tasks** in ClickUp
- [ ] **Move completed projects** to History/Archives
- [ ] **Check for duplicate files** across active folders
- [ ] **Verify Zero Unsynced Files** → nothing on local Mac outside a sync lane
- [ ] **Verify backup integrity** → SSD/secondary cloud is current
- [ ] **Clear browser cache** and close unnecessary tabs
- [ ] **Review project list** (aim for ~15 active projects)

---

## 8. AI Agent Ecosystem

### 8.1 Overview

Luke's AI agent ecosystem consists of two GitHub-synced components:

1. **Skills** (`~/Skills/`) — Claude/Cowork skill definitions. These are `.md` files
   that instruct Claude how to perform specific tasks. Synced via the
   `thefuturebuilder/skills` GitHub repo (forked from `anthropics/skills`).

2. **Yabby** (`~/Code/ai/yabby/`) — Luke's OpenClaw AI agent. OpenClaw agents are
   defined by plain-text markdown files that control identity, behaviour, memory,
   and scheduled actions. Synced via the `thefuturebuilder/yabby` GitHub repo.

### 8.2 Skills Repo Structure

```
~/Skills/                              # ← Cowork reads from this path
├── .git/                              # → github.com/thefuturebuilder/skills
├── skills/
│   ├── digital-filing/SKILL.md        # This file
│   ├── futurebuilder-content/SKILL.md
│   ├── ceo-thinking-partner/SKILL.md
│   ├── construction-disputes/SKILL.md
│   ├── skill-creator/SKILL.md
│   ├── fb-course-script-creator/SKILL.md
│   ├── fb-course-production-workflow/SKILL.md
│   ├── fb-platform-schema/SKILL.md
│   ├── da-ba-approval/SKILL.md
│   ├── schedule/SKILL.md
│   └── ... (Anthropic default skills)
└── template/SKILL.md
```

**When creating or editing skills:**
1. Edit the `.md` file locally in `~/Skills/skills/[skill-name]/`
2. Test in Cowork
3. When happy: `cd ~/Skills && git add -A && git commit -m "Updated [skill]" && git push`

### 8.3 OpenClaw/Yabby Structure

```
~/Code/ai/yabby/
├── .git/                              # → github.com/thefuturebuilder/yabby
├── SOUL.md                            # Identity, personality, values, tone
├── HEARTBEAT.md                       # Scheduled tasks (cron-like, plain English)
├── TOOLS.md                           # Tool usage instructions
├── AGENTS.md                          # Agent definitions
├── context/
│   ├── user-profile.md                # Luke's context for Yabby
│   └── outlines/                      # Business/topic outlines
└── memory/                            # Accumulated memory across sessions
```

**Key OpenClaw files:**
- `SOUL.md` — Injected first at every session start. Defines who Yabby is.
- `HEARTBEAT.md` — Tasks that run on schedule (default every 30 minutes).
- `TOOLS.md` — Instructions for how Yabby should use its available tools.
- `context/` — Structured knowledge about the user and businesses.
- `memory/` — Persistent memory accumulated across sessions.

### 8.4 Relationship: Master Context vs. Yabby Context

| Attribute | Master Context (Google Drive) | Yabby Context (GitHub) |
|---|---|---|
| Format | Google Docs | Markdown files |
| Access | Mobile, web, any AI app | OpenClaw agent, terminal, VS Code |
| Purpose | Cross-platform knowledge base | Agent-native context injection |
| Sync | Google Drive (automatic) | GitHub (git push/pull) |
| Updates | Manual or via Claude | Manual or via OpenClaw heartbeat |

When one is updated, consider whether the other needs the same update.
They serve the same knowledge but different access patterns.

---

## 9. Monthly / Quarterly Habits

### 9.1 The Digital Audit (Monthly)
Score 0-5 on each item. Track progress over 4 months.

- **Sort**: Desktop clean? No duplicates? Downloads empty? Archives current?
- **Set in Order**: Clear structure? Consistent naming? 3-click access?
- **Shine**: Weekly reset done? Browser clean? Apps closed? Inbox cleared?
- **Standardise**: Rules documented? Team trained? Templates centralised?
  Version control working? GitHub repos all have clean main branches?
- **Sustain**: Regular schedule set? Ownership assigned? Habits automatic?
- **Sync Lanes**: Zero unsynced files? All Git repos pushed? My Drives empty?

### 9.2 GitHub Repo Audit (Monthly)
- Review the Repository Registry (Section 3.5) — any new repos to add?
- Check for repos that should be archived.
- Verify all local clones are on `main` branch and up to date.
- Check `.gitignore` files — no secrets, no `node_modules`, no `.env` committed.

### 9.3 Backup Routine (Quarterly)
- **Google Drive**: Full copy to SSD or secondary cloud platform.
- **GitHub**: Verify at least 2 local clones exist (Mac + Mac Mini).
- **Secrets/credentials**: Audit `.env` files — rotate any that are stale.

### 9.4 Review & Update Compliance (Quarterly)
- Check calendar for documents requiring renewals (certifications, insurance, licenses).
- Review key SOPs and Templates in Tools/ — ensure they are current.
- Review this filing skill itself — does it still match reality?
