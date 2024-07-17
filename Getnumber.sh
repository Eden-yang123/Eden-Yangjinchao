#!/bin/bash

 #获取字符串
 string=$1
 #匹配字符串中的数字
 number=$(echo "$string" | grep -o '[^a-zA-Z].*')

 #保留小数点后两位
 if [[$number =~ [.] ]]; then
    number_string=$(echo "$number" | cut -d '.' -f 1 ).$(echo "$number" | cut -d '.' -f 2 | cut -c 1-2)
 else 
#整数保留两位小数补0
 number_string="$number.00"
 fi

 #返回数字字符串
 echo "$number_string"
