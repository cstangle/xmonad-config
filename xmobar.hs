-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
    font = "xft:ProggyTinyTT:pixelsize=16:antialias=false"
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = BottomW L 90,
    lowerOnStart = True,
    commands = [
          Run Weather "KCQT" ["-t","<tempC>C <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000
          --Run Weather "KGEG" ["-t","<tempC>C <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000
          --Run Weather "ZSPD" ["-t","<tempC>C <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000
        , Run MultiCpu ["-t","Cpu:<total0><total1>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10
        , Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10
        , Run Network "eth0" ["-t","eth0: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10
        , Run Wireless "wlan0" ["-t","wlan0: <essid>, <quality>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10
        , Run BatteryP ["C23E","C23F"] ["-t", "Bat: <acstatus><left>% (<timeleft>)", "-L", "10", "-H", "80", "-p", "3", "--", "-O", "<fc=green>On</fc> - ", "-o", ""] 10
        , Run Date "%a %b %_d %H:%M" "date" 10
        , Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %multicpu% %memory% %eth0% %wlan0wi% %battery% <fc=#FFFFCC>%date%</fc>   %KCQT%"
}
