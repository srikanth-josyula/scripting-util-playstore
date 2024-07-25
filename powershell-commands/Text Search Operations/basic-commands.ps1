# Search word
Select-String -Pattern "error" -Path catalina.out -SimpleMatch
Select-String -Pattern "error" -Path catalina.out
Select-String "error" catalina.out

#case-insenstive search (searchs exact match)
Select-String "ERROR" catalina.out -CaseSensitive

# Display line number of the word in a file
Select-String "ERROR" catalina.out| ForEach-Object {$($_.LineNumber)}

#Display line number and line matching the word
Select-String "ERROR" catalina.out| ForEach-Object {"$($_.LineNumber):$($_.Line)"}

#Count the number of lines
(Select-String "ERROR" catalina.out).count

# Display lines after the match
Select-String "06250935" catalina.out -Context 0,3

# Display lines before the match 
Select-String "06250935" catalina.out -Context 3,0

# Display lines before and after the match
Select-String "06250935" catalina.out -Context 3,3

# Search files with the word
ls -r | Select-String -Pattern "error"
