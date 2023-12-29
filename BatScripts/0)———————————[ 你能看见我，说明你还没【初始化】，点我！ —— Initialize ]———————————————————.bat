@echo off
:: Use UTF-8 encoding without BOM
chcp 65001 > nul
setlocal
echo 修改注册表以显示/隐藏文件
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 2 /f
echo ok!
echo 读取当前目录
set "currentDir=%CD%"
:: attrib +h "%~f0" 隐藏自身
echo ok!
echo 重启资源管理器
taskkill /f /im explorer.exe
start explorer.exe
echo ok!
:: echo 等待确保资源管理器已启动
:: timeout /t 2 /nobreak > NUL
echo 正在收缩全部子菜单
echo 使文件全部隐藏
attrib +h *.*
echo ok!
echo 正在显示需要的文件
attrib -h "0)———————————[ 展开 全部 —— Expand All ]————————————————————————————————.bat"
attrib -h "0)++++++++++++++++[ 最近 使用 —— Recent Tse ]+++++++++++++++++++++++++++++++++++++++++++++.bat"
attrib -h "1)———————————[ 视频 处理 —— Video Tools ]———————————————————————————————.bat"
attrib -h "2)———————————[ SRC 处理 —— Data_src Tools ]——————————————————————————————.bat"
attrib -h "3)———————————[ DST 处理 —— Data_dst Tools ]——————————————————————————————.bat"
attrib -h "4)———————————[ 遮罩 处理 —— XSeg Tools ]———————————————————————————————.bat"
attrib -h "5)———————————[ 模型 训练 —— Train Models ]———————————————————————————————.bat"
attrib -h "6)———————————[ 模型 应用 —— Merge Tools ]———————————————————————————————.bat"
attrib -h "7)———————————[ 封装 视频 —— Encode Videos ]——————————————————————————————.bat"
attrib -h "8)———————————[ 其他 测试 —— Extra Function ]——————————————————————————————.bat"
echo ok!
echo 打开DeepFaceLab目录
start "" "%currentDir%"
endlocal