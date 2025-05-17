---
title: Bashcrawl
parent: Unit 0 - The Story of Data
nav_order: 2
---

# 🐉 Bashcrawl
**Terminal Adventure Game — Setup Guide for Cloud Shell**

_Bashcrawl is a command-line dungeon crawler where you use Linux terminal commands to explore and solve puzzles._

---

## 🧑‍💻 What You’ll Need
- A **Google Account** (personal or school)
- A web browser (Chrome recommended)
- A session in [Google Cloud Shell](https://shell.cloud.google.com)

---

## 🚀 Setup Instructions

### Step 1: Launch Google Cloud Shell

1. Go to: [https://shell.cloud.google.com](https://shell.cloud.google.com)
2. Sign in with your Google Account.
3. Click **Continue** to start the Cloud Shell session.

> You’ll be given access to a full Linux terminal environment, pre-configured with all the tools you need.

---

### Step 2: Clone the Bashcrawl Repository

```bash
git clone https://gitlab.com/slackermedia/bashcrawl.git
````

---

### Step 3: Enter the Bashcrawl Folder

```bash
cd bashcrawl
```

---

### Step 4: Run the Setup Script

```bash
bash setup.sh
```

This creates a series of directories and files — your command-line dungeon.

---

### Step 5: Begin Your Adventure

Move into the dungeon and start exploring:

```bash
cd dungeon
```

Then use these commands to navigate:

| Command    | Description                     |
| ---------- | ------------------------------- |
| `ls`       | List files and folders          |
| `cd room1` | Enter a room (change directory) |
| `cat note` | Read a note in the room         |
| `pwd`      | Show your current directory     |
| `cd ..`    | Go back one level               |
| `clear`    | Clean up your terminal display  |

---

## 🧹 (Optional) Clean Up

If you want to remove the dungeon:

```bash
cd ~
rm -rf bashcrawl
```

---

## 🧑‍🏫 Teacher Tips

* Bashcrawl reinforces core command-line concepts in a fun and exploratory way.
* Students can customize or expand the dungeon by editing the folders and notes.
* Consider using Bashcrawl as an assessment checkpoint or intro to shell scripting.

---

