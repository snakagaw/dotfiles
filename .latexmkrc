#!/usr/bin/perl
$latex = 'platex -synctex=1 -halt-on-error';
$latex_silent = 'platex -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex = 'pbibtex';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendx %O -o %D %S';
$max_repeat = 7;
$pdf_mode = 3;
$pvc_view_file_via_temporary = 0;
$pdf_previewer = "open -ga /Applications/Skim.app";
