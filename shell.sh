#! /bin/bash  
             #是一个约定的标记，它告诉系统这个
             #系统脚本需要什么编辑器来执行，也就是使用
             #那种Shell
mystring="hello world"

echo $mystring

#字符串的拼接
mystring="hello world ((1+1))"
echo "$mystringhello world" #只输出 world因为shell
#将mystringhello当成新的变量名，该变量为空串
echo "${mystring}nihao world"

#字符串只读的话不能修改
readonly mystring="hello world"
mystring="nihao"
echo $mystring


#unset可以删除变量，不能删除只读变量

#环境变量？？？？？？？？？？？？？？？？？？？？？
echo $myval

#字符串的拼接
str1="hello"
str2=world
echo $str1
echo $str2
echo $str1 $str2 "你在吗"

#计算字符串的长度
str='hello'
echo ${#str}

#提取子字符串 从第二个字符开始往后的4个字符下标从1开始
string="abcdefg"
echo ${string:1:4}
#反引号括起来是一条命令，先执行该命令在赋值
date=`date +%Y:%m:%d`
echo $date

myint=100
echo $myint
#对运算结果进行赋值
ret=$((++myint)) #只能做加减乘除和()运算，只能整数运算
echo $ret

#计算1加到100
#i=1
#sum=0
#for((i=0;i<=100;i++))
#do 
#echo $((sum=$sum+$i))
#done
#echo $sum
#echo "bit"
