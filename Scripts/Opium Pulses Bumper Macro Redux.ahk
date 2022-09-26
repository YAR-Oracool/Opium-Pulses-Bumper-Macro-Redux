#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^!O::  ;Indicates the hotkey to initiate the macro and under it is what teh maro is. The hotkey is "Ctrl + Alt + p".
    Counter := 0 ;This variable keeps track of how many bumps we've performed.
    Firstrun := True
    Shittybot := 0
    While Counter < 7 ;This while check if we've reached the maximum cycle in order to break the loop.
    {
        Send {/}bump ;Discord bots now use slash commands and this is what they read to do the bumping but the need to be directed at a bot to function.
        Position := Counter ;This is teh variable which keeps track of which bot we are commanding.
        Sleep, 200 ;This line stops the script for teh given miliseconds in case your internet needs some time to load the bot list.
        If (Firstrun = True)
        {
          InputBox, Number, ,Which bot is "Server Monitoring"?
          Firstrun := False
          Shittybot := Number - 1
        }
        While Position > 0 ;This While checks how many times we have to press down and select teh appropriate bot.
        {
            Send {Down} ;This just sends the down arrow to discord and chooses which bot we want to select.
            Position := Position - 1 ;Pressing down has to stop when Position is not bigge rthen zero and this makes sure that happens.
        }
        Send {Enter}{Enter} ;Confirms bot selection for the command and sends it.
        If (Counter = Shittybot) ;What to do when you reach the bot with recapture
        {
            MsgBox, 1,,Click the "Answer" button for the Server Monitoring bot and after typing it press "Enter" on your keyboard then click on the text bar to wwcontinue bumping., 120 ;Gives teh user instructions on what to do.
            IfMsgBox Yes ;What to do if Yes is pressed by the user
            {
                Continue ;Keeps running the script
            }
            IfMsgBox No ;What to do if the user presses Cancel
            {
                MsgBox, 0,,The script will now stop., 60 ;Tells teh user what's going to happen.
                Break ; Stops the Script
            }
            KeyWait, Enter, D ;Wait for user to press "Enter"
            sleep 1 ;Waits for a split second
            KeyWait, LButton, D ;Waits for teh suer to click
        }
        Counter := Counter + 1 ;This keeps track of how many times we've bumped starting from 0
    }
    Send {!}bump
    Send {Enter} ;The bumping script is followed by an Opius command to clean up the chat when we're don and this is that command.
    Run https://discord.me/dashboard ;Opens the link to the website taht needs manual bumping from the server
    Run https://discordservers.com/server/100171287267115008/bump
    MsgBox, 0,,Discord Me and Discord Servers need manual bumping so I opened them for you., 60 ;Tells teh user what's going to happen.
    Return
