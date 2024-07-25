#search with a wildchar (starts with word and continue any text)
grep 'error.*' catalina.out
grep 'PUT /alfresco/api/-default-/public/alfresco/versions/1/nodes.*HTTP/1.1.*200' catalina.out

#search for lines starting and ending with specific pattern
grep '^2024.*200$' catalina.out

#combine multiple greps
grep 'error' catalina.out | grep 'SQL'

#matching and counting
grep 'error' catalina.out | grep 'SQL' | wc-l

#matching and combination
grep 'error' catalina.out | grep -E 'SQL|lock'
grep -A2 -B2 'exception' catalina.log | grep -E 'Caused by|Exception'

#pattern matching with json displays all jsons
grep -oP '{.*?}' catalina.out
