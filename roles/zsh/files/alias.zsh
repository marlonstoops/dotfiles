alias jelasticssh='ssh 1127@gate.cloud.interhostsolutions.be -p 3022'
alias cdr='cd $(git rev-parse --show-toplevel)'
alias autotype='sleep 2.0; xdotool type "$(xclip -o -selection clipboard)"'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias mysqlphpmyadmin='docker run --name myadmin --rm -e PMA_ARBITRARY=1 -p 8080:80 phpmyadmin'
alias pgphpmyadmin='docker run --name myadmin --rm -e PGADMIN_DEFAULT_EMAIL=admin@admin.com -e PGADMIN_DEFAULT_PASSWORD=root -p 8080:80 dpage/pgadmin4'

time_diff() {
    # Parse the input arguments
    local input_time="$1:$2"

    # Get the current date in YYYY-MM-DD format
    local current_date=$(date +%Y-%m-%d)

    # Create a full timestamp with the current date and the provided time
    local timestamp="${current_date} ${input_time}"

    # Convert the given timestamp and current time to seconds since the Unix epoch
    local time_given=$(date -d "$timestamp" +%s)
    local time_now=$(date +%s)

    # Calculate the difference in seconds
    local time_difference=$((time_now - time_given))

    # Convert the time difference to hours and minutes
    local hours=$((time_difference / 3600))
    local minutes=$(( (time_difference % 3600) / 60 ))

    # Print the time difference
    echo "Time difference: $hours hours and $minutes minutes"
}
