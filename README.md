# Nginx-Log-Analyzer
A simple shell script tool to analyze Nginx access logs from the command line. It parses a standard access log file and provides insights such as:  
🔢 Top 5 IP addresses by request count  
📄 Top 5 requested paths  
✅ Top 5 response status codes  
🧭 Top 5 user agents

🛠 Requirements
Unix/Linux system (or WSL on Windows)

Shell with awk, sort, uniq, head installed

Nginx access log file (standard format)

🚀 How to Use
1. Clone the Repository
bash

git clone https://github.com/your-username/nginx-log-analyzer.git
cd nginx-log-analyzer

2. Place Your Log File
Make sure your Nginx access log file is named logs.txt and placed in the same directory as the script.

Or edit the script and update LOG_FILE="your-log-file.txt

3. Make the Script Executable
bash

chmod +x analyze_logs.sh
5. Run the Script
bash

./analyze_logs.sh

📌 What It Shows
Top 5 IP addresses with the most requests

Top 5 most requested paths

Top 5 HTTP status codes

Top 5 user agents

#ouput---

Top 5 IP addresses with the most requests:
    387 178.128.94.113
    387 142.93.136.176
    386 138.68.248.85
    385 159.89.185.30
    140 86.134.118.70

Top 5 most requested paths:
   1623 /v1-health
     83 /
     64 /v1-me
     40 /v1-list-workspaces
     26 /v1-list-pomodoro-history?startDate=2024-10-04&endDate=2024-10-05

Top 5 response status codes:
   1883 200
    254 404
    205 304
     18 400
     10 "-"

Top 5 user agents:
   1547 DigitalOcean Uptime Probe 0.22.0 (https://digitalocean.com)
    142 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36
    116 Custom-AsyncHttpClient
     96 Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.140
     76 Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 (StatusCake)


💡 Optional

You can modify the script to:

Show results for a specific time period

Analyze error logs

Export results to a file


