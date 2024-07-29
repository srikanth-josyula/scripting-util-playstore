#display last 10 files conatining a specific string
tail -n 20 catalina.out | grep 'ERROR'

#follow a file for new lines matching a pattern
tail -f catalina.out | grep 'ERROR'

