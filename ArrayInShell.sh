#! /bin/bash

declare -a array_one
array_one=(abhi is very good boy)
# To print all elements of array 
echo ${array_one[@]}        
echo ${array_one[*]}        
echo ${array_one[@]:0}     
echo ${array_one[*]:0}

# To print elements from a particular index 
echo ${array_one[@]:0}      
echo ${array_one[@]:1} 
echo ${array_one[@]:2}      
echo ${array_one[0]:1} 

# To print elements in range 
echo ${array_one[@]:1:4}      
echo ${array_one[@]:2:3}      
echo ${array_one[0]:1:3} 

# Length of Particular element 
echo ${#array_one[0]}         
echo ${#array_one}

# Size of an Array 
echo ${#array_one[@]}         
echo ${#array_one[*]} 

arr[0]=a
arr[1]=b
arr[2]=c
echo $arr ${arr[2]}

# Search in Array 
echo ${array_one[@]/*[is]*/}

# Replacing Substring Temporary 
echo ${array_one[@]//a/A}          
echo ${array_one[@]}              
echo ${array_one[0]//r/R}

#To delete index-1 element
unset array_one[1]
#To delete the whole Array
unset array_one
