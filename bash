# awk template
awk 'BEGIN {} !/regex pattern/ {exit} /regex pattern/ {print} END {print NR}' 
awk -F"," '{print $1, $3}' filename # set separator, print 1st and 3rd column
awk -F"," '{sum += $3} END {print sum}'
awk -v myvar="$foo" 'BEGIN {print "My variable is:", myvar}'

# bc tamplate
echo "scale=3; sqrt(7 / 5)" | bc -l
echo "obase=2; 22" | bc # decimal to binary 
echo "$((2#10110))" # binary to decimal
echo 'n=8; m=10; if(n>m) {print "n is greater"} else {print "m is greater"}' | bc -l

# string processing
grep -o . # print each character in new line
echo "apple" | grep -o . | sort | uniq | wc -l
echo 'A_p p!l?E' | tr -cd [:alpha:] | tr [:upper:] [:lower:] # "apple"
IFS=',' read -r -a arr <<< "apple, banana, orange" # arr=(apple banana orange)

# argument parsing
while getops ":w:cb:" option; do # flags -w, -c, -b; -w and -b require argument
  case $option in
    w) echo "$OPTARG" ;;
    *) ;;
  esac
done

# environment
export # to show current shell attributes
compgen -A function # to show available functions
