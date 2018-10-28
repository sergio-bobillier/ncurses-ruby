require 'ncurses.rb'

Ncurses.initscr
Ncurses.raw
Ncurses.raw
Ncurses.keypad(Ncurses.stdscr, true)
Ncurses.noecho

Ncurses.printw("Type any character to see it in bold\n")
ch = Ncurses.getch

if ch == Ncurses::KEY_F1
  Ncurses.printw('F1 key pressed')
else
  Ncurses.printw('The pressed key is ')
  Ncurses.attron(Ncurses::A_BOLD)
  Ncurses.printw(ch.chr)
  Ncurses.attroff(Ncurses::A_BOLD)
end

Ncurses.refresh
Ncurses.getch
Ncurses.endwin
