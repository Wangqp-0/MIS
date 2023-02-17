#!/bin/bash

cp -r /home/disk3/wangqiangping/shell_test_project_code/kernel-4.19/drivers/misc/mediatek/imgsensor/src/common/v1/imx338_mipi_raw/ /home/disk3/wangqiangping/shell_test_project_code/kernel-4.19/drivers/misc/mediatek/imgsensor/src/common/v1/imx338s_mipi_raw
#cp -r /home/disk3/wangqiangping/shell_test_project_code/vendor/mediatek/proprietary/custom/mt6739/hal/imgsensor/imx338_mipi_raw/ /home/disk3/wangqiangping/shell_test_project_code/vendor/mediatek/proprietary/custom/mt6739/hal/imgsensor/imx338s_mipi_raw
#cp -r /home/disk3/wangqiangping/shell_test_project_code/vendor/mediatek/proprietary/custom/mt6739/hal/imgsensor_metadata/imx338_mipi_raw/ /home/disk3/wangqiangping/shell_test_project_code/vendor/mediatek/proprietary/custom/mt6739/hal/imgsensor_metadata/imx338s_mipi_raw

file=`find /home/disk3/wangqiangping/shell_test_project_code/kernel-4.19/drivers/misc/mediatek/imgsensor/src/common/v1 -name imx338s_mipi_raw`
cd $file
for file in `find . -name "*_*.c" -o -name "*_*.h"`
do 
	sed -i -e 's/imx338/imx338s/g' $file
	sed -i -e 's/IMX338/IMX338S/g' $file
	mv $file ${file/imx338/imx338s} 
	
done
ls

cp -r /home/disk3/wangqiangping/shell_test_project_code/vendor/mediatek/proprietary/custom/mt6739/hal/imgsensor/imx338_mipi_raw/ /home/disk3/wangqiangping/shell_test_project_code/vendor/mediatek/proprietary/custom/mt6739/hal/imgsensor/imx338s_mipi_raw
file1=`find /home/disk3/wangqiangping/shell_test_project_code/vendor/mediatek/proprietary/custom/mt6739/hal/imgsensor -name imx338s_mipi_raw`
cd $file1
for file1 in `find . -name "*_*.c" -o -name "*_*.h" -o -name "*_*.cpp"`
do 
	sed -i -e 's/imx338/imx338s/g' $file1
	sed -i -e 's/IMX338/IMX338S/g' $file1
	mv $file1 ${file1/imx338/imx338s} 

done
ls
