@echo off
chcp 65001 >nul
cd /d "%~dp0"
git init
git remote add origin git@github.com:Yosef-Tarantul/PracticingGitCorbin.git
git add .
git commit -m "Initial commit"
git branch -M main
git push -u origin main

cd "C:\Users\user\OneDrive\שולחן העבודה\training.github\AI-YouTube-Timestamps"
git init
git remote add origin git@github.com:Yosef-Tarantul/PracticingGitCorbin.git
git add .
git commit -m "Initial commit"
git branch -M main
git push -u origin main