@echo off
del /s *.bak
del /s *.orig
del /s *.rej

rmdir /s /q db
rmdir /s /q incremental_db
rmdir /s /q output_files
rmdir /s /q simulation
rmdir /s /q greybox_tmp

rmdir /s /q poseidon-ep4cgx150\db
rmdir /s /q poseidon-ep4cgx150\incremental_db
rmdir /s /q poseidon-ep4cgx150\output_files
rmdir /s /q poseidon-ep4cgx150\simulation
rmdir /s /q poseidon-ep4cgx150\greybox_tmp

del PLLJ_PLLSPE_INFO.txt
del *.qws
del *.ppf
del *.ddb
del build_id.v

del poseidon-ep4cgx150\*.qws
del poseidon-ep4cgx150\build_id.v

pause
