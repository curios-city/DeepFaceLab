@echo off
chcp 65001 > nul
copy "%~nx0" "0-%~nx0"
echo [最近使用] 已写入，如果需要清空历史请手动删除！本交互由【神农氏】原创设计，QQ群747439134
call _internal\setenv.bat

"%PYTHON_EXECUTABLE%" "%DFL_ROOT%\main.py" merge ^
    --input-dir "%WORKSPACE%\data_dst" ^
    --output-dir "%WORKSPACE%\data_dst\merged" ^
    --output-mask-dir "%WORKSPACE%\data_dst\merged_mask" ^
    --aligned-dir "%WORKSPACE%\data_dst\aligned" ^
    --model-dir "%WORKSPACE%\model" ^
    --model AMP
    
pause