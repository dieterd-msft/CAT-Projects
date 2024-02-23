@echo off
set SigntoolPath="C:\Program Files (x86)\Windows Kits\10\bin\10.0.22621.0\x64\signtool.exe"
set CertificatePath=%1
set Password=%3
set DirectoryToSign=%2

for %%f in ("%DirectoryToSign%\*.*") do (
    %SigntoolPath% sign /f %CertificatePath% /p %Password% /fd SHA256 "%%f"
)

echo signing complete.
