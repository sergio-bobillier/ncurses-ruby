require 'ncurses.rb'

Ncurses.initscr
Ncurses.printw('Hello World!!')
Ncurses.refresh
gets
Ncurses.endwin
