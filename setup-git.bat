@echo off
chcp 65001 >nul
cd /d "%~dp0"

REM Initialize git if not already initialized
if not exist .git (
    git init
)

REM Remove existing remote if it exists, then add the correct one
git remote remove origin 2>nul
git remote add origin git@github.com:Yosef-Tarantul/PracticingGitCorbin.git

REM Stage all files
git add .

REM Check if there are any changes to commit
git diff --cached --quiet
if errorlevel 1 (
    git commit -m "Initial commit"
) else (
    echo No changes to commit.
)

REM Rename branch to main if needed
git branch -M main

REM Push to remote
git push -u origin main