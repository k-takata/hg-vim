" Vim syntax file
" Language:	hg (Mercurial) commit file
" Maintainer:	Ken Takata <kentkt at csc dot jp>
" Last Change:	2012 Jul 18
" Filenames:	hg-editor-*.txt
" License:	VIM License
" URL:		https://github.com/k-takata/hg-vim

if exists("b:current_syntax")
  finish
endif

syn match hgComment "^HG: .*$"
syn match hgUser    "^HG: user: \zs.*$"   contained containedin=hgComment
syn match hgBranch  "^HG: branch \zs.*$"  contained containedin=hgComment
syn match hgAdded   "^HG: \zsadded .*$"   contained containedin=hgComment
syn match hgChanged "^HG: \zschanged .*$" contained containedin=hgComment
syn match hgRemoved "^HG: \zsremoved .*$" contained containedin=hgComment

hi def link hgComment Comment
hi def link hgUser    String
hi def link hgBranch  String
hi def link hgAdded   Identifier
hi def link hgChanged Special
hi def link hgRemoved Constant

let b:current_syntax = "hg"
