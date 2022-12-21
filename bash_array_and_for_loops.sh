id1=323 #323.50 to 382.50 diff  59*
id2=334 #334.50 to 396.00 diff 61.5 *

: << 'AAA'
 xxx  d1 = 323 d2 = 334 
 xxx  d1 = 333 d2 = 344 
 xxx  d1 = 343 d2 = 354 
 xxx  d1 = 353 d2 = 364 
 xxx  d1 = 363 d2 = 374 
 xxx  d1 = 373 d2 = 384 
 xxx  d1 = 383 d2 = 394 
d1 = 323 d2 = 334 
d1 = 333 d2 = 344 
d1 = 343 d2 = 354 
d1 = 353 d2 = 364 
d1 = 363 d2 = 374 
d1 = 373 d2 = 384 
one
two
three

AAA

d1array=(323.50 333.50 343.50 353.50 363.50 373.50 382.50)
d2array=(334.50 344.50 354.50 364.50 374.50 384.50 396.00 )

for i in {0..6}
do
echo ${d1array[$i]}
echo ${d2array[$i]}
done




#for (( ((a=$initd1)), ((b=$initd2));  ((a < 59 + $in td1)), ((b < 61 + $initd2)); ((a+=10)), ((b+=10)) ));

##
for (( a=$id1, b=$id2;  a < 59  + $id1, b < 61 + $id2; a=$((a+10)), b=$((b+10)) ));
do
        echo " xxx  d1 = $a d2 = $b "
done
####



####
for (( a=$id1, b=$id2;  a < 59  + $id1 && b < 61 + $id2; a=$((a+10)), b=$((b+10)) ));
do
        echo "d1 = $a d2 = $b "
done
####


array=( one two three )
for i in "${array[@]}"
do
	echo $i
done

####################################


for i in $(seq 14.00 10 374);
do
    # Print the value
    echo $i " ########";
   chi1arr+=($i)

done

for i in $(seq 14.00 10 374);
do
    # Print the value
    echo $i " ########";
    chi2arr+=($i)

done


#arrVar+=("Dish Washer")

# Iterate the loop to read and print each array element
#for value in "${arrVar[@]}"
for i in {0..35..1}
do
     echo "$i ${chi1arr[$i]} ${chi2arr[$i]}"

done



