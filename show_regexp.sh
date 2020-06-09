#!/bin/bash
# Searches for and shows a regexp pattern

echo "1.1.1.1 hostname1.mydomain.com
1.1.1.2 hostname2.mydomain.com
1.1.1.3 hostname3.mydomain.com
1.1.1.4 hostname4.mydomain.com
"|
awk '{ match($0,/[ \t].*mydomain\.com/,arr); if (length(arr) > 0) print arr[0]  }'

# Output:
# hostname1.mydomain.com
# hostname2.mydomain.com
# hostname3.mydomain.com
# hostname4.mydomain.com
