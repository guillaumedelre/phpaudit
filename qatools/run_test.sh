#!/bin/bash
set -e

###########################
## QATOOLS IMAGE TESTING ##
###########################

run_test()
{
  echo -e "Running test for $1:$2..."

  docker run -t -i -v `pwd`:/project $1:$2 php --version | grep -q $3 && return 0|| echo -e "\e[31mAssertion error: PHP version should be equal to $3\e[0m" && return 1;
}

image_name=guillaumedelre/qatools

expectation_list=('7.3' '7.3' '7.2' '7.1' '7.0')

index=-1

for tag in 'latest' '7.3' '7.2' '7.1' '7.0'
do
  index=$(($index+1))
  run_test $image_name $tag ${expectation_list[$index]} && echo  -e "\e[32mTest for $image_name:$tag finish successfully\e[0m"
done
