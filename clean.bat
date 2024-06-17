@echo off
rmdir /s /q db
rmdir /s /q incremental_db
rmdir /s /q output_files
del *.qws
del build_id.v
pause
