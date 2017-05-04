I am a component of the client that handles remote garbage collection.

I am created by the client every time a new remote session is created. My state is removed when the client logs out. Hence, an instance of me handles an instance of a remote session. If a client logs out and then logs in, a new instance of me is created to handle the new session. I am designed so that if a client logs out and then logs in, any remote objects created with the first session will be ignored if garbage collected after the client logged in again. 

I currently provide support for bare proxies, inspector proxies and glamour presentations. 
View the methods in the 'gc api' category for more details.