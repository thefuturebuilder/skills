---
name: fb-platform-schema
description: >
  Master context for all FutureBuilder Co platform work — schema, database, ALFIE diagnostic,
  ClickUp implementation, Diane's import sheets, Jordan's Supabase build, and founder story
  architecture. Use this skill whenever the conversation involves: FutureBuilder, ALFIE, BPS,
  PPS, schema, ClickUp import, Diane, Jordan, Supabase, course/lesson/asset database, pillar
  scoring, problem tags, lifecycle stages, constraint engine, FounderStory, or any FutureBuilder
  entity. Also trigger for Davies Construction platform work, Wunderbuild integration, or any
  reference to Luke/Kyle's business coaching platform. When in doubt — trigger this skill.
  The context it provides is almost always relevant to FutureBuilder sessions.
---

# FutureBuilder Platform — Master Context Skill

## Quick Reference

| Item | Value |
|------|-------|
| Schema version | **v4.4** |
| Schema file | `Future_Builder_Schema_V4_4.xlsx` |
| ClickUp import file | `ClickUp_Complete_Import_v4_1.xlsx` |
| Schema sheets | ~271 |
| Active entities | ~119 |
| AV_ tables | ~163 |
| Last schema session | 19 Feb 2026 (v4.4 — industry-agnostic expansion) |
| Last ClickUp session | 9 Mar 2026 (Diane feedback round, v4.1 import) |

---

## 1. WHO IS WHO

| Person | Role |
|--------|------|
| **Luke Davies** | CEO / Co-founder FutureBuilder Co. Decision-maker on all schema, content, and product. |
| **Kyle Zanetto** | Co-founder FutureBuilder Co. Co-presenter on Basecamp courses. |
| **Jordan** | Technical lead. Builds Supabase tables, Lovable.dev front-end, MCP servers. |
| **Diane Hope** | ClickUp implementation. Enters course/lesson/asset/expert data into ClickUp. |
| **Chelsea Henera** | Operations. |
| **Janenna** | janenna@futurebuilder.co |

---

## 2. WHAT IS FUTUREBUILDER

FutureBuilder Co is a construction industry business coaching and platform. It delivers courses, assets, expert guidance, and an AI diagnostic tool (ALFIE) to builders.

**Core products:**
- **Basecamp** — 10-course foundational program for builder-owners. Standalone product.
- **Vault** — Premium content library beyond Basecamp.
- **ALFIE** — AI diagnostic assistant. Runs BPS diagnostic, maps constraints, recommends courses/assets.
- **Monday Masterminds** — Weekly live event series.
- **Wunderbuild** — Partner platform. FutureBuilder sells template assets on their marketplace.

**Critical access level rule:**
> Basecamp access = Basecamp courses only. It is a standalone product, not a base tier.
> Non-Basecamp courses = VAULT access level unless explicitly stated otherwise.

---

## 3. THE SIX PILLARS

| Pillar | Weight | Questions | Chart Hex |
|--------|--------|-----------|-----------|
| Finance | 20% | 17 | #C15F3C |
| Operations | 20% | 18 | #4A7C59 |
| Management | 20% | 17 | #2C5F7A |
| Marketing | 15% | 16 | #D4953A |
| Sales | 15% | 17 | #8B5E3C |
| Culture | 10% | 17 | #7A6B8A |
| **TOTAL** | **100%** | **102** | |

> Some documents reference 104 questions. Authoritative count = **102**. Schema always wins over manifesto or other docs.

---

## 4. SCORING SYSTEM

### Layer 1 — Business
| Acronym | Name | Scale | Notes |
|---------|------|-------|-------|
| BPS | Business Prime Score | 0–100 | Formerly BSS (Business Saleable Score) — always use BPS |
| DI | Decline Index | 0–100 | |
| BLS | Business Lifecycle Stage | Stage name | |

**BPS = Asset Health Score (60%) + KPI Health Score (40%)**
Assets = the CAUSE. KPIs = the EFFECT.

### Layer 2 — Personal
| Acronym | Name | Scale |
|---------|------|-------|
| PPS | Personal Prime Score | 1.0–10.0 |
| PLGI | Personal Life Gap Index | 0–90 |

### Layer 3 — Individual
| Acronym | Name | Scale |
|---------|------|-------|
| ICS | Individual Competency Score | 0–100 |
| DISC | DISC Behavioural Profile | 4 dimensions |

### Layer 4 — Unified
| Acronym | Name | Formula |
|---------|------|---------|
| PIS | Personal Impact Score | BPS 50% + PPS 30% + ICS 20% |

---

## 5. LIFECYCLE STAGES

**Schema is always authoritative. Manifesto scores are outdated.**

| Stage | Range | Zone |
|-------|-------|------|
| Death | 0–9 | Decline |
| Birth | 10–19 | Growth |
| Startup | 20–34 | Growth |
| Buildup | 35–49 | Growth |
| Scale-up | 50–64 | Growth |
| Systemise | 65–79 | Growth |
| Reinvention | 70–84 | Transition |
| Stagnation | 70–84 | Transition |
| Prime | **85–100** | Prime |
| Decline | 25–49 | Decline |

> Manifesto says Prime = 80–100. **Schema wins: Prime = 85–100.**

---

## 6. PERSONAL PRIME SCORE — 10 CATEGORIES

1. Health & Vitality
2. Character & Values
3. Emotional & Mental Wellbeing
4. Intimate Relationship
5. Family, Friends & Community
6. Career & Business *(gateway to BPS 102-question diagnostic)*
7. Wealth & Financial Freedom
8. Personal Growth & Learning
9. Fun & Lifestyle
10. Purpose & Legacy

---

## 7. CONSTRAINT ENGINE — PRIORITY HIERARCHY

| Priority | Level | Trigger Conditions |
|----------|-------|--------------------|
| P0 | SURVIVAL | Cash runway <30 days, safety incident |
| P1 | GUARDRAIL | Management pillar <75 (Prime Gate), key person dependency |
| P2 | FINANCIAL | GP margin <20%, debtor days >60, revenue declining |
| P3 | OPERATIONAL | Rework >10%, schedule blowouts >20% |
| P4 | GROWTH | Pipeline <2x, conversion <20% |
| P5 | PEOPLE | Turnover >20%, owner hours >60/week |

---

## 8. CONTENT DOMAINS (12)

`BUSINESS` · `PERSONAL_GROWTH` · `RELATIONSHIPS` · `HEALTH_WELLNESS` · `MINDSET` · `SUSTAINABILITY` · `TECHNICAL_SKILLS` · `DESIGN_CREATIVITY` · `LEADERSHIP` · `CAREER` · `FINANCIAL_PERSONAL` · `SPIRITUAL`

---

## 9. NAMING CONVENTIONS

| Convention | Rule |
|------------|------|
| AV_ tables | Allowed values tables — dropdown options |
| REF_ | Relationship references to other entities |
| Entity names | PascalCase (e.g. CourseEnrollment, FounderStory) |
| Field names | snake_case (e.g. course_id, primary_problem_tag) |
| Dropdown values | SCREAMING_SNAKE_CASE (e.g. POOR_LEAD_GENERATION) |
| Course IDs | Zero-padded: COURSE_001, COURSE_002 |
| Basecamp courses | Zero-padded: BC01–BC10 (lesson refs: BC01 Lesson 1) |

---

## 10. LOCKED DECISIONS (do not re-debate these)

| Decision | Ruling |
|----------|--------|
| BSS → BPS | Always use Business Prime Score / BPS |
| BUILDER_OWNER → BUSINESS_OWNER | Canonical audience_type value is BUSINESS_OWNER (v4.4) |
| Schema vs manifesto | Schema always wins when ranges/values conflict |
| Prime range | 85–100 (not 80–100) |
| BPS formula | 60% Asset Health + 40% KPI Health |
| Pillar question count | 102 total (not 104) |
| STRATEGY_BUSINESS_MODEL | Valid sub_pillar — formally added to AV_sub_pillar |
| 9 wastes (not 8) | Inventory, Space, Waiting, Over-processing, Rework, Excess Motion, Over-producing, Unused Creativity, Transport |
| F75 prerequisite_course_ids | Plain text field in ClickUp (e.g. "BC01, BC02") — relational integrity enforced in Supabase only |
| Basecamp access level | Basecamp courses only. Non-Basecamp = VAULT. |
| AlfieThread → ChatSession | Code should rename to match schema (Jordan's task) |
| AlfieMessage → ChatMessage | Code should rename to match schema (Jordan's task) |
| Blockchain/NFT entities | 5 entities DEPRECATED — do NOT build (see v4.3 changelog) |

---

## 11. KEY ENTITIES (reference)

### Core content entities
- **Course** — 44 fields. Linked to Lessons, Assets, Experts.
- **Lesson** — 29 fields. Child of Course. Carries video_url, transcript_url, duration_minutes.
- **Asset** — Wunderbuild-compatible template/tool. 189+ in library.
- **ExpertProfile** — 62 experts. 22 currently in ClickUp; 40 to be imported.
- **QuickLearnSet** — Short-form content (Instagram Stories-style).

### Diagnostic entities
- **ConstraintIdentification** — THE ONE constraint lifecycle: identify → prescribe → release → next
- **KPI_Benchmark** — Benchmark targets per KPI per revenue band (5 bands)
- **AssetCompletion** — Tracks which of 189+ assets each company has completed (powers heat map)
- **AdaptationSnapshot** — Point-in-time BPS snapshots

### Scoring entities
- **BPS** (Business Prime Score), **PPS** (Personal Prime Score), **ICS**, **PIS**
- **PersonalityProfile** — Flexible JSONB. Supports DISC, MBTI, Enneagram, Big Five, Builder Profile.

### Platform entities (v4.3+)
- **Deal + Contact** — CRM pipeline
- **PlannerTask / PlannerEvent / PlannerRitual** — Time Planner
- **GuidanceSession + CoachClientEngagement** — Coaching/guidance calls
- **ContentIdea + RepurposedContent** — Content Engine
- **GamificationPoints + UserLevel** — Two-track: COMMUNITY_SPIRIT (public) + COMPANY_MASTERY (internal)
- **CourseEnrollment** — Progress tracking + certificates
- **KnowledgeDocument** — Internal knowledge base

### Founder story entity (v4.4+ — new, 9 Mar 2026)
- **FounderStory** — see Section 14 below

---

## 12. CLICKUP IMPORT SHEET STRUCTURE

The ClickUp import file (`ClickUp_Complete_Import_v4_1.xlsx`) has these sheets:

| Sheet | Purpose |
|-------|---------|
| CHANGELOG | Version history of the import file |
| DIANE_TASK_LIST | Diane's task list — status (✅ DONE / 🔴 TODO), priority (P0–P2), area, description |
| FIELD CONFIGURATION | Every field for every entity — type, required, dropdown options |
| ASSET DATABASE | 190+ assets with all fields |
| COURSE DATABASE | 32+ courses with all 44 fields |
| EXPERTS DATABASE | 62 experts |
| LESSONS DATABASE | 240 lessons with all fields |
| CONTENT_TOPICS | 119 content topics across 12 domains |
| ASSET CLEANUP | 83 junk asset rows flagged for deletion |
| CHANGES_LOG | Running log of changes made to the import file |

**Diane's task list format:** Never change this format — Diane is used to it.
- Column B: Status (✅ DONE / 🔴 TODO)
- Column C: Priority (P0 = critical, P1 = high, P2 = normal)
- Column D: Area (COURSES, LESSONS, ASSETS, EXPERTS, FIELD CONFIG, CONTENT_TOPICS)
- Column E: Task Description
- Column F: Notes

---

## 13. PROBLEM TAGS

The platform has **~52 business problem tags** in `AV_primary_problem_tag` and `PROBLEM_TAGS` sheet.

Key tags (confirmed in schema v4.4):
`TEAM_UNDERPERFORMANCE` · `POOR_LEAD_GENERATION` · `CLIENT_EXPERIENCE_GAPS` · `UNCLEAR_STRATEGY` · `NO_FINANCIAL_VISIBILITY` · `OWNER_BURNOUT` · `INEFFICIENT_OPERATIONS` · `TOO_MUCH_REWORK_DEFECTS` · `POOR_SYSTEMS` · `SCALING_WITHOUT_SYSTEMS` · `UNCLEAR_POSITIONING_BRAND` · `POOR_ESTIMATING_ACCURACY` · `SUBCONTRACTOR_RELIABILITY` · `SCOPE_CREEP` · `DIGITAL_ADOPTION_LOW` · `NO_CLEAR_EXIT_STRATEGY`

> If Diane flags a problem tag as "not in dropdown" — check the PROBLEM_TAGS sheet in v4.4 schema first. If it exists there but not in the ClickUp field config, add it to the FIELD CONFIGURATION sheet options.

---

## 14. FOUNDER STORY ENTITY (NEW — 9 Mar 2026)

**Purpose:** Allow Luke and Kyle to record personal business stories that ALFIE can draw on during conversations. Stories create emotion; emotion creates memory. ALFIE uses stories to make abstract concepts relatable — "Luke had this exact problem when growing from 3 to 12 employees..."

**Entity: FounderStory**

| Field | Type | Description |
|-------|------|-------------|
| story_id | ID | Auto-generated |
| author | Dropdown | LUKE_DAVIES, KYLE_ZANETTO |
| story_title | Text | Short descriptive title |
| business_context | Text | Stage/size/situation when this happened |
| story_content | Long Text | The full story in first person |
| emotional_hook | Text | The core emotion/tension (e.g. "I was about to lose everything") |
| lesson_learned | Text | What the outcome/insight was |
| business_outcome | Text | Measurable result if applicable |
| linked_pillar | Dropdown | Which of the 6 pillars this relates to |
| linked_problem_tags | Multi-select | Which problem tags this story addresses |
| linked_asset_ids | Relationship | Assets this story supports |
| linked_course_ids | Relationship | Courses this story supports |
| ai_context_prompt | Long Text | How ALFIE should use this story — when to surface it, what tone |
| visibility | Dropdown | INTERNAL (ALFIE only), PUBLISHED (shareable content) |
| created_date | Date | |
| updated_date | Date | |

**ALFIE usage pattern:** When a builder is diagnosed with a constraint matching `linked_problem_tags`, ALFIE surfaces the relevant FounderStory before or after the recommendation — "Luke actually dealt with this exact issue. Here's what happened..."

---

## 15. SCHEMA VERSION HISTORY (summary)

| Version | Date | Key Changes |
|---------|------|-------------|
| v3.9 | Pre-Feb 2026 | 218 sheets, 74 entities. Baseline. |
| v4.1 | 9 Feb 2026 | +13 sheets, +11 entities. PPS, SKILLS_ASSESSMENT, CONSTRAINT_ENGINE, KPI sheets. BSS→BPS rename. |
| v4.2 | ~12 Feb 2026 | Lovable codebase alignment. AllowedValues_Index updates. AV_audience_type listed but not yet created. |
| v4.3 | 16 Feb 2026 | CRM (Deal+Contact), Time Planner (4 entities), Content Engine, Coaching (4 entities), Gamification (2-track), Asset Ownership. 5 blockchain entities deprecated. |
| v4.4 | 19 Feb 2026 | Industry-agnostic expansion. AV_industry (12 values). AV_audience_type created (BUSINESS_OWNER). AV_ai_context_role +4 values. industry_tags on 7 entities. |

---

## 16. BRAND TOKENS

### FutureBuilder Co
- **Primary:** #BDF14C · #FF8E2C · #FFBD59
- **Neutrals:** #2B2B2B · #7C7C7C · #D9D9D9 · #EDF0F2 · #F9DFB7
- **Fonts:** ITC Franklin Gothic (headers) · Inter (subheadings) · Outfit (accent) · IBM Plex Sans (body)

### Davies Construction (distinct brand — never conflate)
- **Palette:** Rich Black #000000 · Davies White #FFFFFF · Stone Beige #EDEAE7
- **CTA only:** Oak Brown #D4BA9F (CTAs) · Pop Orange #FF8E2C (CTAs/hyperlinks)
- **Fonts:** Acumin Pro Condensed Semibold (H1, always uppercase) · Prestige Elite Bold (H2/H3, uppercase) · Open Sans Semibold (body, sentence case)

---

## 17. DIANE FEEDBACK WORKFLOW

When Diane raises comments on the ClickUp import sheet:

1. Check the v4.4 schema to confirm current authoritative value
2. If the value exists in schema but not in ClickUp field config → add it to FIELD CONFIGURATION options
3. If a data cell is wrong → correct it in the relevant database sheet
4. If it's a Luke decision (access level, positioning, naming) → flag for Luke to confirm
5. Update DIANE_TASK_LIST with new TODO items if new tasks emerge
6. Update CHANGES_LOG with what was changed and why
7. Produce updated xlsx for Diane

**Common patterns:**
- "Not an option in dropdown" → tag is missing from FIELD CONFIGURATION options list, but exists in schema PROBLEM_TAGS
- "What's the difference between X and Y" → clarify in FIELD CONFIGURATION description column
- "Should be X not Y" → data correction in database sheet
- "Assigned to You (@luke)" → Luke decision required before Diane can proceed

---

## 18. OUTSTANDING ITEMS (as of 9 Mar 2026)

| # | Item | Owner |
|---|------|-------|
| 1 | Add FounderStory entity to schema v4.5 | Luke/Jordan |
| 2 | Add STRATEGY_BUSINESS_MODEL to AV_sub_pillar in schema | Jordan |
| 3 | Add TEAM_UNDERPERFORMANCE, POOR_LEAD_GENERATION, CLIENT_EXPERIENCE_GAPS to ClickUp FIELD CONFIGURATION dropdown options | Diane (via updated sheet) |
| 4 | Correct COURSE_033 (Basecamp Course 00) — difficulty BEGINNER, lifecycle BUILDUP, prime_path DIAGNOSE, strategic_value CORE, estimated_time 5-10 min, move to position 2 | Diane |
| 5 | Change all audience_type BUILDER_OWNER → BUSINESS_OWNER | Diane |
| 6 | Change Q15 "Improve the health of your home" access_level → VAULT | Diane |
| 7 | Update content_tags for "Learning to See Waste" → "9 wastes" not "8 wastes" | Diane |
| 8 | AQ16 "Inbox Freedom" — use existing "productivity tools" tag | Diane |
| 9 | F75 prerequisite_course_ids → change field type to plain Text in FIELD CONFIGURATION | Diane |
| 10 | Populate delivery_mode for all LESSONS records (default SELF_PACED where blank) | Diane |
| 11 | Set difficulty_level for Lesson Row 39 and other blank lessons | Diane |
| 12 | 40 experts still need importing to ClickUp | Diane |
| 13 | 219 IN DEVELOPMENT lessons — review and flip to PUBLISHED if filmed | Diane |
| 14 | Manifesto lifecycle ranges need updating to match schema (Prime 85–100 etc.) | Luke |

---

## 19. FILE LOCATIONS

| File | Path |
|------|------|
| Schema | `Future_Builder_Schema_V4_4.xlsx` |
| ClickUp import | `ClickUp_Complete_Import_v4_1.xlsx` |
| Session transcript (Feb 9) | `/mnt/transcripts/2026-02-09-12-16-03-schema-v41-personalnorthstar-finalization.txt` |
| v3.9 build session | https://claude.ai/chat/d6406586-b266-470b-99a0-b1d5a30ce715 |
| ALFIE diagnostic / v4.4 ref | https://claude.ai/chat/0241818a-6598-4d30-8305-2874bb561910 |
| ALFIE diagnostic workbook | https://claude.ai/chat/91c1595f-410d-4868-a4fd-11e7e7a797aa |
| ALFIE architecture doc | https://claude.ai/chat/21b25980-25da-448c-93b1-40158f0a8ca4 |

---

## 20. SAVE LOCATION

This skill lives at:
```
/Users/lukedavies/Skills/skills/fb-platform-schema/SKILL.md
```

Syncs to FutureBuilder GitHub repo. Accessible to Luke, Kyle, Jordan, Diane via Co-Work.

When updating this skill, increment the "Last ClickUp session" or relevant date field in the Quick Reference table at the top, and add new locked decisions or outstanding items as they arise.
