' This script, as its name implies, it makes a script or program
' running in a completely hidden way
' Credits: https://superuser.com/questions/62525/run-a-batch-file-in-a-completely-hidden-way
CreateObject("Wscript.Shell").Run """" & WScript.Arguments(0) & """", 0, False