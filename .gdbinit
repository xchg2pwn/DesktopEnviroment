source ~/.config/pwndbg/gdbinit.py

set show-tips off
set print inferior-events off
set print thread-events off
set context-sections regs disasm code stack

set follow-fork-mode child
set show-flags on
