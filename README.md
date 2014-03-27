dot-files
=========

#PowerShell
1. Place `profile.ps1` in your Users\Documents\WindowsPowerShell\ directory (create it if it doesn't exist!)
2. Run PowerShell
3. You will see the following error message:
```
File C:\Users\Evan\Documents\WindowsPowerShell\profile.ps1 cannot be loaded because running scripts is disabled on
 this system. For more information, see about_Execution_Policies at http://go.microsoft.com/fwlink/?LinkID=135170
```
4. Close PowerShell
5. Re-run PowerShell, this time 'As Administrator'
6. Run the following command:
```
>> Set-ExecutionPolicy remoteSigned
```
7. Close PowerShell
8. Re-run PowerShell
9. ???
10. Profit
