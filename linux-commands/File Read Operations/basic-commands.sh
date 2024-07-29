#display last few lines of a file
tail catalina.out

#follow the file for new lines 
tail -f catalina.out

#display last n lines of file
tail -20 catalina.out
tail -n 20 catalina.out 

#display last n bytes of the file
tail -c 100 catalina.out

#follow the new lines and display n lines 
tail -f -n 20 catalina.out
