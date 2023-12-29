@echo off
chcp 65001 > nul
copy "%~nx0" "0-%~nx0"
echo [最近使用] 已写入，如果需要清空历史请手动删除！本交互由【神农氏】原创设计，QQ群747439134
call _internal\setenv.bat


"%PYTHON_EXECUTABLE%" "%DFL_ROOT%\main.py" videoed video-from-sequence ^
    --input-dir "%WORKSPACE%\data_dst\merged" ^
    --output-file "%WORKSPACE%\result.avi" ^
    --reference-file "%WORKSPACE%\data_dst.*" ^
    --include-audio

"%PYTHON_EXECUTABLE%" "%DFL_ROOT%\main.py" videoed video-from-sequence ^
    --input-dir "%WORKSPACE%\data_dst\merged_mask" ^
    --output-file "%WORKSPACE%\result_mask.avi" ^
    --reference-file "%WORKSPACE%\data_dst.*" ^
    --lossless

pause