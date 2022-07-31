@echo off

echo "Creating file structure..."
md Backup
md Text_files

echo "Creating a backup of the registry hives..."
copy * Backup

echo "Parsing registry files..."
for /r %%i in (*) do (C:\Tools\RegRipper\rip.exe -r %%i -a > %%i.txt)

echo "Moving text files to 'Text_files'..."
move *.txt Text_files

echo "Process completed successfully"
cd c:
tree