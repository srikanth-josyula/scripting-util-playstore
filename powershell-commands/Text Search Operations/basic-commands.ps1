# Search word
Select-String -Pattern "error*" -Path catalina.out -SimpleMatch #treats * as word than regular expression
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

# Quite, only provides boolean if the error is there doesnt print all words
Select-String "error" .\catalina.out -Quiet

#stops after first occurence of the word
Select-String -Path .\catalina.2024-07-24.log -Pattern 'ERROR' -List

#search in only specific file formats 
Select-String -Path "F:\tomcat\logs\*" -Pattern 'HTTP' -Include '*.txt'

#search in other formats exclude specific one
Select-String -Path "F:\tomcat\logs\*" -Pattern 'HTTP' -Exclude '*.txt'


