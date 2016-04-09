# Data Analysis and Map-Reduce with MongoDB and Pymongo
##### iPython Notebook for my talks at 

* EuroPython 2015, Bilbao July 2015
* mongoDB days Germany, Munich October 2015
* PySS15, Ibaeta University Campus of San Sebastian, October 2015
* mongoDB days Silicon Valley, San José, December 2015
* Heise Developer World, CeBIT Hannover, Germany, March 2016
* mongoDB Aggergation work shop meet-up

Slides can be downloaded from [here](https://drive.google.com/open?id=0BxD_IyXfaOuVemtaNmRoMF9TcVU "Data Analysis with mongoDB")

Due to some user requests I have created this simple git to provide the sample data 
and the iPython notebook file.

A live recording of EuroPython 2015 talk can be found [here on YouTube](https://youtu.be/5djvv5-zgnQ?t=5m48s "Data Analysis with mongoDB")

This is not meant to a full tutorial i.e. setup might be buggy. 
No support for setting things up. Google is your friend.


### requirements:

* mongodb installed (version 3.2+)    
* python 3.4+ (everything should also work on 2.7, but not tested)

the data is located in data/

don't forget to install the required python modules, e.g. with

    pip install -r requirements.txt
    
if you want to use an virtualenv (recommended) or not is up to you.
    
please note the Natutal Language Tool Kit (nltk) install is optional, 
you do not need to worry about installing any extra nltk libraries.


having everything in place:

    sh start.sh
    
should start your mongod instance.

These tips are Mac OS X only, other OS may be different.



