---
name: digital-filing
description: Comprehensive digital filing system using Luke Davies' PATH methodology (Projects, Areas, Tools, History). Organises files and folders, applies naming conventions, runs weekly desktop/downloads cleanup, identifies duplicates, and ensures single source of truth. Use when creating folder structures, naming files, organising documents, cleaning desktop, processing downloads, weekly reset, digital audit, creating project folders, archiving, or when the user mentions PATH, filing, folder structure, cleanup, single source of truth, or document management.
---

# Digital Filing — PATH Methodology (Claude Skill)

A complete digital filing system designed by Luke Davies for construction businesses,
adapted for any multi-company or personal workflow.

---

## 1. Core Principles (The 8 Rules)

These rules govern EVERY filing decision. Never break them.

### 1.1 Single Source of Truth (SSOT)
Any piece of information — file, conversation, or task — lives in ONE definitive place.
This does NOT mean everything goes in one app. It means absolute clarity on where to
look for what. When you go to that place, you know with certainty it's the most up-to-date
version. Never save the same document in multiple locations.

**SSOT mapping:**
- Working documents (Google Docs, Sheets) → Google Drive / cloud storage
- Finalised documents (PDFs, signed contracts) → Project management system (e.g. Wunderbuild, ClickUp)
- Financial records (invoices, transactions) → Accounting software (e.g. Xero)
- Master Context files → Google Drive `Tools > Master Context/`
- Notes and ideas → Note-taking app (one app only)
- Conversations → Messaging platform thread (one thread per topic)
- Tasks → Project management system

### 1.2 Three-Click Rule
Access any file in maximum 3 clicks from your root (shared drive, Finder, etc.).
If it takes more than 3 clicks, the system is too deep. Restructure.

### 1.3 Maximum 20 Subfolders
No single folder should contain more than 20 subfolders. More than that creates
clutter and slows scanning. If you exceed 20, split into subcategories.

### 1.4 Centralised Company Storage
ALL work files on the company shared drive (e.g. Google Shared Drive, not "My Drive").
Never on personal devices, personal cloud accounts, or email attachments.
Shared drives ensure the BUSINESS owns the files, not the individual.

### 1.5 Group-Based Access
Set permissions through groups (Executive, Project Management, All Team, Contractors).
Never share individual files one by one. Use role-based email aliases
(accounts@, admin@, projects@). Only give access to folders teams need.

### 1.6 Consistent Naming Conventions
Standardised naming across everything. If people call the same thing different names,
files become unfindable. One convention, applied everywhere, every time.

### 1.7 Prioritise Frequently Used
Most-accessed folders and files at the top. Use pinning or numbering prefixes
(e.g. `01_`, `02_`) to push important items to the top of file listings.

### 1.8 Less Friction the Better
Minimise effort between receiving/creating a file and filing it.
Set up automations where possible (e.g. auto-filing invoices into Xero).
The easier it is, the more consistently it gets done.

### 1.9 Strict Exclusion Zones (Do Not Touch)
Certain folders are strictly off-limits to this filing skill. Claude must **NEVER** modify, rename, move, or analyze files within these exclusion zones. 
- **Future Builder Drive:** `Asset Library Members Only Live Sharing`
If the user asks to organize a drive containing an excluded folder, Claude must explicitly acknowledge it is skipping that folder.

### 1.10 Strict Routing for Sensitive & Personal Data (Security)
You must protect confidential information by adhering to these strict routing routes during Auto-Filing:
1. **Personal Files:** Anything personal to Luke Davies MUST be routed exclusively to the `Luke Davies Group > Luke Davies` personal drive. It must NEVER end up in the shared Future Builder, Davies Construction, or Align folders.
2. **HR, Wages & Financials:** Anything related to job descriptions, employee wages, or company financials MUST be routed to folders with restricted/executive permissions (e.g., restricted Finance or HR folders). Never place them in general project or accessible team folders.

### 1.11 Communicate All Moves (Team Collaboration)
Never move anything without notifying others involved. If team members are collaborating on documents, clear communication around file movement prevents confusion and maintains trust. When making bulk moves in a shared drive, drop a note in the relevant Slack/messaging thread.

### 1.12 Redundant Backup Protocol (Safety Net)
To protect against system corruption or loss, maintain a full backup of the entire PATH folder structure and system in a secondary location. This MUST be either an external SSD on the Mac Mini or a non-Google Drive cloud service (e.g., iCloud, Dropbox). Never rely on a single platform for critical business data.

---

## 2. PATH Folder Structure

PATH = **P**rojects, **A**reas/Workstreams, **T**ools, **H**istory. These are the 4 Level 0 root folders.

```
PATH/
├── Projects/             # Short-term, goal-oriented work with clear deadlines
├── Areas/Workstreams/    # Ongoing responsibilities and operational zones
├── Tools/                # Reusable resources, assets, and knowledge
└── History/              # Completed work, archives, red-tagged items, backups
```

### 2.1 Projects/ — What Goes Here

**Definition**: Short-term, goal-oriented work with clear deadlines and deliverables.
This includes specific construction jobs AND business development projects.

**Structure** (Level 1 = lifecycle stages):

```
Projects/
├── Pre-Construction/           # Jobs in design/planning
│   └── [Project Name]/         # Level 2: individual project
│       ├── Sales Information/  # Level 3: project subfolders
│       ├── Estimates/
│       ├── Contracts/
│       ├── Plans/
│       ├── Setout Files/
│       ├── Specifications/
│       ├── Variations/
│       ├── Quote Requests/
│       ├── Purchase Orders/
│       ├── Permits/
│       ├── Reports & Certificates/
│       ├── Safety/
│       ├── Media/
│       ├── Form Logs/
│       ├── Project Metrics/
│       ├── Quality Control/
122: │       ├── Invoices/
123: │       ├── Handover/
124: │       ├── Warranty/
125: │       └── Archive/
126: ├── Construction/               # Active build jobs
127: │   └── [Project Name]/         # Move entire folder here when build starts
128: ├── Post-Construction/          # Defects, handover, warranty phase
129: │   └── [Project Name]/         # Move here when build ends
130: └── Business Development/       # Non-construction projects
131:     └── [Project Name]/         # Internal projects, websites, apps
132: ```

**Project lifecycle rule**: When a project changes phase, MOVE the entire
Level 2 project folder to the appropriate Level 1 lifecycle folder.
Pre-Construction → Construction → Post-Construction.

**Examples of projects**:
- `J-01009_122 Main Street _ Jack & Jill` (construction project)
- `2501_New Website` (business development project)
- `2502_Implement ClickUp` (business development project)

### 2.2 Areas/Workstreams/ — What Goes Here

**Definition**: Ongoing responsibilities and operational zones of the business.
These are continuous functions you always manage — they never "complete" like a project.

**Level 1 subfolders**:

```
Areas/Workstreams/
├── Meetings/
├── Sales & Lead Management/
├── Finance & Accounting/
├── 5S & Continuous Improvement/
├── Marketing & Public Relations/
├── Content Creation/
├── People Culture & Training/
├── Legal/
├── Insurance/
├── Compliance Safety Environment & Quality/
├── Reporting & Analytics/
├── Vehicles & Plant/
├── Business Development & Growth/
├── Virtual Assistants/
├── Properties & Acquisitions/
└── Travel & Tickets/
```

**Ask yourself**: "Does this have a deadline and a finish line?"
- Yes → It's a **Project**
- No, it's something I always manage → It's an **Area/Workstream**

### 2.3 Tools/ — What Goes Here

**Definition**: Reusable resources, assets, and knowledge that support your work.
These are go-to items you use repeatedly. They are not tied to a specific project.

**Level 1 subfolders**:

```
Tools/
├── How-To Guides & SOPs/
├── Skills/               # Backups of all ~/.claude/skills/ .md files
├── Templates/
├── Forms & Checklists/
├── Legal & Contracts/
├── Branding & Marketing/
├── Media Library/
├── HR & Team Resources/
├── Supplier & Contractors/
├── Best Practices & Learning/
├── Master Context/       # The source of truth for all business knowledge
├── Estimating & Pricing/
├── Financial Tools & Templates/
├── Databases & Trackers/
└── Quick Share/
```

**Ask yourself**: "Is this something I use again and again?"
- Yes → It belongs in **Tools**
- No, it's specific to one project → It belongs in that **Project** folder

### 2.4 History/ — What Goes Here

**Definition**: Completed projects, archived documents, superseded file versions,
and red-tagged items. The digital archive. Keeps old stuff out of the way but
accessible for reference. NOTHING IS EVER DELETED — it goes to History.

**Level 1 subfolders**:

```
History/
├── Archives/     # Completed projects and old documents
├── Red Tag/      # Uncertain, unused, or duplicate items awaiting sorting
└── Backups/      # Secure copies of critical data
```

**Red Tag definition**: Any file that is not actively used, hasn't been touched
in 6+ months, might be a duplicate, or you're unsure where it belongs. Move it
to Red Tag immediately. Sort it later during dedicated cleanup time.

### 2.5 Master Context/ — What Goes Here

**Definition**: The definitive source of truth and context for your businesses. These are master Markdown (`.md`) files that hold goals, values, brand voice, and operating procedures. This ensures Claude always has a central, rich-text repository to learn from. 

**Location**: Google Drive `Tools > Master Context/`
**Rules**:
1. **Save Routing**: Whenever you ask Claude to "save this as master context", it MUST be saved into this directory.
2. **Never Overwrite Silently**: Claude is explicitly forbidden from overwriting or modifying an existing Master Context document without approval. If tasked to update a context doc, Claude must present the proposed changes and wait for explicit user approval before executing the overwrite.
3. **Cross-Platform**: Because you need to access this from mobile, web, and various AI apps (ChatGPT, Claude web), this lives in Google Drive, not your local machine.

*Note: You can create subfolders in here for the different entities (e.g., `Future Builder/`, `Davies Construction/`, `Personal/`) to keep the context segmented.*

---

## 3. Naming Conventions

### 3.1 Project Folder Names

**Construction projects**:
`[Job Number]_[Site Address] _ [Client First Names]`
```
J-01009_122 Main Street _ Jack & Jill
J-01010_45 Ocean Drive _ Sarah & Tom
```

**Business development projects**:
`[YYMM]_[Description]`
```
2501_New Website
2503_Implement ClickUp
2504_Hire Virtual Assistant
```

The year-month prefix (YYMM) indicates when the project was created.
First project of 2025 = 2501, second = 2502.

### 3.2 Document Names

**Core rule**: Think about your future self. What will you search for in 6 months?
What words or numbers will you type into the search bar?

**Project documents** — always include date and type keyword:
`[YYYY-Mon-DD]_[Type Keyword] [Description]_[Project Number].[ext]`

```
2025-Mar-30_Engineering Plans_J-01003_122 Main Street.pdf
2026-Feb-14_Meeting Notes_J-01009_Design Review.docx
2025-Dec-01_Permit_J-01005_Building Approval.pdf
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
Minor updates = V1.1, V1.2 | Major updates = V2.0, V3.0

**Screenshot naming**:
`[YYYY-Mon-DD]_Screenshot_[Description].[ext]`
```
2026-Feb-14_Screenshot_Alfie Dashboard Design.png
2026-Feb-21_Screenshot_Slack Team Conversation.png
```

### 3.3 Code Project Names (Local Mac)

- All lowercase, hyphens instead of spaces
- No special characters
- Descriptive but concise

```
~/Projects-Code/
├── futurebuilder/life-by-design/
├── futurebuilder/alfie-app/
├── davies-group/property-website/
└── personal/automation/weekly-cleanup/
```

### 3.4 Duplicate Prevention

When naming, NEVER add `(1)`, `(2)`, `Copy of` etc. If a file with that name
already exists, it means one of them shouldn't be there. Determine which is the
correct version and move the other to History/Red Tag.

---

## 4. Instructions for Claude: Interactive Organization

When the user requests help organizing an arbitrary folder (e.g., Downloads, Documents), follow these steps strictly:

### 4.1 Understand and Analyze
Ask clarifying questions if needed (files to avoid, current projects).
Evaluate the current structural state of the directory by running the following:
```bash
# Get overview of current structure
ls -la [target_directory]
# Identify largest files
du -sh [target_directory]/* | sort -rh | head -20
# Count file types
find [target_directory] -type f | sed 's/.*\.//' | sort | uniq -c | sort -rn
```
Summarize the findings: total files, type breakdown, sizing, and obvious naming issues.

### 4.2 Find Duplicates
Run searches for duplicates explicitly:
```bash
# Exact duplicates by hash
find [target_directory] -type f -exec md5 {} \; | sort | uniq -d
# Same name duplicates
find [target_directory] -type f -printf '%f\n' | sort | uniq -d
```
Determine which to keep (usually best-named or most recent). **Always ask for confirmation before deleting duplicate content or move it to History/Red Tag**.

### 4.3 Propose Organization Plan (Before Execution)
Design a structure using the PATH methodology described above.
Present a Markdown plan clearly:
```markdown
# Organization Plan for [Directory]

## Current State
- X files across Y folders, [Size] total.
- Major issues: [e.g. duplicated (1) files, no dates]

## Proposed Structure
[Show simplified target tree aligning with PATH and standard Naming Conventions]

## Changes I'll Make
1. Move X PDFs into Areas/Workstreams/Finance
2. Move Y old projects into History/Archives
3. Rename files to standard `[YYYY-Mon-DD]_[Type Keyword]_[Description]`
4. Move identified duplicates to History/Red Tag

Ready to proceed? (yes/no/modify)
```

### 4.4 Execute Safely
Upon user approval:
1. Make directories.
2. Log all file movements clearly.
3. Rename using our stringent `YYYY-Mon-DD` date logic.
4. Stop and ask if severe conflicts exist.

### 4.5 Provide Summary
Provide an "Organization Complete! ✨" summary charting the moved directories and explaining maintenance tips.

### 4.6 Rogue Folder & File Protocol (Drive Audits)
When auditing a Google Drive root directory (e.g., **Future Builder**, **Davies Construction**, or your personal **Luke Davies Group > Luke Davies** shared drive), enforce the PATH structure strictly:
1. **Identify Rogues:** Any folder or file sitting in the root directory that is NOT one of the 4 PATH folders (Projects, Areas/Workstreams, Tools, History) is a "Rogue".
2. **File or Red Tag:** 
   - If it is visually obvious where the rogue item belongs (e.g., an invoice), propose moving it to the correct PATH folder.
   - If you are unsure whose file it is or where it belongs, **immediately propose moving it to `History/Red Tag/`**. 
3. **Teaching Mechanism:** Do not delete rogues. Moving them to Red Tag teaches the team that if they don't file properly, their files will be swept into the holding zone.
4. **Monthly Summary Email:** When requested to do a "Monthly Red Tag Audit", summarize everything currently sitting in `History/Red Tag/`. Draft an email to the team listing the items so they can claim them for proper filing, archiving, or deletion.

---

## 5. Document Flow: Capture → File → Find

### 5.1 Auto-Filing Inbox (The "Drop Zone")

To eliminate the friction of figuring out where a file goes, we use an **Auto-Filing Inbox**.
**Location:** `~/Inbox/`
**Timing:** Files sit here until you explicitly tell Claude to "Process my folder inbox", or until you run your weekly cleanup script. Claude does not run invisibly in the background.

**Workflow:**
1. You drag files from Gmail, Slack, or Downloads directly into `~/Inbox/`.
2. You ask Claude: "Process my folder inbox"
3. Claude will execute the **Interactive Organization** rules (Section 4):
   - Analyze every file in the Inbox.
   - Read the context of the files to determine which PATH project/area they belong to (strictly adhering to Security Rule 1.10).
   - Propose a plan standardizing their names (`[YYYY-Mon-DD]_[Type]_[Desc].ext`) and their target destinations.
   - **7-Day Trust Report Mandate:** For the first 7 days of using this skill, Claude MUST provide a highly detailed summary before moving *anything*. It must explicitly state the old file name, the new file name, the exact Google Drive destination, and ask for explicit approval before executing the move.
   - Upon your approval, file them correctly and leave the Inbox empty.

### 5.2 Capture
Get information into the system fast. Capture points include:
- Auto-Filing Inbox (Primary drop zone for files)
- Phone scanner app (physical receipts/documents)
- Email inbox (processing, not permanent storage)
- Camera roll (photos from site)

### 5.3 File
Route each captured item to its Single Source of Truth:
- General files → Google Drive PATH structure
- Finalised project docs → Project management system
- Code → `~/Projects-Code/` + GitHub
- Master Context / Knowledge Base → Google Drive `Tools > Master Context/`
- Skill Backups → Google Drive `Tools > Skills/`

### 5.4 Daily Habit: Quick Digital Clean (The "Red Tag" Method)
At the end of each day (or regularly throughout):
1. Create a new folder on your desktop named `Desktop and Downloads Archive [Today's Date]`.
2. Drag everything from your current desktop and your Downloads folder into this new dated folder. 
3. Drag this entire folder into the `History/Red Tag/` area. 
4. Do not spend hours trying to deeply organize it. The goal is to clear the immediate workspace fast.

### 5.5 Find
If captured and filed correctly, retrieval is fast:
- You know WHERE to look (SSOT principle)
- You know WHAT to search (naming conventions)
- You find it in 3 clicks or less

---

## 6. Weekly Desktop & Downloads Cleanup

### Overview

Every week, Desktop and Downloads must be emptied. Files are renamed and
moved to `~/History/` in dated folders. **Nothing is ever deleted.**

```
Desktop & Downloads
    ↓ Scan all files
    ↓ Rename properly
    ↓ Group into dated folder (YYYY-Mon-DD)
    ↓ Move to ~/History/Desktop/[date]/ or ~/History/Downloads/[date]/
    ↓ Desktop & Downloads are now EMPTY ✨
```

### Destination Structure

```
~/History/
├── Desktop/
│   ├── 2026-Feb-27/    # Today's cleanup
│   ├── 2026-Feb-20/    # Last week
│   └── ...
├── Downloads/
│   ├── 2026-Feb-27/
│   ├── 2026-Feb-20/
│   └── ...
└── cleanup_log.txt     # Running log of all cleanups
```

### Screenshot Processing

1. Extract date from macOS filename (e.g. `Screenshot 2026-02-14 at 6.14.15 pm.png`)
2. **Look at the screenshot** to identify what it shows
3. Rename: `[YYYY-Mon-DD]_Screenshot_[Description].png`
4. Move to `~/History/Desktop/[today's date]/`

### Downloads Processing

1. Identify duplicate files (`(1)`, `(2)` suffixes, identical sizes)
2. Keep the best-named or newest version, move others to same folder
3. Clean up filenames (remove download artifacts, standardise)
4. Add date prefix if missing
5. Move to `~/History/Downloads/[today's date]/`

### Duplicate Detection

When processing, check for duplicates by:
- Identical filenames with `(1)`, `(2)` suffixes
- Files with identical byte sizes
- Same-name files with different extensions (e.g. `.pdf` and `.docx` versions)

Log all duplicates found. Keep all copies but note which appear to be duplicates.

### Running the Cleanup

**Automated** (preview first):
```bash
python3 ~/.claude/skills/digital-filing/scripts/weekly_cleanup.py --dry-run
python3 ~/.claude/skills/digital-filing/scripts/weekly_cleanup.py
```

**Interactive** (Claude looks at screenshots):
Ask: "Process my folder inbox" — Claude will view screenshots, name them,
and execute the cleanup interactively.

---

## 7. Full Weekly Reset Checklist

- [ ] Clear Desktop → `~/History/Desktop/[date]/`
- [ ] Clear Downloads → `~/History/Downloads/[date]/`
- [ ] Rename screenshots with descriptions
- [ ] Archive completed tasks in project management system
- [ ] Archive processed emails
- [ ] Archive unused notes in note-taking app
- [ ] Move completed projects to History/Archives
- [ ] Check for duplicate files across active folders
- [ ] **Audit Drive Roots:** Run the Rogue Folder Protocol on main drives (Luke Davies, Future Builder) to push loose files into Projects, Areas/Workstreams, or Red Tag.
- [ ] **Verify Backup Integrity:** Confirm the redundant backup (SSD/Secondary Cloud) is current and accessible.
- [ ] Clear browser cache and close unnecessary tabs
- [ ] Verify backups are current (SSD or secondary cloud)
- [ ] Review project list (aim for ~15 active projects)
- [ ] Disable non-essential notifications

---

## 8. Code Projects (Local Mac Only)

Code NEVER goes in Google Drive (corrupts `node_modules` and `.git`). We use `Projects-Code` to explicitly differentiate from Google Drive PATH Projects.

```
~/Projects-Code/
├── [company]/[project]/     # Each project = its own Git repo
├── personal/automation/     # Claude/agent scripts
├── personal/learning/       # Terminal practice
└── _shared/templates/ & scripts/
```

**Sync across machines**: GitHub (push/pull). Not Google Drive.

---

## 9. Monthly / Quarterly Habits (Digital Audits & Compliance)

### 9.1 The Digital Audit (Monthly)
Conduct this audit once a month. Score 0-5 on each item. Track progress over 4 months. Print out your score and stick it on the wall in your office to stay visually prompted.

- **Sort**: Desktop clean? No duplicates? Downloads empty? Archives current?
- **Set in Order**: Clear structure? Consistent naming? 3-click access?
- **Shine**: Weekly reset done? Browser clean? Apps closed? Inbox cleared?
- **Standardise**: Rules documented? Team trained? Templates centralised? Version control working?
- **Sustain**: Regular schedule set? Ownership assigned? Habits automatic?

For the detailed audit template, see [reference-audit.md](reference-audit.md).

### 9.2 Implement Backup Routine (Quarterly)
Establish and consistently follow a regular physical backup system:
- **Off-Platform Cloud:** Back up to another secure cloud-based platform (separate from primary storage, e.g., iCloud or Dropbox).
- **Physical Drive:** Conduct regular backups to an SSD kept in the office, a safe, or secure location. This protects against online outages.
- **Full System Backup:** Once a month, trigger a full copy of the Google Drive PATH structure to the designated SSD/Secondary Cloud.

### 9.3 Review & Update Compliance (Quarterly)
Integrate document compliance and key dates:
- **Reminder Systems:** Check calendar for documents requiring renewals/reviews (e.g., safety certifications, insurance policies, licenses).
- **Review Process:** Periodically review key "Tools" documents like SOPs to ensure they are current.
