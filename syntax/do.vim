" Vim syntax file
" Language:     Mentor Graphics Questa SIM do file
" Author:       Amal Khailtash <amal.khailtash@gmail.com>
" Maintainer:   Amal Khailtash <amal.khailtash@gmail.com>
" Last Change:  Wed Apr  9 11:48:16 EDT 2014
" Version:      1.0
" Revision Comments:
"   Amal Khailtash <amal.khailtash@gmail.com> - Tue, Oct 09, 2012  7:46:15 PM
"     1.0 - Initial revision (based on Questa Sim 10.3)

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Read the TCL syntax to start with
runtime! syntax/tcl.vim

" ----------------------------------------------------------------------------------------------------------------------
" Questa SIM Commands
" ----------------------------------------------------------------------------------------------------------------------
syntax match   doCommand /\.main\s\+clear/
syntax keyword doCommand abort
syntax match   doCommand /add\s\+\(atv\|button\|dataflow\|list\|log\|memory\|schematic\|testbrowser\|watch\|wave\)/
syntax keyword doCommand add_cmdhelp add_menu add_menucb add_menuitem add_separator add_submenu alias
syntax match   doCommand /archive\s\+\(load\|write\)/
syntax match   doCommand /assertion\s\+\(action\|active\|count\|enable\|fail\|pass\|profile\|report\)/
syntax match   doCommand /atv\s\+log/
syntax keyword doCommand batch_mode bd
syntax match   doCommand /bookmark\s\+\(add\|delete\|goto\|list\) wave/
syntax keyword doCommand bp call cd cdbg change change_menu_cmd
syntax match   doCommand /check\s\+contention\s\+\(add\|config\|off\)/
syntax match   doCommand /check\s\+float\s\+\(add\|config\|off\)/
syntax match   doCommand /check\s\+stable\s\+\(off\|on\)/
syntax keyword doCommand checkpoint
syntax match   doCommand /classinfo\s\+\(ancestry\|descriptive\|find\|instances\|isa\|report\|stats\|trace\|types\)/
syntax match   doCommand /compare\s\+\(add\|annotate\|clock\|configure\|continue\|delete\|end\|info\|list\|options\|reload\|reset\|run\|savediffs\|saverules\|see\|start\|stop\|update\)/
syntax keyword doCommand configure context
syntax match   doCommand /coverage\s\+\(analyze\|attribute\|clear\|create\|edit\|exclude\|goal\|open\|ranktest\|report\|save\|tag\|testnames\|unlinked\|weight\)/
syntax match   doCommand /dataset\s\+\(alias\|clear\|close\|config\|current\|info\|list\|open\|rename\|restart\|save\|snapshot\)/
syntax keyword doCommand delete describe disablebp disable_menu disable_menuitem do down drivers dumplog64 echo
syntax keyword doCommand edit enablebp enable_menu enable_menuitem encoding environment examine exit
syntax match   doCommand /fcover\s\+\(configure\)/
syntax match   doCommand /find\(\s\+\(connections\|drivers\|infiles\|insource\)\)\?/
syntax keyword doCommand force formatTime
syntax match   doCommand /fsm\s\+\(list\|properties\|view\)/
syntax match   doCommand /gc\s\+\(configure\|run\)/
syntax match   doCommand /gdb\s\+\(dir\)/
syntax keyword doCommand getactivecursortime getactivemarkertime help history jobspy layout lecho left log lshift
syntax keyword doCommand lsublist
syntax match   doCommand /mem\s\+\(compare\|display\|list\|load\|save\|search\)/
syntax keyword doCommand next noforce nolog notepad noview nowhen onbreak onElabError onerror onfinish
syntax match   doCommand /pa\s\+\(autotestplan\|msg\|report\)/
syntax keyword doCommand pause pop
syntax match   doCommand /power\s\+\(add\|off\|on\|report\|reset\)/
syntax keyword doCommand precision printenv
syntax match   doCommand /process\s\+\(report\|clear\|interval\|off\|on\|open\|option\|reload\|report\|save\|summary\)/
syntax keyword doCommand project
syntax match   doCommand /property\s\+\(list\|wave\)/
syntax keyword doCommand push pwd questasim quietly quit qverilog
syntax match   doCommand /radix\(\s\+\(define\|delete\|list\|names\|signal\)\)\?/
syntax keyword doCommand readers report restart restore resume right run runStatus sccom scgenmod sdfcom search
syntax keyword doCommand searchlog see seetime setenv shift show simstats
syntax match   doCommand /stack\s\+\(down\|frame\|level\|tb\|up\)/
syntax keyword doCommand status step stop suppress tb tcheck_set tcheck_status
" Time
syntax match   doCommand /\(eq\|neq\|eq\|neq\|lt\|gt\|lte\|gte\|add\|sub\|mul\|div\|intTo\|scale\|RealTo\|valid\|format\)Time/
syntax match   doCommand /toggle\s\+\(add\|disable\|enable\|report\|reset\)/
syntax match   doCommand /tr\s\+\(color\|order\|uid\)/
syntax keyword doCommand transcribe
syntax match   doCommand /transcript\(\s\+\(file\|off\|on\|path\|sizelimit\)\)\?/
syntax match   doCommand /triage\s\+\(dbfile\|dbinsert\|dbrefresh\|query\|report\)/
syntax keyword doCommand tssi2mti typespec
syntax match   doCommand /ui_VVMode\(\s\+\(full\|logclass\|logobj\|nolog\|off\)\)\?/
syntax keyword doCommand unsetenv up
syntax match   doCommand /uvm\s\+\(call\|configtracing\|displayobjections\|handle\|mapmode\|printconfig\|printfactory\|printstreams\|printtopology\|setverbosity\|simpath\|traceobjections\|uvmpath\)/
syntax match   doCommand /vcd\s\+\(add\|checkpoint\|comment\|dumpports\(all\|flush\|limit\|off\|on\)\?\|file\(s\)\?\|flush\|limit\|off\|on\)/
syntax keyword doCommand vcd2wlf vcom
syntax match   doCommand /vcover\s\+\(attribute\|diff\|dump\|history\|merge\|ranktest\|report\|stats\|testnames\)/
syntax keyword doCommand vdel vdir vencrypt verror vgencomp vhencrypt view
syntax match   doCommand /virtual\s\+\(count\|define\|delete\|describe\|signals\|expand\|function\|hide\|log\|nohide\|nolog\|region\|save\|show\|signal\|type\)/
syntax keyword doCommand vlib vlog vmake vmap vopt vsim
syntax match   doCommand /vsim\(Auth\|Date\|Id\|Version\(String\)\?\)/
syntax keyword doCommand vsim_break vsource
" wave
syntax match   doCommand /wave\s\+cursor\s\+\(active\|add\|configure\|delete\|see\|time\)/
syntax match   doCommand /wave\s\+expand\s\+\(mode\|all\|cursor\|range\)/
syntax match   doCommand /wave\s\+collapse\s\+\(all\|cursor\|range\)/
syntax match   doCommand /wave\s\+\(interrupt\|refresh\|seetime\)/
syntax match   doCommand /wave\s\+zoom\s\+\(in\|out\|full\|last\|range\)/
syntax match   doCommand /wave\s\+\(create\|edit\|export\|import\|modify\)/
syntax keyword doCommand when where wlf2log wlf2vcd wlfman wlfrecover
syntax match   doCommand /write\s\+\(cell_report\|format\|list\|preferences\|report\|timing\|transcript\|tssi\|wave\)/
syntax keyword doCommand xml2ucdb

" ----------------------------------------------------------------------------------------------------------------------
" Constants
" ----------------------------------------------------------------------------------------------------------------------
"syntax keyword doConstant     .

" ----------------------------------------------------------------------------------------------------------------------
" Properties
" ----------------------------------------------------------------------------------------------------------------------
"syntax keyword doProperty     .

" ----------------------------------------------------------------------------------------------------------------------
" Command Flags
" ----------------------------------------------------------------------------------------------------------------------
"syntax match   doFlag      "[[:space:]]-[[:alpha:]]*\>"

" ----------------------------------------------------------------------------------------------------------------------
" Define the default highlighting.
" ----------------------------------------------------------------------------------------------------------------------
highligh default link doCommand      Operator
"highligh default link doUnsupported  WarningMsg
"highligh default link doConstant     Constant
"highligh default link doProperty     Type
"highligh default link doFlags        Special

let b:current_syntax = "do"

" vim: fileformat=unix tabstop=2 shiftwidth=2 expandtab
