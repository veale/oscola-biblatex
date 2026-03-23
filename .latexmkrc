# .latexmkrc — latexmk configuration for oscola-biblatex development
#
# All intermediate and output files go into build/ so the source tree
# stays clean.  Run:  latexmk oscola.tex  or  latexmk check-test.tex

# Output directory
$out_dir = 'build';

# Use LuaLaTeX (pdf_mode 4)
$pdf_mode = 4;
$lualatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# Ensure the local development copies of the package files (.bbx, .cbx,
# .lbx) take precedence over any system-installed oscola package.
$ENV{TEXINPUTS} = ".//:". ($ENV{TEXINPUTS} // "");
