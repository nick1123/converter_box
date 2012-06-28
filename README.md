Converter Box
=============

Sinatra app that takes a ruby hash like

`{"date"=>["Thu, 28 Jun 2012 19:57:26 GMT"], "server"=>[""], "expires"=>["Thu, 01 Jan 1970 00:00:00 GMT", "Thu, 28 Jun 2012 19:57:26 GMT"], "content-length"=>["151"], "pragma"=>["no-cache"], "content-encoding"=>["gzip"], "cache-control"=>["no-store, no-cache, private, must-revalidate", "max-age=0"], "p3p"=>["CP=\"CAO DSP\""], "connection"=>["close"], "content-type"=>["application/mdx"]}`

and converts it to an easier to read format

`---  
date:   
- Thu, 28 Jun 2012 19:57:26 GMT  
server:   
- ""  
expires:   
- Thu, 01 Jan 1970 00:00:00 GMT  
- Thu, 28 Jun 2012 19:57:26 GMT  
content-length:   
- "151"  
pragma:   
- no-cache  
content-encoding:   
- gzip  
cache-control:  
- no-store, no-cache, private, must-revalidate  
- max-age=0  
p3p:   
- CP="CAO DSP"  
connection:   
- close  
content-type:   
- application/mdx`

Setup
---------

*  Clone it
*  bundle install

Use sinatra
-----------

*  ruby server.rb
*  http://localhost:4567/

Use sinatra with shotgun (reloads app with every request)
-------------------------------------------

*  shotgun server.rb 
*  http://127.0.0.1:9393/