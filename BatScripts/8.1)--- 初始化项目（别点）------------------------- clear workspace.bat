@echo off
chcp 65001 > nul
copy "%~nx0" "0-%~nx0"
echo [最近使用] 已写入，如果需要清空历史请手动删除！本交互由【神农氏】原创设计，QQ群747439134
echo 即将清空workspace中的所有文件！后悔了请退出！不要输入任何键盘！
pause
call _internal\setenv.bat
mkdir "%WORKSPACE%" 2>nul
rmdir "%WORKSPACE%\data_src" /s /q 2>nul
mkdir "%WORKSPACE%\data_src" 2>nul
mkdir "%WORKSPACE%\data_src\aligned" 2>nul
rmdir "%WORKSPACE%\data_dst" /s /q 2>nul
mkdir "%WORKSPACE%\data_dst" 2>nul
mkdir "%WORKSPACE%\data_dst\aligned" 2>nul
rmdir "%WORKSPACE%\model" /s /q 2>nul
mkdir "%WORKSPACE%\model" 2>nul
echo DONE
pause