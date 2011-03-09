Simple MySQL Backup Script
=========================================

I was looking for a VERY simple script for a quick on-demand backup, like you might want to take before an upgrade or to copy the data to another server. 
 
All of the ones I found were either overly complex (for my purposes) or they just didn't do exactly what I wanted. 
 
So I wrote this one: 
[Simple MySQL Backup Script](http://jeremdow.com/wp-content/uploads/2009/06/mysql_backup.sh) 
 
All this does is build one command to do a mysqldump of all of the databases on localhost, and pipe it to a gzip archive. This is all you need to grab a full backup when you need it - but you could schedule it as a cron job just as well (you woudn't have any archive rotation or anything like that). 
 
If you don't want to bother with the script, you could just grab this command and replace the $variables with your own: 
 
	mysqldump --all-databases -v -u$user -p$password \
	| gzip > $dest/$archive_file
 
I'd like to improve this with an option to do a seperate dump for each database, and then create a tar.gz of those - so if I do, I'll post it here. 

