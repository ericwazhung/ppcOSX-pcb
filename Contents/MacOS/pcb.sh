#!/bin/bash
# See _Readme.txt
#This awesome "tutorial" is at:
#stackoverflow.com/questions/1596945/building-osx-app-bundle
#When you start your app the current directory will be the directory above where the application is located. 
#For example: If you place the foo.app in the /Applcations folder then the current directory when you launch 
#the app will be the /Applications folder. Not the /Applications/foo.app/Contents/MacOS/ as you might 
#expect. 
#You can alter your app to account for this, or you can use this magic little launcher script that will change 
#the current directory and launch your app. 
#wd="${0%/*}"
#echo "$wd"
#cd "$wd"
#./Resources/bin/gimp-2.8
#11/2/13 4:11:03 AM [0x0-0x7d07d].something_works2[77110] /Users/meh/cTools/_Programming Notes/something_works2.app/Contents/MacOS 
#11/2/13 4:11:03 AM [0x0-0x7d07d].something_works2[77110] /Users/meh/cTools/_Programming Notes/something_works2.app/Contents/MacOS/gimp-2.8: line 11: ./Resources/bin/gimp-2.8: No such file or directory

# This only works with macports' being properly-set-up
# e.g. proper libraries' versions active...
# This is probably changeable!

# I think this was part of the script from the tutorial...
# I've since added ../MacOS to the list, since that seems to be where I copied
# most of the dylib's
# Maybe it'll help, who knows.
# DYLD_LIBRARY_PATH is *not* set in a new terminal-session (just tested)
# So it probably has no effect here...
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:../Resources/lib:../MacOS
set

# This script is necessary, rather than copying gimp-2.8 executable over
# this file... because... apparently MacOS gives an argument that gimp-2.8
# can't handle... -psn=....

wd="${0%/*}"
cd "$wd"
#cd ..

argNum=1
for arg in $@
do
echo "arg[$argNum] = '$arg'"
argNum=$((argNum+1))
done

./pcb
#./gimp-2.8.theRealThing
#./Resources/bin/gimp-2.8

# I did not follow the rules and use -headerpad_max_install_names as suggested...
# I guess I lucked out, since the original location is actually a few characters shorter than the new one.
