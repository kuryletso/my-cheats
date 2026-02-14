# awk template
awk 'BEGIN {} !/regex pattern/ {exit} /regex pattern/ {print} END {print NR}' 

# awk with separator and columns
awk -F"," '{print $1, $3}' filename # print first column

# awk data processing (sum is builtin)
awk -F"," '{sum += $3} END {print sum}'
awk -v myvar="$foo" 'BEGIN {print "My variable is:", myvar}'

# bc tamplate
echo "7 / 2" | bc
echo "scale=3; sqrt(7 / 5)" | bc -l
echo 'n=8; m=10; if(n>m) {print "n is greater"} else {print "m is greater"}' | bc -l
