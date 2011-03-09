Edit Chrome 3.0.194.0 Most Visited Blacklist
=========================================

The latest Google Chrome build in the Ubuntu repos seems more buggy than the previous versions - but good to see the frequent updates at least. 
 
Anyway, I accidentally removed a most visited link/thumbnail from the homepage and then realized, that since the interface update is incomplete, there's no way to restore it through the GUI (you have one chance with the undo link, but that's it). 
 
If this happens to you, you can directly edit the preferences file in your home folder: 

	~/.config/google-chrome/Default/Preferences
 
Find this this entry - and edit as needed: 

	"most_visited_blacklist": {
	}, 
 
If you have any "blacklisted" links - there will be lines in here you can delete to restore them to the most visited list on the new tab page. 
 
You'll also see this at the bottom of the file: 

	"session": {
		"restore_on_startup": 4,
		"urls_to_restore_on_startup": [ "about:linux-splash" ]
	} 
 
But edit or not, unlike the last build, this one seems to be hard-coded to display the dev warning on startup.
