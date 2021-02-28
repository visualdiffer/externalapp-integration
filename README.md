# How to integrate OSX apps with VisualDiffer


VisualDiffer allows to choose

- how to view text files on external editors like BBEdit or SublimeText
- how to compare files on external comparator like Kaleidoscope or BBEdit

The integration requires some shell scripts, these scripts allow the editor caret to move position at specific line or open new buffers on existing application instance.

## Installation

You can install all integration scripts running the command shown below

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/visualdiffer/externalapp-integration/HEAD/install.sh)"
    
