" Vim syntax file
" Language: LC-2200 assembly
" Author: Justin Prindle (jprindle6@gatech.edu)

if exists("b:current_syntax")
    finish
endif

" Instructions/directives

syntax match lc2200LabelDecl /^\s*\zs[A-Za-z_][A-Za-z0-9_]*:/

syntax keyword lc2200Instruction add nand addi lw sw beq jalr halt ei di reti
" noop is technically a directive, but it acts like an instruction
syntax keyword lc2200Instruction noop

syntax match lc2200Directive /\.word/

" Arguments

syntax match lc2200Register /\$\(zero\|at\|v0\|a[0-4]\|s[0-3]\|k0\|sp\|fp\|ra\)/

syntax match lc2200Number /-\=\<[0-9]\+\>/
syntax match lc2200Number /0x[A-Fa-f0-9]\+/

syntax match lc2200OffsetValue /-\=\<[0-9]\+\>/ nextgroup=lc2200OffsetRegister
syntax match lc2200OffsetValue /0x\=[A-Fa-f0-9]\+/ nextgroup=lc2200OffsetRegister
syntax region lc2200OffsetRegister start=+(+ end=+)+ contains=lc2200Register

syntax match lc2200Label /[A-Za-z_][A-Za-z0-9_]*/

" Comments

syntax keyword lc2200Todo contained TODO
syntax region lc2200Comment start=+!+ end=+$+ contains=lc2200Todo

" Definitions

hi def link lc2200LabelDecl         Define
hi def link lc2200Instruction       Keyword
hi def link lc2200Directive         Operator

hi def link lc2200Register          Type
hi def link lc2200Number            Number
hi def link lc2200OffsetValue       Constant
hi def link lc2200OffsetRegister    Constant
hi def link lc2200Label             Identifier

hi def link lc2200Comment           Comment
hi def link lc2200Todo              Todo

let b:current_syntax = "lc2200"
