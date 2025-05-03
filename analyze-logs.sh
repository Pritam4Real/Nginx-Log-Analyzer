#!/bin/bash

LOG_FILE="logs.txt"

echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5

echo ""
echo "Top 5 most requested paths:"
awk -F\" '{print $2}' "$LOG_FILE" | awk '{print $2}' | sort | uniq -c | sort -rn | head -5

echo ""
echo "Top 5 response status codes:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5

echo ""
echo "Top 5 user agents:"
awk -F\" '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
