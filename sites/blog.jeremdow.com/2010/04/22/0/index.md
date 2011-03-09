Back to Lighttpd
=========================================

This site has been down a lot lately, and about to be down a bit longer. 
 
Why? Well, nginx hasn't been working out so well - or more specifically spawn-fcgi - it just keeps crashing. Nginx by itself is great - the memory footprint really is smaller and the config file is simple. If you only need to serve static files (like for an image server), you probably can't beat it - but until there is something stabler for cgi support (for fcgi running PHP 5.3 there is / will be soon) - if I really want to run werc, I need to switch back to lighttpd for now. 
 
And if lighttpd is "suckless" enough for [Anselm](http://garbe.us/), it ought to be good enough for me.
