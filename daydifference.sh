#!/bin/bash

# Check if exactly two arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <start_date> <end_date>"
    exit 1
fi

start_date="$1"
end_date="$2"

# Extract month, day, and year components from the input
start_month="${start_date:0:2}"
start_day="${start_date:2:2}"
start_year="20${start_date:4:2}"

end_month="${end_date:0:2}"
end_day="${end_date:2:2}"
end_year="20${end_date:4:2}"

# Create date strings in MM/DD/YY format
start_date_str="$start_month/$start_day/$start_year"
end_date_str="$end_month/$end_day/$end_year"

# Calculate the difference in days
days_diff=$(( ( $(date -d "$end_date_str" +%s) - $(date -d "$start_date_str" +%s) ) / 86400 ))

echo "Number of days between $start_date and $end_date: $days_diff days"
