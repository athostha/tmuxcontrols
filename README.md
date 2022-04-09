# tmuxcontrols
Vim plugin for python debugging via tmux panes.

### Usage
çç - Splits the screen horizontally and executes the script on the new pane.
çÇ - Splits the screen Vertically and executes the script on the new pane.
çc - Splits the screen horizontally and executes the script on the new pane, but with the normal python interpreter.

If there's a second pane, the script will be executed there. It won't create a new one.

Ç - Runs pytest.
çl - Sends a clear command to the debugger pane.
çs - Sends a ^C command to the debugger pane.

### Warning
Right now the çç and çÇ commands are directed to a custom script to be used as interpreter. To be fixed. 
