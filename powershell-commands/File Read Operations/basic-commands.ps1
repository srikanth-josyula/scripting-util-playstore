#display the last 10 lines 
Get-Content -Path "catalina.out" -Tail 10

#follow the file for new lines and last 10 lines
Get-Content -Path "catalina.out" -Tail 10 -Wait
