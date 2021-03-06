
" Description:	html indenter
" Author:	Johannes Zellner <johannes@zellner.org>
" Last Change:	Mo, 05 Jun 2006 22:32:41 CEST
" 		Restoring 'cpo' and 'ic' added by Bram 2006 May 5
" Globals:	g:html_indent_tags	   -- indenting tags
"		g:html_indent_strict       -- inhibit 'O O' elements
"		g:html_indent_strict_table -- inhibit 'O -' elements

" Only load this indent file when no other was loaded.
"if exists("b:did_indent")
    "finish
"endif
"let b:did_indent = 1

if exists("g:js_indent")
	so g:js_indent
else
	ru! indent/javascript.vim
endif

" echo "Sourcing html indent"


" [-- local settings (must come before aborting the script) --]
setlocal indentexpr=HtmlIndentGetter(v:lnum)
setlocal indentkeys=o,O,*<Return>,<>>,{,}


if exists('g:html_indent_tags')
    unlet g:html_indent_tags
endif

" [-- helper function to assemble tag list --]
fun! <SID>HtmlIndentPush(tag)
    if exists('g:html_indent_tags')
	let g:html_indent_tags = g:html_indent_tags.'\|'.a:tag
    else
	let g:html_indent_tags = a:tag
    endif
endfun


" [-- <ELEMENT ? - - ...> --]
call <SID>HtmlIndentPush('a')
call <SID>HtmlIndentPush('abbr')
call <SID>HtmlIndentPush('acronym')
call <SID>HtmlIndentPush('address')
call <SID>HtmlIndentPush('b')
call <SID>HtmlIndentPush('bdo')
call <SID>HtmlIndentPush('big')
call <SID>HtmlIndentPush('blockquote')
call <SID>HtmlIndentPush('button')
call <SID>HtmlIndentPush('caption')
call <SID>HtmlIndentPush('center')
call <SID>HtmlIndentPush('cite')
call <SID>HtmlIndentPush('code')
call <SID>HtmlIndentPush('colgroup')
call <SID>HtmlIndentPush('del')
call <SID>HtmlIndentPush('dfn')
call <SID>HtmlIndentPush('dir')
call <SID>HtmlIndentPush('div')
call <SID>HtmlIndentPush('dl')
call <SID>HtmlIndentPush('em')
call <SID>HtmlIndentPush('fieldset')
call <SID>HtmlIndentPush('font')
call <SID>HtmlIndentPush('form')
call <SID>HtmlIndentPush('frameset')
call <SID>HtmlIndentPush('h1')
call <SID>HtmlIndentPush('h2')
call <SID>HtmlIndentPush('h3')
call <SID>HtmlIndentPush('h4')
call <SID>HtmlIndentPush('h5')
call <SID>HtmlIndentPush('h6')
call <SID>HtmlIndentPush('i')
call <SID>HtmlIndentPush('iframe')
call <SID>HtmlIndentPush('ins')
call <SID>HtmlIndentPush('kbd')
call <SID>HtmlIndentPush('label')
call <SID>HtmlIndentPush('legend')
call <SID>HtmlIndentPush('map')
call <SID>HtmlIndentPush('menu')
call <SID>HtmlIndentPush('noframes')
call <SID>HtmlIndentPush('noscript')
call <SID>HtmlIndentPush('object')
call <SID>HtmlIndentPush('ol')
call <SID>HtmlIndentPush('optgroup')
" call <SID>HtmlIndentPush('pre')
call <SID>HtmlIndentPush('q')
call <SID>HtmlIndentPush('s')
call <SID>HtmlIndentPush('samp')
call <SID>HtmlIndentPush('script')
call <SID>HtmlIndentPush('select')
call <SID>HtmlIndentPush('small')
call <SID>HtmlIndentPush('span')
call <SID>HtmlIndentPush('strong')
call <SID>HtmlIndentPush('style')
call <SID>HtmlIndentPush('sub')
call <SID>HtmlIndentPush('sup')
call <SID>HtmlIndentPush('table')
call <SID>HtmlIndentPush('textarea')
call <SID>HtmlIndentPush('title')
call <SID>HtmlIndentPush('tt')
call <SID>HtmlIndentPush('u')
call <SID>HtmlIndentPush('ul')
call <SID>HtmlIndentPush('var')

" 为quasar修改
call <SID>HtmlIndentPush('q-app')
call <SID>HtmlIndentPush('template')
call <SID>HtmlIndentPush('q-page')
call <SID>HtmlIndentPush('q-page-container')
call <SID>HtmlIndentPush('q-card')
call <SID>HtmlIndentPush('q-card-title')
call <SID>HtmlIndentPush('q-card-main')
call <SID>HtmlIndentPush('q-tooltip')
call <SID>HtmlIndentPush('q-toolbar')
call <SID>HtmlIndentPush('q-toolbar-title')
call <SID>HtmlIndentPush('q-btn')
call <SID>HtmlIndentPush('q-btn-group')
call <SID>HtmlIndentPush('q-btn-dropdown')
call <SID>HtmlIndentPush('q-layout')
call <SID>HtmlIndentPush('q-layout-drawer')
call <SID>HtmlIndentPush('q-layout-header')
call <SID>HtmlIndentPush('q-tabs')
call <SID>HtmlIndentPush('q-tab')
call <SID>HtmlIndentPush('q-tab-pane')
call <SID>HtmlIndentPush('q-btn-group')
call <SID>HtmlIndentPush('q-input')
call <SID>HtmlIndentPush('q-list')
call <SID>HtmlIndentPush('q-item')
call <SID>HtmlIndentPush('q-item-side')
call <SID>HtmlIndentPush('q-item-tile')
call <SID>HtmlIndentPush('q-item-main')
call <SID>HtmlIndentPush('q-field')
call <SID>HtmlIndentPush('q-autocomplete')
call <SID>HtmlIndentPush('q-slider')
call <SID>HtmlIndentPush('q-select')
call <SID>HtmlIndentPush('q-range')
call <SID>HtmlIndentPush('q-checkbox')
call <SID>HtmlIndentPush('q-toggle')
call <SID>HtmlIndentPush('q-page')
call <SID>HtmlIndentPush('q-page-sticky')
call <SID>HtmlIndentPush('q-datetime')
call <SID>HtmlIndentPush('q-datetime-picker')
call <SID>HtmlIndentPush('q-table')
call <SID>HtmlIndentPush('q-td')
call <SID>HtmlIndentPush('q-icon')
call <SID>HtmlIndentPush('q-tr')
call <SID>HtmlIndentPush('q-modal')
call <SID>HtmlIndentPush('q-modal-layout')
call <SID>HtmlIndentPush('q-uploader')

" 为iviewui修改
call <SID>HtmlIndentPush('i-switch')
call <SID>HtmlIndentPush('i-button')
call <SID>HtmlIndentPush('Button')
call <SID>HtmlIndentPush('i-input')
call <SID>HtmlIndentPush('i-circle')
call <SID>HtmlIndentPush('Input')
call <SID>HtmlIndentPush('i-col')
call <SID>HtmlIndentPush('Row')
call <SID>HtmlIndentPush('i-table')
call <SID>HtmlIndentPush('span')
call <SID>HtmlIndentPush('Span')
call <SID>HtmlIndentPush('Tabs')
call <SID>HtmlIndentPush('Tab-pane')
call <SID>HtmlIndentPush('Card')
call <SID>HtmlIndentPush('Modal')
call <SID>HtmlIndentPush('i-menu')
call <SID>HtmlIndentPush('sub-menu')
call <SID>HtmlIndentPush('menu-item')
call <SID>HtmlIndentPush('menu-group')
call <SID>HtmlIndentPush('breadcrumb')
call <SID>HtmlIndentPush('i-col')
call <SID>HtmlIndentPush('auto-complete')
call <SID>HtmlIndentPush('date-picker')
call <SID>HtmlIndentPush('input-number')
call <SID>HtmlIndentPush('i-form')
call <SID>HtmlIndentPush('i-select')
call <SID>HtmlIndentPush('i-option')
call <SID>HtmlIndentPush('form-item')
call <SID>HtmlIndentPush('button-group')
""""""""""""""""""""""""""""""
call <SID>HtmlIndentPush('v-app')
call <SID>HtmlIndentPush('v-button')
call <SID>HtmlIndentPush('v-switch')
call <SID>HtmlIndentPush('v-card')
call <SID>HtmlIndentPush('v-card-text')
call <SID>HtmlIndentPush('v-card-title')
call <SID>HtmlIndentPush('v-dialog')
call <SID>HtmlIndentPush('v-toolbar')
call <SID>HtmlIndentPush('v-toolbar-title')
call <SID>HtmlIndentPush('v-toolbar-side-icon')
call <SID>HtmlIndentPush('v-toolbar-items')
call <SID>HtmlIndentPush('v-icon')
call <SID>HtmlIndentPush('v-menu')
call <SID>HtmlIndentPush('v-spacer')
call <SID>HtmlIndentPush('v-text-field')
call <SID>HtmlIndentPush('v-data-table')
call <SID>HtmlIndentPush('template')
call <SID>HtmlIndentPush('v-list')
call <SID>HtmlIndentPush('v-list-tile')
call <SID>HtmlIndentPush('v-list-tile-title')
call <SID>HtmlIndentPush('v-flux')
call <SID>HtmlIndentPush('v-layout')
call <SID>HtmlIndentPush('v-container')
call <SID>HtmlIndentPush('v-tabs')
call <SID>HtmlIndentPush('v-tab')
call <SID>HtmlIndentPush('v-tab-item')
""""""""""""""""""""""""""""""

" [-- <ELEMENT ? O O ...> --]
if !exists('g:html_indent_strict')
    call <SID>HtmlIndentPush('body')
    call <SID>HtmlIndentPush('head')
    call <SID>HtmlIndentPush('html')
    call <SID>HtmlIndentPush('tbody')
endif


" [-- <ELEMENT ? O - ...> --]
if !exists('g:html_indent_strict_table')
    call <SID>HtmlIndentPush('th')
    call <SID>HtmlIndentPush('td')
    call <SID>HtmlIndentPush('tr')
    call <SID>HtmlIndentPush('tfoot')
    call <SID>HtmlIndentPush('thead')
endif

delfun <SID>HtmlIndentPush

let s:cpo_save = &cpo
set cpo-=C

" [-- count indent-increasing tags of line a:lnum --]
fun! <SID>HtmlIndentOpen(lnum, pattern)
    let s = substitute('x'.getline(a:lnum),
    \ '.\{-}\(\(<\)\('.a:pattern.'\)\>\)', "\1", 'g')
    let s = substitute(s, "[^\1].*$", '', '')
    return strlen(s)
endfun

" [-- count indent-decreasing tags of line a:lnum --]
fun! <SID>HtmlIndentClose(lnum, pattern)
    let s = substitute('x'.getline(a:lnum),
    \ '.\{-}\(\(<\)/\('.a:pattern.'\)\>>\)', "\1", 'g')
    let s = substitute(s, "[^\1].*$", '', '')
    return strlen(s)
endfun

" [-- count indent-increasing '{' of (java|css) line a:lnum --]
fun! <SID>HtmlIndentOpenAlt(lnum)
    return strlen(substitute(getline(a:lnum), '[^{]\+', '', 'g'))
endfun

" [-- count indent-decreasing '}' of (java|css) line a:lnum --]
fun! <SID>HtmlIndentCloseAlt(lnum)
    return strlen(substitute(getline(a:lnum), '[^}]\+', '', 'g'))
endfun

" [-- return the sum of indents respecting the syntax of a:lnum --]
fun! <SID>HtmlIndentSum(lnum, style)
    if a:style == match(getline(a:lnum), '^\s*</')
	if a:style == match(getline(a:lnum), '^\s*</\<\('.g:html_indent_tags.'\)\>')
	    let open = <SID>HtmlIndentOpen(a:lnum, g:html_indent_tags)
	    let close = <SID>HtmlIndentClose(a:lnum, g:html_indent_tags)
	    if 0 != open || 0 != close
		return open - close
	    endif
	endif
    endif
    if '' != &syntax &&
	\ synIDattr(synID(a:lnum, 1, 1), 'name') =~ '\(css\|java\).*' &&
	\ synIDattr(synID(a:lnum, strlen(getline(a:lnum)), 1), 'name')
	\ =~ '\(css\|java\).*'
	if a:style == match(getline(a:lnum), '^\s*}')
	    return <SID>HtmlIndentOpenAlt(a:lnum) - <SID>HtmlIndentCloseAlt(a:lnum)
	endif
    endif
    return 0
endfun

fun! HtmlIndentGetter(lnum)
	
	echo "Grabbing html indent for line: " . a:lnum
    " Find a non-empty line above the current line.
    let lnum = prevnonblank(a:lnum - 1)

    " Hit the start of the file, use zero indent.
    if lnum == 0
	return 0
    endif

    let restore_ic = &ic
    setlocal ic " ignore case

    " [-- special handling for <pre>: no indenting --]
    if getline(a:lnum) =~ '\c</pre>'
		\ || 0 < searchpair('\c<pre>', '', '\c</pre>', 'nWb')
		\ || 0 < searchpair('\c<pre>', '', '\c</pre>', 'nW')
	" we're in a line with </pre> or inside <pre> ... </pre>
	if restore_ic == 0
	  setlocal noic
	endif
	return -1
    endif

    " [-- special handling for <javascript>: use cindent --]
    let js = '<script.*type\s*=.*javascript'

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " by Tye Zdrojewski <zdro@yahoo.com>, 05 Jun 2006
    " ZDR: This needs to be an AND (we are 'after the start of the pair' AND
    "      we are 'before the end of the pair').  Otherwise, indentation
    "      before the start of the script block will be affected; the end of
    "      the pair will still match if we are before the beginning of the
    "      pair.
    "
    if   0 < searchpair(js, '', '</script>', 'nWb')
    \ && 0 < searchpair(js, '', '</script>', 'nW')
	" we're inside javascript
	
	if getline(lnum) !~ js && getline(a:lnum) !~ '</script>'
	    if restore_ic == 0
	      setlocal noic
	    endif	
		return GetJsIndent(a:lnum)
	endif
    endif

    if getline(lnum) =~ '\c</pre>'
	" line before the current line a:lnum contains
	" a closing </pre>. --> search for line before
	" starting <pre> to restore the indent.
	let preline = prevnonblank(search('\c<pre>', 'bW') - 1)
	if preline > 0
	    if restore_ic == 0
	      setlocal noic
	    endif
	    return indent(preline)
	endif
    endif

    let ind = <SID>HtmlIndentSum(lnum, -1)
    let ind = ind + <SID>HtmlIndentSum(a:lnum, 0)

    if restore_ic == 0
	setlocal noic
    endif

    return indent(lnum) + (&sw * ind)
endfun

let &cpo = s:cpo_save
unlet s:cpo_save

" [-- EOF <runtime>/indent/html.vim --]
