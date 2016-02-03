a/o 7-24-14:
TODO: grep -r "opt/local" *
# a bunch of links... *especially* in *.la files, which could easily be modified...
# Dylibs may not've been relinked yet.


These notes from Gimp2.8???
-----------------------
This is probably not at all efficient nor reliable
Known Bugs:
	In all text-boxes, must select "None" as the input-method (right-click)
	Copied everything that looked similar, rather than just the .dylib files
		(so this is probably HUGELY bloated)
	Doesn't pay attention to arguments (e.g. opening files probably won't work)

Compilation at this version was a bitch...
	I won't go into it... see the NOTES directory

This was originally _cTools/_Programming Notes/Something_Works5.app


-------
Round-Two... Running this as an app didn't load the file-jpg and whatnot libraries
So... created appDylibs.sh and ran it on plugins and modules...

And... I have no idea how it knows to reference the files in ./Resources/share
instead of /opt/local/share...

lucky again, I guess... It must be, because when I modified file-jpg in Resources/share, it fixed the problem...