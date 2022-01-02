#!/bin/tcsh
if ($#argv < 2) then
echo "not enough arguments"
echo "this program creates a column containing a user-specified number"
echo "repeated for a specified number of lines"
echo "Usage: add_dummy.csh number_of_lines "number_to_be_repeated" (in quotes) output_file"
echo "If output file is set to zero, output is sent to standard out."
echo 
exit
endif
#
set lines = $argv[1]
set number = "$argv[2]"
set output = $argv[3]
if ($output != 0) then
rm -f $output
set line = 1
while ($line <= $lines)
echo "$number" >> $output
@ line++
end
else if ($output == 0) then
set line = 1
while ($line <= $lines)
echo "$number"
@ line++
end
endif
