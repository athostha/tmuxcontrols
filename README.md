# tmuxcontrols
Vim plugin for code debugging via tmux panes.

# Setup and usage
Paste these on your .vimrc

let tmux_gf=1 					" gf opens file on new tmux window, instead of a new vim buffer.
let tmux_rename=1 				" tmux winows will be renamed the same as the open file.
let $tmuxInterpreter = 'python3' 		" primary interpreter, this is the program that will run your script.
let $tmuxInterpreter_alternative = 'python' 	" secondary interpreter, second option of interpreter.
let $tmuxcommand = 'pytest' 			" runs command without argument.


### mapping options on tmuxcontrols
nmap çç :call Runtmux_horizontal()<CR><CR> 	" Opens new pane horizontally and runs script.
nmap çÇ :call Runtmux_vertical()<CR><CR>  	" Opens new pane vertically and runs script.
nmap çc :call Runtmux_alternative()<CR><CR> 	" Opens new pane horizontally and runs script with alternative interpreter.
nmap çe :call Runtmux_execute()<CR><CR>		" Executes script itself as shell command
nmap Ç :call Runtmux_command()<CR><CR>		" Opens new pane horizontally and runs command without argument.
nmap çl :call Runtmux_clean()<CR>		" Sends clear command to the debugging pane. 
nmap çs :call Stop_tmux()<CR><CR>		" Sends ^C command to the debugging pane.



### TODO
Run script on a new window
