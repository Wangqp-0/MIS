#!/bin/bash

path=`find /home/disk3/wangqiangping/shell_test_project_code/device/agenew/AGN_1250WQ_M6101E_E1_DS3216_Sgo -name ProjectConfig.mk` 
NAME=`cat $path | grep 'LINUX_KERNEL_VERSION' | awk -F ' = ' '{print $2}'`
echo $NAME

path1=`find /home/disk3/wangqiangping/shell_test_project_code/kernel-4.19/arch/arm/configs -name AGN_1250WQ_M6101E_E1_DS3216_Sgo_defconfig` 
NAME1=`cat $path1 | grep 'CONFIG_CUSTOM_KERNEL_LCM' | awk -F '=' '{print $2}'`
echo $NAME1

NAME2=`echo $NAME1 | awk -F '"' '{print $2}'`
#echo $NAME2
for lcd_name in $NAME2
do
	echo "LCM_NAME is: $lcd_name"
	path2=`echo $lcd_name | awk -F_ '{print $1}'`
	echo "IC is :$path2"
	path3=`echo $lcd_name | awk -F_ '{print $2}'`
	echo "Module :$path3"
	path4=`echo $lcd_name | awk -F_ '{print $3}'`
	echo "lane is:$path4"
	path5=`echo $lcd_name | awk -F_ '{print $4}'`
	echo "resolution:$path5"
	
done