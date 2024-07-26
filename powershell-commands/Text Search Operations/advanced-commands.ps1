#Multi word search OR
Select-String -Path '.\catalina.out' -Pattern 'ERROR|WARN' -AllMatch

#Multi word search AND
Select-String -Path '.\catalina.out' -Pattern '(?=.*ldap)(?=.*failure)' -AllMatch

#Wild char search
Select-String -Path '.\localhost_access_log.txt' -Pattern 'HTTP/1.1.*200' -AllMatch

#Count occurances with both words in same line
(Select-String -Path '.\catalina.out' -Pattern 'error' | Select-String -Pattern 'SolrWatcher threw an unhandled.*').count
