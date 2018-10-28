require 'ncurses.rb'

msg = 'Just a string'
row = []
col = []

Ncurses.initscr
Ncurses.getmaxyx(Ncurses.stdscr, row, col)

col = col[0]
row = row[0]

Ncurses.mvprintw(row / 2, (col - msg.size) / 2, '%s', msg)
Ncurses.mvprintw(row - 2, 0, "This screen has %d rows and %d columns\n", row, col)
Ncurses.printw('Try resizing your window (if possible) and then run this program again')

Ncurses.refresh
Ncurses.getch
Ncurses.endwin
