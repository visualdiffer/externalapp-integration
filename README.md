# How to integrate OSX apps with VisualDiffer


VisualDiffer allows to choose

- how to view text files on external editors like BBEdit or SublimeText
- how to compare files on external comparator like Kaleidoscope or BBEdit

The integration requires some shell scripts, these scripts allow the editor caret to move position at specific line or open new buffers on existing application instance.

## Installation

You can install all integration scripts running the command shown below

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/visualdiffer/externalapp-integration/HEAD/install.sh)"
    
## Adding new application editor

New editors can be configured creating specific scripts inside the directory

    "$HOME/Library/Application Scripts/com.visualdiffer/"

### Script file name

The script must have a very specific file name ending with `.sh`.  
The file name is the so-called `App Bundle Identifier` and can be found by executing from `Terminal.app` the following command (the example uses Sublime Text)

	osascript -e 'id of app "/Applications/Sublime Text.app"'
	
that returns `com.sublimetext.4` so the file name will be

	com.sublimetext.4.sh

