@echo off

set HH=%TIME: =0%
set HH=%HH:~0,2%
set MI=%TIME:~3,2%
set SS=%TIME:~6,2%
set FF=%TIME:~9,2%

for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
set today=%MyDate:~0,4%-%MyDate:~4,2%-%MyDate:~6,2%_%HH%%MI%%SS%

SET folder=Dump/
SET picName=Img
SET date=%YYYY%%MM%%DD%_%HH%%MI%%SS%
SET FullName=%folder%%picName%_%today%.jpg 

echo %FullName%

curl -o "%FullName%" https://www.titlis.ch/webcam/zoom/berghausjochpass.jpg?lng=en -k