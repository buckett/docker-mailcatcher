# Mailcatcher in Docker

This is just a simple docker container that runs mailcatcher.

You need to allocate a terminal for mailcatcher, otherwise it hangs at startup trying
to print out where it's service is availble from.

```
docker create  -p 127.0.0.1:1080:1080 -p 127.0.0.1:1025:1025  --name="mailcatcher" -t  buckett/docker-mailcatcher 
```
Then create an upstart script to have it start at boot time.
