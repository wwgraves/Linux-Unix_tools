#!/bin/tcsh
if ($#argv < 4) then
echo "not enough arguments"
echo "this program creates a column of line counts"
echo "for the specified number of lines"
echo "Usage: add_count.csh beginning_line_number ending_line_number number_of_digits output_file"
echo 
exit
endif
#
set start = $argv[1]
set end = $argv[2]
set digits = $argv[3]
set output = $argv[4]
count $start $end -d $digits | tr " " "\n" | head -$end > $output
