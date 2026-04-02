---
name: fb-course-production
description: >
  Manage the end-to-end Future Builder course production workflow — from identifying an expert through
  to booking them for filming. Use this skill when the user mentions course production pipeline,
  expert onboarding, setting up a course meeting, extracting expert information, defining course ideas,
  managing the course creation process, tracking course progress, or anything about the Future Builder
  course production workflow. Also trigger when the user wants to check on course status in ClickUp,
  create course-related tasks, or manage any stage of the production pipeline.
---

# Future Builder Course Production Workflow

This skill manages the full course production pipeline at Future Builder Co. It coordinates between Google Drive (documents), ClickUp (task management), Google Calendar (scheduling), and the course-script skill (scriptwriting).

## The 10-Stage Pipeline

Each course moves through these stages sequentially. The skill helps you execute whichever stage you're at.

### Stage 1: Identify the Expert
**Goal**: Find and qualify a potential course co-creator

Use the Expert Template to gather initial information. The key sections to complete:

- **Company Description** — What does their business do?
- **Products/Services** — What do they sell/offer?
- **Offer Outcome** — What result does their customer get?
- **Top 20 Customer Questions** — The problems their audience faces (this seeds course ideas)
- **Ideal Customer Avatar** — Who are they serving?

**Actions**:
- Search Google Drive for the Expert Template: `name contains 'Template - Expert'`
- If starting fresh, create a copy of the template for this expert
- Help the user fill in sections based on conversation notes or research

### Stage 2: Set Up the Meeting
**Goal**: Schedule the initial expert discovery call

**Actions**:
- Create a Google Calendar event for the expert discovery call
- Include an agenda covering: company overview, products, customer problems, potential course ideas, origin story, bio
- Create a ClickUp task for the meeting under the Course Production space
- Attach the Expert Template link to the calendar invite

### Stage 3: Extract Expert Information
**Goal**: Complete the Expert Template from the discovery meeting

After the meeting, help process the notes/transcript to fill in:

- **Bio Structure**: Name/Position, Industry, Fame/Specialty, Authority, Association, Accolades, Results
- **Origin Story**: Hidden Life Themes → Life Timeline → Origin of Passion → Origin of Business → Story Structure (Situation → Call to Adventure → Journey → New Normal)
- **Course Ideas**: Short courses (<90 days to outcome, <20 min lessons, outcome-driven, asset-based)
- **Masterclass Ideas**: Longer-form educational content

**Actions**:
- Process meeting transcript to extract key information
- Update the Expert Template in Google Drive
- Update ClickUp task status

### Stage 4: Define the Course Idea
**Goal**: Lock in a specific course with a clear outcome

From the expert's information, identify the best course opportunity:

- **Course criteria**: Can be completed in <90 days, lessons <20 minutes each, clear single outcome, requires an implementable asset
- **Course title**: Should be outcome-based (140 chars max, ideally rhymes)
- **Core outcome**: "By the end of this course, you'll have [specific deliverable]"

**Actions**:
- Create a copy of the Course Template for this specific course
- Fill in the Course Outline, Obstacles/Results, and To-Do list
- Create the course as a ClickUp task/project with subtasks for each lesson
- Name the Google Drive folder: `[Expert Name] - [Course Title]`

### Stage 5: Content Meeting (Google Meet)
**Goal**: Record a detailed walkthrough of the course content with the expert

**Actions**:
- Schedule the Google Meet content session
- Prepare an agenda based on the lesson list from Stage 4
- Ensure recording is set up
- After the meeting, save the transcript to Google Drive in the course folder

### Stage 6: Turn Content into Scripts
**Goal**: Transform the meeting transcript into production-ready lesson scripts

This is where the `fb-course-script` skill takes over. Provide it with:
- The meeting transcript
- The completed Expert Template (for voice/personality reference)
- The Course Template with outline and lesson list already filled in

The script skill will produce:
- Course introduction script
- All individual lesson scripts (following Hook → Shift → Metaphor → Proof → Thinking Time → Advice → Recap → CTA)
- Marketing scripts (headlines, YouTube explainer, ad script)
- Admin checklists

**Actions**:
- Invoke the course-script skill with the transcript
- Save the completed script document to Google Drive
- Update ClickUp tasks for each lesson to "Script Complete"

### Stage 7: Identify Assets Needed
**Goal**: List all worksheets, templates, tools, graphics, and media needed for production

Review the completed scripts and extract:
- **Worksheets/Templates**: The main course asset plus any per-lesson tools
- **Graphics**: Diagrams, visual models, charts mentioned in scripts
- **B-Roll**: Footage needed (job sites, tools, processes)
- **Text Overlays**: Key definitions, fill-in-the-blank structures, timer graphics
- **Thumbnails**: Course thumbnail (1280x720) and lesson thumbnails

**Actions**:
- Create a master asset list
- Create ClickUp tasks for each asset with assignees
- Link assets to their corresponding lessons

### Stage 8: Script Approval
**Goal**: Get the expert to review and approve all scripts

**Actions**:
- Share the script document with the expert via Google Drive
- Create a ClickUp task for script review with a due date
- Schedule a review call if needed
- Track feedback and revisions
- Mark scripts as "Approved" once signed off

### Stage 9: Create the Transcript
**Goal**: Produce the final transcript document for the teleprompter/filming reference

The transcript is a cleaned-up version of the script formatted for filming:
- Remove production notes and formatting
- Add lesson headers (`# LESSON 1`, `**LESSON 1: [Title]**`)
- Keep the natural speaking flow
- Mark any spots where the expert should ad-lib or tell a personal story

**Actions**:
- Generate the transcript from approved scripts
- Save to Google Drive in the course folder
- Update ClickUp status

### Stage 10: Book for Filming
**Goal**: Schedule the studio recording session in Tasmania

**Actions**:
- Check Google Calendar for available studio dates
- Create a calendar event for the recording session (usually multi-day)
- Create a ClickUp task for filming prep
- Ensure all assets, scripts, and transcripts are finalised before the booking
- Send confirmation to the expert with:
  - Recording dates
  - Travel details
  - What to bring/prepare
  - Final script and transcript links

## ClickUp Integration

When managing course production in ClickUp:

1. **Search for existing course tasks**: Use `clickup_search` with the course name or expert name
2. **Create new course project**: Create a task for the course with subtasks for each stage
3. **Track progress**: Update task statuses as stages complete
4. **Assign work**: Assign asset creation, review tasks, and filming prep to team members

### Suggested ClickUp Structure
```
Course: [Course Title] — [Expert Name]
├── Expert Discovery (Stage 1-3)
├── Course Definition (Stage 4)
├── Content Meeting (Stage 5)
├── Script Writing
│   ├── Introduction Script
│   ├── Lesson 1 Script
│   ├── Lesson 2 Script
│   └── ...
├── Asset Creation (Stage 7)
│   ├── Main Worksheet/Template
│   ├── Graphics & Diagrams
│   └── Thumbnails
├── Script Approval (Stage 8)
├── Transcript Creation (Stage 9)
└── Filming Booking (Stage 10)
```

## How to Use This Skill

When the user asks about course production, figure out which stage they're at and help them execute it. Common scenarios:

- **"I just had a meeting with [expert], can you process the transcript?"** → Stage 3 (extract expert info) or Stage 6 (write scripts), depending on which meeting it was
- **"What's the status of [course name]?"** → Search ClickUp and Google Drive for current state
- **"Set up a new course for [expert]"** → Start at Stage 1
- **"We need to book [expert] for filming"** → Stage 10
- **"What assets do we still need for [course]?"** → Stage 7 review
