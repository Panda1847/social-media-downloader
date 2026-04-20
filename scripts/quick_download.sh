#!/bin/bash
# Quick Download Script - No menu, just download
# Usage: ./quick_download.sh <URL>

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Check if URL is provided
if [ -z "$1" ]; then
    echo -e "${RED}Error: No URL provided!${NC}"
    echo ""
    echo "Usage: ./quick_download.sh <URL>"
    echo ""
    echo "Examples:"
    echo "  ./quick_download.sh https://instagram.com/username"
    echo "  ./quick_download.sh https://facebook.com/username"
    echo "  ./quick_download.sh https://tiktok.com/@username"
    echo "  ./quick_download.sh https://twitter.com/username"
    exit 1
fi

URL="$1"
DOWNLOAD_DIR=~/Downloads/social_media

# Create download directory
mkdir -p "$DOWNLOAD_DIR"

echo -e "${BLUE}📥 Starting download...${NC}"
echo -e "${BLUE}URL: $URL${NC}"
echo -e "${BLUE}Saving to: $DOWNLOAD_DIR${NC}"
echo ""

# Download using gallery-dl
gallery-dl -D "$DOWNLOAD_DIR" "$URL"

if [ $? -eq 0 ]; then
    echo ""
    echo -e "${GREEN}✓ Download completed successfully!${NC}"
    echo -e "${GREEN}Files saved to: $DOWNLOAD_DIR${NC}"
else
    echo ""
    echo -e "${YELLOW}⚠ gallery-dl failed. Attempting fallback with yt-dlp...${NC}"
    
    if ! command -v yt-dlp &> /dev/null; then
        echo -e "${BLUE}Installing yt-dlp...${NC}"
        pip install yt-dlp &> /dev/null
    fi
    
    if command -v yt-dlp &> /dev/null; then
        yt-dlp -o "$DOWNLOAD_DIR/%(title)s.%(ext)s" "$URL"
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}✓ Fallback download completed successfully!${NC}"
        else
            echo -e "${RED}✗ All download methods failed!${NC}"
        fi
    else
        echo -e "${RED}✗ Download failed and yt-dlp is not available.${NC}"
    fi
fi
