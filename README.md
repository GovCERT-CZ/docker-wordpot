# docker-wordpot

This is Docker image for honeypot Wordpot (https://github.com/threatstream/wordpot).

Build docker image
    
    $ git clone https://github.com/GovCERT-CZ/docker-wordpot
    $ cd docker-wordpot
    $ docker build -t <repository>/<name> .
    
Run docker container
    
    $ docker run [--name <container name>] [-d] -p 80:80  [-v <host path>:/opt/wordpot/logs] <repository>/<name>
    

Run docker container with custom configuration
    
    $ wget https://raw.githubusercontent.com/threatstream/wordpot/master/wordpot.conf -O wordpot.conf
    update wordpot.conf file with your settings 
    $ docker run [--name <container name>] [-d] -p 80:80 [-v <host path>/wordpot.conf:/opt/wordpot/wordpot.conf] [-v <host path>:/opt/wordpot/logs] <repository>/<name>
    
