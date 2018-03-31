# FUPD 
## An elegant way to say goodbye to Windows Update and its crappy Orchestrator

## WHAT'S THAT

FUPD, as you can imagine, it stands for fu** update, will help you to say sayonara to Updates and the 'almost' new Orchestrator.

## HOW DOES IT WORKS?

The core of this tweak is in [FUPD/FUPD.bat](https://github.com/masc-it/FUPD/blob/master/FUPD/FUPD.bat), it just uses windows built-in 'sc' command to stop and disable the two services.
As you know, this is just not enough since the good Windows re-enable them whenever it wants, so.... how to stop this crap?
The main idea of FUPD is to run on every boot and execute the FUPD.bat each time, simple isn't it?
It is so sneaky that it'll use [FUPD/invisible.vbs](https://github.com/masc-it/FUPD/blob/master/FUPD/invisible.vbs) to be completely invisible on boot.
Anyways, all the scripts are commented out.

## HOW TO SET-UP?

- Take your pc in charge ( you'll understand this later on, in the LIMITATIONS section )
- [Download this repo](https://github.com/masc-it/FUPD/archive/master.zip) 
- Right click on FUPD SETUP.bat
- Run as Administrator
- Wait some seconds
- Done

## LIMITATIONS 

Thanks to our friend Windows, the task scheduler command line is kinda.. limitated, so the script will not run if your PC isn't charging.
You have to follow some simple steps to fix this.

Be sure to have followed the SETUP steps, then:

- Click on start & search for: taskschd.msc
- Open it and click on Task Scheduler Library
- Look for our good FUPD task, right click on it and open 'Properties'
- Set the Conditions parameters as shown in this picture [(Power Conditions)](https://i.imgur.com/ipL5sh3.jpg)
- Click ok and you're done.


#### FUPD is now fully operating.
