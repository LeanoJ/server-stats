# Server Stats Script

This script provides a summary of the server's CPU, memory, and disk usage. It also lists the top 5 processes by CPU and memory usage.

## Usage

To run the script, use the following command:

```bash
./server-stats.sh
```

## Output

The script outputs the following information:

### CPU Usage
- Displays the current CPU usage percentage.
- Lists the top 5 processes by CPU usage.

### Memory Usage
- Displays the current memory usage.
- Lists the top 5 processes by memory usage.

### Disk Usage
- Displays the total disk usage.

## Example Output

```plaintext
CPU Usage:
15.3%

TOP 5 processes by CPU usage:
1234, 1, /usr/bin/python3, 0.5, 10.0
5678, 1, /usr/bin/java, 1.0, 8.5
9101, 1, /usr/bin/node, 0.7, 7.2
1121, 1, /usr/bin/mysqld, 2.0, 6.8
3141, 1, /usr/bin/nginx, 0.3, 5.5
-------------------------------------------
Memory Usage:
2.5G/8.0G

TOP 5 processes by MEM usage:
1234, /usr/bin/python3, 10.0, 0.5
5678, /usr/bin/java, 8.5, 1.0
9101, /usr/bin/node, 7.2, 0.7
1121, /usr/bin/mysqld, 6.8, 2.0
3141, /usr/bin/nginx, 5.5, 0.3
-------------------------------------------
Total disk usage
500G 250G 50%
```

https://roadmap.sh/projects/server-stats
## Requirements

- `bash`
- `top`
- `ps`
- `awk`
- `sed`
- `df`

## License

This project is licensed under the MIT License.