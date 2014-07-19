# Color Logger

Make terminal output pretty

## usage:

    log [message] [-biuln] [-c color] [-k background-color]

    options

      -b        text is bold

      -i        text is italic

      -u        text is underlined

      -l        text blinks
      
      -r		reverse formatting

      -n        do NOT add new line ("\n") after message

      -c  color
            format text with specified named color. See below for available colors.

      -k  background-color
            format text with background-color of specified name. See below for available colors.

## Available Colors

![](demo.png)

## Examples

	# log a message in the default text color with default formatting
	log "message"
	
	# log a message in bold
	log "message" -b
	
	# log a message in red
	log "message" -c "red"
	
	# log a message in blue with a white background
	log "message" -c "blue" -k "white"
	
	# log a message in blue in bold and underlined
	log "message" -c "blue" -bu
	
Logging diffent formatting inline with `-n`

	log "usage: " -bn;
	log "log" -un;
	log " [-biulrn] [-c color] [-k background]"

would log

![](inline.png)


	