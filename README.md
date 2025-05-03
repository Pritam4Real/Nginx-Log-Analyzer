# 🔍 Nginx Log Analyzer (Shell Script)

A simple bash script to analyze an Nginx access log file (`logs.txt`) and extract the following insights:

* Top 5 IP addresses by request count
* Top 5 most requested paths
* Top 5 HTTP response status codes
* Top 5 user agents

---

## 🛠 Requirements

* Bash shell
* Tools: `awk`, `sort`, `uniq`, `head`
* Nginx access log file in standard format (`logs.txt`)

---

## 🚀 How to Use

1. **Clone the repository or copy the script**
2. **Place your Nginx access log as `logs.txt` in the same directory**
3. **Make the script executable**

   ```bash
   chmod +x analyze_logs.sh
   ```
4. **Run the script**

   ```bash
   ./analyze_logs.sh
   ```

---

## 📦 Sample Output

```
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

---

## 📌 Notes

* You can change the `LOG_FILE` variable in the script to point to a different log file.
* Ensure your log file follows the standard Nginx access log format.

---
