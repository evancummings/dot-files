dot-files
=========

#PowerShell
- Place `profile.ps1` in your `Users\Evan\Documents\WindowsPowerShell\` directory (create it if it doesn't exist!)
- Run PowerShell
- You will see the following error message:
```
File C:\Users\Evan\Documents\WindowsPowerShell\profile.ps1 cannot be loaded because running scripts is disabled on
 this system. For more information, see about_Execution_Policies at http://go.microsoft.com/fwlink/?LinkID=135170
```
- Close PowerShell
- Re-run PowerShell, this time 'As Administrator'
- Run the following command:
```
>> Set-ExecutionPolicy remoteSigned
```
- Close PowerShell
- Re-run PowerShell
- ???
- Profit
