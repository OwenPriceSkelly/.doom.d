;;; init.el -*- lexical-binding: t; -*-
(doom! :completion
       (company +childframe)            ; the ultimate code completion backend
       (ivy +fuzzy                      ; a search engine for love and life
            +prescient
            +icons
            +childframe)

       :ui
       deft                             ; notational velocity for Emacs
       zen
       doom                             ; what makes DOOM look the way it does
       doom-dashboard                   ; a nifty splash screen for Emacs
       ;;doom-quit
       ligatures ;; +extra    ; ligatures and symbols to make your code pretty again
       hl-todo   ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       hydra
       ;;indent-guides        ; highlighted indent columns
       ;;minimap
       modeline                      ; snazzy, Atom-inspired modeline, plus API
       nav-flash                     ; blink the current line after jumping
       ophints                       ; highlight the region an operation acts on
       (popup +all ; tame sudden yet inevitable temporary windows; catch all popups that start with an asterix
              +defaults)             ; default popup rules
       treemacs                      ; a project drawer, like neotree but cooler
       ;;unicode
       vc-gutter       ; vcs diff in the fringe
       ;;vi-tilde-fringe      ; fringe tildes to mark beyond EOB
       ;;window-select        ; visually switch windows
       workspaces             ; tab emulation, persistence & separate workspaces

       :editor
       lispy
       (evil +commands
             +everywhere)               ; come to the dark side, we have cookies
       file-templates                   ; auto-snippets for empty files
       fold                             ; (nigh) universal code folding
       (format +onsave)                 ; automated prettiness
       multiple-cursors                 ; editing in many places at once
       ;;parinfer             ; turn lisp into python, sort of
       rotate-text               ; cycle region at point between text candidates
       snippets                  ; my elves. They type so I don't have to
       word-wrap                 ; soft wrapping with language-aware indent ;

       :emacs
       (dired +ranger
              +icons)             ; making dired pretty [functional]
       electric                   ; smarter, keyword-based electric-indent
       (ibuffer +icons)           ; interactive buffer management
       vc                         ; version-control and Emacs, sitting in a tree
       (undo +tree)

       :term
       eshell                 ; a consistent, cross-platform shell (WIP)
       ;; vterm
       ;; shell               ; a terminal REPL for Emacs
       term                             ; another terminals in Emacs


       :checkers
       (syntax +childframe)          ; tasing you for every semicolon you forget
       spell                         ; tasing you for misspelling mispelling
       ;;grammar              ; tasing grammar mistake every you make

       :tools
       ;;ansible
       debugger              ; FIXME stepping through code, to help you add bugs
       ;;direnv
       docker
       ;;editorconfig         ; let someone else argue about tabs vs spaces
       ein                ; tame Jupyter notebooks with emacs
       (eval +overlay)    ; run code, run (also, repls)
       ;;gist                 ; interacting with github gists
       (lookup +docsets) ; helps you navigate your code and documentation ...or in Dash docsets locally
       lsp               ;; +eglot ;; +peek

       (magit +forge)                   ; a git porcelain for Emacs
       make                             ; run make tasks from Emacs
       pass                             ; password manager for nerds
       pdf                              ; pdf enhancements
       ;;prodigy              ; FIXME managing external services & code builders
       rgb             ; creating color strings
       terraform       ; infrastructure as code
       ;;tmux                 ; an API for interacting with tmux
       upload                         ; map local to remote projects via ssh/ftp

       :os
       (:if IS-MAC macos)               ; improve compatibility with macOS
       tty                              ; improve the terminal Emacs experience

       :lang
       ;;agda                 ; types of types of types of types...
       ;;assembly             ; assembly for fun or debugging
       (cc  +lsp)                       ; C/C++/Obj-C madness
       clojure                          ; java with a lisp
       ;;common-lisp          ; if you've seen one lisp, you've seen them all
       ;;coq                  ; proofs-as-programs
       ;;crystal              ; ruby at the speed of c
       (csharp +lsp)             ; unity, .NET, and mono shenanigans
       data                      ; config/data formats
       ;;elixir               ; erlang done right
       ;;elm                  ; care for a cup of TEA?
       emacs-lisp                       ; drown in parentheses
       ;;erlang               ; an elegant language for a more civilized age
       ;;ess                  ; emacs speaks statistics
       ;;faust                ; dsp, but you get to keep your soul
       ;;fsharp               ; ML stands for Microsoft's Language
       ;;fstar                ; (dependent) types and (monadic) effects and Z3
       ;;go                   ; the hipster dialect
       ;;(haskell +dante)     ; a language that's lazier than I am
       ;;hy                   ; readability of scheme w/ speed of python
       ;;(java +meghanada)    ; the poster child for carpal tunnel syndrome
       ;;javascript           ; all(hope(abandon(ye(who(enter(here))))))
       ;;julia                ; a better, faster MATLAB
       ;;kotlin               ; a better, slicker Java(Script)
       (latex +cdlatex
              +latexmk)
       ;;lean
       ;;factor
       ;;ledger               ; an accounting system in Emacs
       ;;lua                  ; one-based indices? one-based indices
       markdown                         ; writing docs for people to ignore
       yaml
       ;;nim                  ; python + lisp at the speed of c
       nix                           ; I hereby declare "nix geht mehr!"
       ;;ocaml                ; an objective camel
       (org +pretty
            +roam                    ; organize your plain life in plain text
            +dragndrop               ; drag & drop files/images into org buffers
            +pandoc                  ; export-with-pandoc support
            +noter
            ;; +hugo          ; use Emacs for hugo blogging
            ;;+present        ; using org-mode for presentations
            ;;+gnuplot
            ;;+jupyter        ; ipython/jupyter support for babel
            ;;+pomodoro       ; be fruitful with the tomato technique
            +journal)

       ;;perl                 ; write code no one else can comprehend
       ;;php                  ; perl's insecure younger brother
       ;;plantuml             ; diagrams for confusing people more
       ;;purescript           ; javascript, but functional
       (python +lsp
               +pyright)                ; beautiful is better than ugly ;
       ;;qt                   ; the 'cutest' gui framework ever
       ;;racket               ; a DSL for DSLs
       rest                             ; Emacs as a REST client
       ;;rst                  ; ReST in peace
       ;;ruby                 ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       ;;rust                 ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;;scala                ; java, but good
       scheme                           ; a fully conniving family of lisps
       (sh +fish)
       ;;solidity             ; do you need a blockchain? No.
       ;;swift                ; who asked for emoji variables?
       ;;terra                ; Earth and Moon in alignment for performance.
       ;;web                  ; the tubes

       :email
       ;;(mu4e +gmail)
       ;;notmuch
       ;;(wanderlust +gmail)

       :config
       (default +bindings
         +smartparens)
       literate

       :app
       ;;calendar
       ;;irc                  ; how neckbeards socialize
       ;;(rss +org)           ; emacs as an RSS reader
       ;;twitter              ; twitter client https://twitter.com/vnought
       )
