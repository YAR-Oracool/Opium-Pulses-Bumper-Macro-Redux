# Opium-Pulses-Bumper-Macro-Redux and Redux Delux
A new bumper macro for bumping the Opium Pulses Discord server after Discord changed how bots work.

## Intorduction
After Discord changed hwo bots work, my initial script broke so people had to type down the bump comands once more but this isn't the way of YAR! I'm too lazy to do that so behold! After some learning and observation and help from a moderator named Thang I have made a brand new script! Opium Pulses Bumper Macro Redux!

No longer you're forced to type /bump, 7 bloody times! Still... due to how Server Monitoring bot works, this script became let's say... more challenging to make and due to how one specific bot needed a subscription service to do it's job I made a second edition called Redux Delux.

These two versions work identically and are only different in 1 line of code that opens Discord Servers website in the non Deluxe edition.

### Requirements for Scripts
If you want to use the script version of this instead of the .exe because you don't trust me or wnat to edit what I made, you need to have AutoHotKeys installed. If you are on Mac or Linux or anything taht isn't Windows... I can't help you.

Link: https://www.autohotkey.com

## How does it work.

### The hot key
Pressing Ctrl + Alt + O will initiate the script.

### The proccess
The script is commented line by line but I'll explain what's going to happen here anyway.

After pressing the hotkey 3 variables are created which are needed for the script to work. The it types down the bump command and waits a bit (200 milliseconds) for the list to load. Thsi value can change depending on how fast your internet is.

Then it opens up a window and asks which bot is Server Monitoring bot because that bot needs a recapture to be complited so I had to amke an exception for it. Just count normally.

After that it sends the Down Arrow key a bunch of times depending on how many bumps teh script has done and caps it off by sending Enter twice.

When we're done with this it check if we're at Server Monitoring bot and pops up a window giving you instructions on how to do it. Basically type the Captua thingy then press Enter to submit it, then click on the text box for the chat which will continue teh script.

When bumping is over, the script will call Opius to clean up then opens 1 or 2 links in your browser (Depending on which edition you downloaded) because those need manual bumping in their browser and finishes by explaing why it opened the links.

## Conclusion
Hope this script helps you. Basically get AutoHotKey if you want to use the script and press Ctrl + Alt + O and follow the script's instructions.
