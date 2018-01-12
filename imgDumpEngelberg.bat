@echo off


set YYYY=%DATE:~10,4%
set MM=%DATE:~4,2%
set DD=%DATE:~7,2%

set HH=%TIME: =0%
set HH=%HH:~0,2%
set MI=%TIME:~3,2%
set SS=%TIME:~6,2%
set FF=%TIME:~9,2%


SET folder=Dump/
SET picName=Img
SET date=%YYYY%%MM%%DD%_%HH%%MI%%SS%
SET FullName=%folder%%picName%_%date%.jpg 

echo %FullName%

curl -o "%FullName%" https://www.titlis.ch/webcam/zoom/berghausjochpass.jpg?lng=en -k