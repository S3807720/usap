cmd_scripts/kconfig/mconf := gcc   -o scripts/kconfig/mconf scripts/kconfig/mconf.o scripts/kconfig/lxdialog/checklist.o scripts/kconfig/lxdialog/inputbox.o scripts/kconfig/lxdialog/menubox.o scripts/kconfig/lxdialog/textbox.o scripts/kconfig/lxdialog/util.o scripts/kconfig/lxdialog/yesno.o scripts/kconfig/confdata.o scripts/kconfig/expr.o scripts/kconfig/lexer.lex.o scripts/kconfig/parser.tab.o scripts/kconfig/preprocess.o scripts/kconfig/symbol.o scripts/kconfig/util.o   -lncursesw -ltinfo
