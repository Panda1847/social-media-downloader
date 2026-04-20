# 🚀 Social Media Downloader: Beginner's Guide

Welcome! This guide is designed for "noobs" to help you use this tool easily and effectively.

---

## 🛠️ How to Start

### 1. First Time Setup
If you just downloaded this, run the setup script to install everything you need:
```bash
cd social-media-downloader
chmod +x *.sh
./termux_setup.sh
```

### 2. Running the Tool
To open the main menu where you can just pick options, run:
```bash
./social_media_downloader.sh
```

---

## 📖 Command Reference for Noobs

### 📥 Quick Download (Any Link)
Have a link and just want to download it? Use this:
```bash
./quick_download.sh "PASTE_YOUR_LINK_HERE"
```

### 📸 Instagram
| What you want | What to do in the menu |
| :--- | :--- |
| **All Posts** | Pick `1`, then `1` |
| **Stories** | Pick `1`, then `2` |
| **Highlights** | Pick `1`, then `3` |
| **Profile Pic** | Pick `1`, then `4` |

### 🎵 TikTok
| What you want | What to do in the menu |
| :--- | :--- |
| **User Profile** | Pick `3`, type their username |
| **Single Video** | Pick `3`, paste the video link |

### 📘 Facebook
| What you want | What to do in the menu |
| :--- | :--- |
| **All Photos** | Pick `2`, then `1` |
| **Albums** | Pick `2`, then `3` |

---

## 📂 Where are my files?
Everything you download goes here:
`~/Downloads/social_media/`

---

## 🛡️ Robust Features
- **Fallback Logic**: If the main tool fails, it automatically tries a second tool (like `yt-dlp`) to get your file.
- **Auto-Install**: If a tool is missing, the script will try to install it for you automatically.

---

## 🆘 Help! It's not working!
1. **Login**: Many sites (like Facebook or Private Instagrams) **require** you to log in. Choose the "Login" option in the menu.
2. **Re-run Setup**: If you get "command not found", run `./termux_setup.sh` again.
3. **Private Accounts**: You can only download from private accounts if you follow them and use the Login option.
