@echo off

:: Disable&Stop Windows Update
sc config "wuauserv" start= disabled
sc stop "wuauserv"

:: Disable&Stop Update Orchestrator
sc config "UsoSvc" start= disabled
sc stop "UsoSvc"
