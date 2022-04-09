function Runontmux()
	write
	!~/.vim/plugged/tmuxcontrols/scripts/tmuxscreens %
endfunction
function Runontmuxv()
	write
	!~/.vim/plugged/tmuxcontrols/scripts/tmuxscreensV %
endfunction
function Runtmuxt()
	write
	!~/.vim/plugged/tmuxcontrols/scripts/tmuxscreensT
endfunction
function Runtmuxclean()
	write
	!~/.vim/plugged/tmuxcontrols/scripts/tmuxscreens2 %
endfunction
function Cleantmux()
	!tmux send -t 2 "clear" Enter
endfunction
function Stoptmux()
	!tmux send-keys -t 2 'C-c'
endfunction



" Renames tmux window after current buffer, than changes it back at closing time
autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand("%"))
au VimLeave * silent call system("tmux setw automatic-rename")

" Remaps gf to open file in a new tmux window
nmap gf :!~/.vim/plugged/tmuxcontrols/scripts/gf <cfile><CR>

" Manages tmux as a debugging tool
nmap çc :call Runtmuxclean()<CR> 
nmap Ç :call Runtmuxt()<CR> 
nmap çç :call Runontmux()<CR> 
nmap çÇ :call Runontmuxv()<CR> 
nmap çl :call Cleantmux()<CR> 
nmap çs :call Stoptmux()<CR><CR>



