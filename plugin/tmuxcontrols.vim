function Runtmux_vertical()
	write
	!~/.local/share/nvim/site/pack/packer/start/tmuxcontrols/plugin/scripts/create_pane v $size_vertical $venv
	!tmux send -t 2 $tmuxInterpreter\ %:p Enter
endfunction

function Runtmux_horizontal()
	write
	!~/.local/share/nvim/site/pack/packer/start/tmuxcontrols/plugin/scripts/create_pane h $size_horizontal $venv
	!tmux send -t 2 $tmuxInterpreter\ %:p Enter
endfunction

function Runtmux_copy()
	write
	!~/.local/share/nvim/site/pack/packer/start/tmuxcontrols/plugin/scripts/create_pane h $size_horizontal $venv
	!tmux send -t 2 "$tmuxInterpreter %:p | tee /dev/tty | xclip -select c" Enter
endfunction


function Runtmux_command()
	write
	!~/.local/share/nvim/site/pack/packer/start/tmuxcontrols/plugin/scripts/create_pane h $size_horizontal $venv
	!tmux send -t 2 $tmuxcommand Enter
endfunction
function Runtmux_alternative()
	write
	!~/.local/share/nvim/site/pack/packer/start/tmuxcontrols/plugin/scripts/create_pane h $size_horizontal $venv
	!tmux send -t 2 $tmuxInterpreter_alternative\ %:p Enter
endfunction
function Runtmux_execute()
	write
	!~/.local/share/nvim/site/pack/packer/start/tmuxcontrols/plugin/scripts/create_pane h $size_horizontal $venv
	!tmux send -t 2 %:p Enter
endfunction
function Runtmux_clean()
	!tmux send -t 2 "clear" Enter
endfunction
function Stop_tmux()
	!tmux send-keys -t 2 'C-c'
endfunction
function Runtmux_new_file()
	!~/.local/share/nvim/site/pack/packer/start/tmuxcontrols/plugin/scripts/tmux_gf <cfile>
endfunction




" Renames tmux window after current buffer, than changes it back at closing time. tmux_rename variable must be on.
if exists('tmux_rename')
	autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . split(expand("%"),"/")[-1])
	au VimLeave * silent call system("tmux setw automatic-rename")
endif
