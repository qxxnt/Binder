---------------------------------------------------------------------------------------------------------
                                        	-----Main-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
; Запуск от имени администратора
if !A_IsAdmin && !%False%
{
if A_OSVersion not in WIN_2003,WIN_XP,WIN_2000
{
Run *RunAs "%A_ScriptFullPath%" ,, UseErrorLevel
if !ErrorLevel
ExitApp
}
ExitApp
}

;===================================================================================
#SingleInstance, Force
#NoEnv
SetWorkingDir  %A_AppData%\ahkadminconfig
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
SplashTextoff
ListLines Off
CurrentVersion := "1.36"

;===================================================================================
ScreenWidth := A_ScreenWidth
ScreenHeight := A_ScreenHeight

if (ScreenWidth = 1920 and ScreenHeight = 1080){
    XCoord := 200
    YCoord := 400
}
else if (ScreenWidth = 2560 and ScreenHeight = 1440){
    XCoord := 360
    YCoord := 760
}
else {
    XCoord := ScreenWidth // 100
    YCoord := ScreenHeight // 100
}
;===================================================================================
Process, Priority, , A
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
reloadStatus = 0
DayANS = 0
WeekANS = 0
FormatTime, CurrentDate,, ddMM
IniRead, Week, Settings(Counter).ini, ANS, Week
IniRead, CurrentDateT, Settings(Counter).ini, ANS, CurrentDateT
if CurrentDateT=%CurrentDate%
{
    IniRead, CurrentDateT, Settings(Counter).ini, ANS, CurrentDateT
    IniRead, DayANS, Settings(Counter).ini, ANS, DayANS
}
    else{
        IniWrite, %CurrentDate%, Settings(Counter).ini, ANS, CurrentDateT
        IniWrite, %DayANS%, Settings(Counter).ini, ANS, DayANS
        IniRead, DayANS, Settings(Counter).ini, ANS, DayANS
        IniRead, CurrentDateT, Settings(Counter).ini.ini, ANS, CurrentDateT
    }
        if Week=%A_YWeek%
        {
            IniRead, Week, Settings(Counter).ini, ANS, Week
            IniRead, WeekANS, Settings(Counter).ini, ANS, WeekANS
        }
            else{
                IniWrite, %A_YWeek%, Settings(Counter).ini, ANS, Week
                IniWrite, %WeekANS%, Settings(Counter).ini, ANS, WeekANS
                IniRead, WeekANS, Settings(Counter).ini, ANS, WeekANS
                IniRead, Week, Settings(Counter).ini, ANS, Week
            }
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Main Ini Radial-----
------------------------------------------------------------------------------------------------------------
IniRead, Radio1Com, Settings.ini, Settings, /esp
IniRead, Radio2Com, Settings.ini, Settings, /hidecheatinfo
IniRead, Radio3Com, Settings.ini, Settings, /dl
IniRead, Radio4Com, Settings.ini, Settings, /esp 3
IniRead, Radio5Com, Settings.ini, Settings, /templeader
IniRead, Radio6Com, Settings.ini, Settings, /chide
IniRead, Radio7Com, Settings.ini, Settings, /zzdebug
IniRead, Radio8Com, Settings.ini, Settings, /setdim
IniRead, Radio9Com, Settings.ini, Settings, /settime
IniRead, key1, Settings(hotkeys).ini, KeySetup, KEY1
IniRead, key2, Settings(hotkeys).ini, KeySetup, KEY2
IniRead, key3, Settings(hotkeys).ini, KeySetup, KEY3
IniRead, key4, Settings(hotkeys).ini, KeySetup, KEY4
IniRead, key5, Settings(hotkeys).ini, KeySetup, KEY5
IniRead, key6, Settings(hotkeys).ini, KeySetup, KEY6
IniRead, key7, Settings(hotkeys).ini, KeySetup, KEY7
IniRead, key8, Settings(hotkeys).ini, KeySetup, KEY8
IniRead, key9, Settings(hotkeys).ini, KeySetup, KEY9
IniRead, key10, Settings(hotkeys).ini, KeySetup, KEY10
IniRead, key11, Settings(hotkeys).ini, KeySetup, KEY11
IniRead, key12, Settings(hotkeys).ini, KeySetup, KEY12
IniRead, key13, Settings(hotkeys).ini, KeySetup, KEY13
IniRead, key14, Settings(hotkeys).ini, KeySetup, KEY14
IniRead, key15, Settings(hotkeys).ini, KeySetup, KEY15
IniRead, key16, Settings(hotkeys).ini, KeySetup, KEY16
IniRead, key17, Settings(hotkeys).ini, KeySetup, KEY17
IniRead, key18, Settings(hotkeys).ini, KeySetup, KEY18
IniRead, key19, Settings(hotkeys).ini, KeySetup, KEY19
IniRead, key20, Settings(hotkeys).ini, KeySetup, KEY20
IniRead, key21, Settings(hotkeys).ini, KeySetup, KEY21
IniRead, qdis, Settings.ini, Discord, qdis
IniRead, gadis, Settings.ini, Discord, gadis
IniRead, zgadis, Settings.ini, Discord, zgadis
IniRead, qX, Settings.ini, Coords, qX
IniRead, qY, Settings.ini, Coords, qY
IniRead, cID, Settings.ini, Identifier, cID
IniRead, eVeh, Settings.ini, Event, eVeh
IniRead, eVeht, Settings.ini, Event, eVeht
IniRead, eVehс, Settings.ini, Event, eVehс
IniRead, eWg, Settings.ini, Event, eWg
IniRead, eWgid, Settings.ini, Event, eWgid
IniRead, eWgam, Settings.ini, Event, eWgam
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    -----IniWrite-----
------------------------------------------------------------------------------------------------------------  
if qdis=ERROR
{
    IniWrite, discord, Settings.ini, Discord, qdis
    IniWrite, discord, Settings.ini, Discord, gadis
    IniWrite, discord, Settings.ini, Discord, zgadis
    Sleep, 2000
    reload
}
if qX=ERROR
{
    IniWrite, 1820, Settings.ini, Coords, qX
    IniWrite, 1015, Settings.ini, Coords, qY
    Sleep, 2000
    reload
}
------------------------------------------------------------------------------------------------------------
                                    -----Main KEY-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    Hotkey, %KEY1%, Off, UseErrorLevel
        Hotkey, %KEY1%, tp, On, UseErrorLevel
    Hotkey, %KEY2%, Off, UseErrorLevel
        Hotkey, %KEY2%, gh, On, UseErrorLevel
    Hotkey, %KEY3%, Off, UseErrorLevel
        Hotkey, %KEY3%, mtp, On, UseErrorLevel
    Hotkey, %KEY4%, Off, UseErrorLevel
        Hotkey, %KEY4%, aveh, On, UseErrorLevel
    Hotkey, %KEY5%, Off, UseErrorLevel
        Hotkey, %KEY5%, ruleair, On, UseErrorLevel
    Hotkey, %KEY6%, Off, UseErrorLevel
        Hotkey, %KEY6%, nicegame, On, UseErrorLevel
    Hotkey, %KEY7%, Off, UseErrorLevel
        Hotkey, %KEY7%, fastrep3, On, UseErrorLevel
    Hotkey, %KEY8%, Off, UseErrorLevel
        Hotkey, %KEY8%, preset, On, UseErrorLevel
    Hotkey, %KEY9%, Off, UseErrorLevel
        Hotkey, %KEY9%, spevent, On, UseErrorLevel
    Hotkey, %KEY10%, Off, UseErrorLevel
        Hotkey, %KEY10%, delv, On, UseErrorLevel
    Hotkey, %KEY11%, Off, UseErrorLevel
        Hotkey, %KEY11%, gcar, On, UseErrorLevel
    Hotkey, %KEY12%, Off, UseErrorLevel
        Hotkey, %KEY12%, rep, On, UseErrorLevel
    Hotkey, %KEY13%, Off, UseErrorLevel
        Hotkey, %KEY13%, killplayer, On, UseErrorLevel
    Hotkey, %KEY14%, Off, UseErrorLevel
        Hotkey, %KEY14%, resc, On, UseErrorLevel
    Hotkey, %KEY15%, Off, UseErrorLevel
        Hotkey, %KEY15%, memo, On, UseErrorLevel
    Hotkey, %KEY16%, Off, UseErrorLevel
        Hotkey, %KEY16%, gm, On, UseErrorLevel
    Hotkey, %KEY17%, Off, UseErrorLevel
        Hotkey, %KEY17%, chide, On, UseErrorLevel
    Hotkey, %KEY18%, Off, UseErrorLevel
        Hotkey, %KEY18%, zzdebug, On, UseErrorLevel
    Hotkey, %KEY19%, Off, UseErrorLevel
        Hotkey, %KEY19%, esp, On, UseErrorLevel
    Hotkey, %KEY20%, Off, UseErrorLevel
        Hotkey, %KEY20%, dl, On, UseErrorLevel
    Hotkey, %KEY21%, Off, UseErrorLevel
        Hotkey, %KEY21%, takerep, On, UseErrorLevel
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    	  		-----Main GUI-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
Gui, 2: -MaximizeBox
Gui, 2: Show, w648 h375, Биндер для администрации Majestic RP v%CurrentVersion%
Gui, 2: Color, 161A1E
Gui, 2: Font, c0xFFFFFF
Gui, 2: Add, Text, x355 y14 w276 h23 +0x200 +Border +0x1, Настройки Биндера
Gui, 2: Add, Text, x395 y160 w200 h23 +0x200 +Border +0x1, это самый крутой биндер если чо
Gui, 2: Add, Text, x375 y310 w250 h23 +0x200, Если нашли баг или неактуалку - ds: sedxtive
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    		-----Левый верхний-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
Gui, 2: Add, Button, x10 y10 w113 h25 gInfo, Информация
Gui, 2: Add, Button, x10 y40 w113 h25 gTeleports, Телепорты
Gui, 2: Add, Button, x10 y70 w113 h25 gCusTp, Кастомные телепорты
Gui, 2: Add, Button, x10 y100 w113 h25 gCom, Команды
Gui, 2: Add, Button, x10 y130 w113 h25 gCusCom, Кастомные команды
Gui, 2: Add, Button, x10 y160 w113 h25 gKikc, Кик/Мут
Gui, 2: Add, Button, x10 y190 w113 h25 gAjail, Деморган/Варн
Gui, 2: Add, Button, x10 y220 w113 h25 gBan, Бан/Хардбан
Gui, 2: Add, Button, x10 y280 w243 h25 gMemoBlock, Памятка
;===================================================================================
Gui, 2: Add, Button, x140 y10 w113 h25 gDonate, Вопросы по донату
Gui, 2: Add, Button, x140 y40 w113 h25 gHouseandCar, Дом и транспорт
Gui, 2: Add, Button, x140 y70 w113 h25 gQuest, Квесты и задания
Gui, 2: Add, Button, x140 y100 w113 h25 gBattlePass, Батлпасс
Gui, 2: Add, Button, x140 y130 w113 h25 gIvnbatlepass, Предметы с батлпасса
Gui, 2: Add, Button, x140 y160 w113 h25 gSki, Скиллы
Gui, 2: Add, Button, x140 y190 w113 h25 gOgrabanapad, Ограбление и Нападение
Gui, 2: Add, Button, x140 y220 w113 h25 gFuctional, Функционал
Gui, 2: Add, Button, x140 y250 w113 h25 gRepjb, Репорт-жалобы
Gui, 2: Add, Button, x10 y250 w113 h25 gBags, Баги и решения
Gui, 2: Add, Button, x10 y310 w243 h25 gOtv, Ответы 1
Gui, 2: Add, Button, x10 y340 w243 h25 gOtv2, Ответы 2
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    		-----Левый нижний-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
Gui, 2: Add, Button, x500 y200 w138 h28 gSaveData, Сохранить
Gui, 2: Add, Button, x350 y200 w138 h28 gUpdateBinder, Проверить обновления
Gui, 2: Add, Button, x500 y235 w138 h27 grelog, Перезапуск
Gui, 2: Add, Button, x350 y235 w138 h27 gexit, Выход
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    	  -----Правый верхний-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
Gui, 2: Add, Button, x350 y50 w138 h28 gdiscord, Дискорд
Gui, 2: Add, Button, x500 y50 w138 h28 gВход, Пресет
Gui, 2: Add, Button, x350 y85 w138 h28 gdiscordga, Дискорд ГА\ЗГА
Gui, 2: Add, Button, x500 y85 w138 h28 gHotkeys, Горячие Клавиши
Gui, 2: Add, Button, x350 y120 w25 h25 gid, ID
Gui, 2: Add, Button, x380 y120 w55 h25 gEvent, Ивент
Gui, 2: Add, Button, x565 y120 w73 h25 gcoord, Счетчик
Gui, 2: Add, Button, x440 y120 w120 h25 gChange, Изменения
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                	    -----Counter-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
WinSet_Click_Through(I, T="254") {
    IfWinExist, % "ahk_id " I 
    {
        If (T == "Off"){
        WinSet, AlwaysOnTop, Off, % "ahk_id " I
        WinSet, Transparent, Off, % "ahk_id " I
        WinSet, ExStyle, -0x20, % "ahk_id " I
    }
        Else{
        WinSet, AlwaysOnTop, On, % "ahk_id " I
        If(T < 0 || T > 254 || T == "On")
        T := 254
        WinSet, Transparent, % T, % "ahk_id " I
        WinSet, ExStyle, +0x20, % "ahk_id " I
        }
    }
    Else
    return 0
}
Gui, +LastFound +ToolWindow
ID := WinExist()
Gui, Show, NoActivate, Hide x0 y0 w0 h0, Overlay
WinSet_Click_Through(ID, "On")
GuiControl,, Un-Clickable
CustomColor := "#00FF00"
Gui, +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui, Color, cRed
Gui, Font,, Intro
Gui, Font, s10
Gui, Font, q1
Gui, Font, w400
Gui, Add, Text, vMyText cYellow, XXX, YYYY
Gui, Add, Text, vMyTotalR cYellow, XXXXXX, YYYYYY
Gui, Color, 1c2126
WinSet, TransColor, AAAAAA 210
GoSub, UpdateCounter1
Gui, Show, x%qX% y%qY% w100 h63, Overlay
update1:
return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                	-----MainSaveData-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    SaveData:
Gui, Submit, NoHide
    Reload
return
;===================================================================================
SaveData1:
    Gui, 3: Submit, NoHide
    IniWrite, %qX%, Settings.ini, Coords, qX
    IniWrite, %qY%, Settings.ini, Coords, qY
    Reload
return
;===================================================================================
SaveData2:
    Gui, 4: Submit, NoHide
    IniWrite, %qdis%, Settings.ini, Discord, qdis
    Reload
return
;===================================================================================
SaveData3:
    Gui, 5: Submit, NoHide
    IniWrite, %gadis%, Settings.ini, Discord, gadis
    IniWrite, %zgadis%, Settings.ini, Discord, zgadis
    Reload
return
;===================================================================================
SaveData4:
    Gui, 6: Submit, NoHide
    IniWrite, %Radio1Com%, Settings.ini, Settings, /esp
    IniWrite, %Radio2Com%, Settings.ini, Settings, /hidecheatinfo
    IniWrite, %Radio3Com%, Settings.ini, Settings, /dl
    IniWrite, %Radio4Com%, Settings.ini, Settings, /esp 3
    IniWrite, %Radio5Com%, Settings.ini, Settings, /templeader
    IniWrite, %Radio6Com%, Settings.ini, Settings, /chide
    IniWrite, %Radio7Com%, Settings.ini, Settings, /zzdebug
    IniWrite, %Radio8Com%, Settings.ini, Settings, /setdim
    Reload
return
;===================================================================================
SaveData5:
    Gui, 7: Submit, NoHide
    IniWrite, %cID%, Settings.ini, Identifier, cID
    Reload
return
;===================================================================================
SaveData6:
    Gui, 8: Submit, NoHide
    IniWrite, %eVeh%, Settings.ini, Event, eVeh
    IniWrite, %eVeht%, Settings.ini, Event, eVeht
    IniWrite, %eVehс%, Settings.ini, Event, eVehс
    IniWrite, %eWg%, Settings.ini, Event, eWg
    IniWrite, %eWgid%, Settings.ini, Event, eWgid
    IniWrite, %eWgam%, Settings.ini, Event, eWgam
    Reload
return
;===================================================================================
SaveData7:
    Gui, 11: Submit, NoHide
    IniWrite, %Hot1%, Settings(hotkeys).ini, KeySetup, KEY1
    IniWrite, %Hot2%, Settings(hotkeys).ini, KeySetup, KEY2
    IniWrite, %Hot3%, Settings(hotkeys).ini, KeySetup, KEY3
    IniWrite, %Hot4%, Settings(hotkeys).ini, KeySetup, KEY4
    IniWrite, %Hot5%, Settings(hotkeys).ini, KeySetup, KEY5
    IniWrite, %Hot6%, Settings(hotkeys).ini, KeySetup, KEY6
    IniWrite, %Hot7%, Settings(hotkeys).ini, KeySetup, KEY7
    IniWrite, %Hot8%, Settings(hotkeys).ini, KeySetup, KEY8
    IniWrite, %Hot9%, Settings(hotkeys).ini, KeySetup, KEY9
    IniWrite, %Hot10%, Settings(hotkeys).ini, KeySetup, KEY10
    IniWrite, %Hot11%, Settings(hotkeys).ini, KeySetup, KEY11
    IniWrite, %Hot12%, Settings(hotkeys).ini, KeySetup, KEY12
    IniWrite, %Hot13%, Settings(hotkeys).ini, KeySetup, KEY13
    IniWrite, %Hot14%, Settings(hotkeys).ini, KeySetup, KEY14
    IniWrite, %Hot15%, Settings(hotkeys).ini, KeySetup, KEY15
    IniWrite, %Hot16%, Settings(hotkeys).ini, KeySetup, KEY16
    IniWrite, %Hot17%, Settings(hotkeys).ini, KeySetup, KEY17
    IniWrite, %Hot18%, Settings(hotkeys).ini, KeySetup, KEY18
    IniWrite, %Hot19%, Settings(hotkeys).ini, KeySetup, KEY19
    IniWrite, %Hot20%, Settings(hotkeys).ini, KeySetup, KEY20
    IniWrite, %Hot21%, Settings(hotkeys).ini, KeySetup, KEY21
    Reload
return
------------------------------------------------------------------------------------------------------------
                                                -----GUICrash-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
Guishka3:
    Gui 3: Destroy
return
Guishka4:
    Gui 4: Destroy
return
Guishka5:
    Gui 5: Destroy
return
Guishka6:
    Gui 6: Destroy
return
Guishka7:
    Gui 7: Destroy
return
Guishka8:
    Gui 8: Destroy
return
Guishka11:
    Gui 11: Destroy
return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                                -----Hotkeys-----
------------------------------------------------------------------------------------------------------------
Hotkeys:
    ; Между текстом - y25, Между кнопками - y25
;=================================================================================== 
    Gui, 11: -MaximizeBox
    Gui, 11: Show, w608 h550, Горячие клавиши
    Gui, 11: Color, 161A1E
    Gui, 11: Font, c0xFFFFFF
    Gui, 11: Add, Text, x48 y14 w160 h23 +0x200 +Border +0x1, Взаимодействие с игроком
    Gui, 11: Add, Text, x97 y53 w120 h14 +0x200, ТП к игроку
    Gui, 11: Add, Hotkey, x40 y50 w48 h21 vHot1, %KEY1%
    Gui, 11: Add, Text, x97 y78 w120 h14 +0x200, ТП игрока
    Gui, 11: Add, Hotkey, x40 y75 w48 h21 vHot2, %KEY2%
    Gui, 11: Add, Text, x97 y103 w120 h14 +0x200, ТП по метке
    Gui, 11: Add, Hotkey, x40 y100 w48 h21 vHot3, %KEY3%
    Gui, 11: Add, Text, x97 y128 w120 h14 +0x200, Убить
    Gui, 11: Add, Hotkey, x40 y125 w48 h21 vHot13, %KEY13%
    Gui, 11: Add, Text, x97 y153 w124 h14 +0x200, Возродить
    Gui, 11: Add, Hotkey, x40 y150 w48 h21 vHot14, %KEY14% 
;===================================================================================
    Gui, 11: Add, Text, x48 y181 w160 h23 +0x200 +Border +0x1, Другое
    Gui, 11: Add, Text, x97 y220 w120 h14 +0x200, Приятной игры
    Gui, 11: Add, Hotkey, x40 y217 w48 h21 vHot6, %KEY6%
    Gui, 11: Add, Text, x97 y245 w120 h14 +0x200, Быстрый репорт
    Gui, 11: Add, Hotkey, x40 y242 w48 h21 vHot7, %KEY7%
    Gui, 11: Add, Text, x97 y270 w120 h14 +0x200, Ивент(/veh)
    Gui, 11: Add, Hotkey, x40 y267 w48 h21 vHot9, %KEY9%
    Gui, 11: Add, Text, x97 y295 w120 h14 +0x200, +1 Счетчик
    Gui, 11: Add, Hotkey, x40 y292 w48 h21 vHot12, %KEY12%
    Gui, 11: Add, Text, x97 y320 w120 h14 +0x200, Быстрый ответ
    Gui, 11: Add, Hotkey, x40 y317 w48 h21 vHot21, %KEY21%
;===================================================================================
    Gui, 11: Add, Text, x48 y354 w160 h23 +0x200 +Border +0x1, Основные функции
    Gui, 11: Add, Text, x97 y393 w110 h14 +0x200, Пресет
    Gui, 11: Add, Hotkey, x40 y390 w48 h21 vHot8, %KEY8%
    Gui, 11: Add, Text, x97 y418 w90 h14 +0x200,  /chide (on\off)
    Gui, 11: Add, Hotkey, x40 y415 w48 h21 vHot17, %KEY17%
    Gui, 11: Add, Text, x97 y443 w90 h14 +0x200, /zzdebug (on\off)
    Gui, 11: Add, Hotkey, x40 y440 w48 h21 vHot18, %KEY18%
    Gui, 11: Add, Text, x97 y468 w90 h14 +0x200, /esp (on\off)
    Gui, 11: Add, Hotkey, x40 y465 w48 h21 vHot19, %KEY19%
    Gui, 11: Add, Text, x97 y493 w90 h14 +0x200, /dl (on\off)
    Gui, 11: Add, Hotkey, x40 y490 w48 h21 vHot20, %KEY20%
    Gui, 11: Add, Text, x97 y518 w120 h14 +0x200, /gm (on\off)
    Gui, 11: Add, Hotkey, x40 y515 w48 h21 vHot16, %KEY16%
;===================================================================================
    Gui, 11: Add, Text, x300 y14 w130 h23 +0x200 +Border +0x1, Взаимодействие с ТС
    Gui, 11: Add, Text, x349 y57 w120 h14 +0x200, Запустить двигатель
    Gui, 11: Add, Hotkey, x292 y57 w48 h21 vHot4, %KEY4%
    Gui, 11: Add, Text, x349 y82 w90 h14 +0x200, Удалить ТС
    Gui, 11: Add, Hotkey, x292 y82 w48 h21 vHot10, %KEY10%
    Gui, 11: Add, Text, x349 y107 w120 h14 +0x200, ТП ТС
    Gui, 11: Add, Hotkey, x292 y107 w48 h21 vHot11, %KEY11%
;===================================================================================
; vHot22, %KEY22% - След.
;===================================================================================
    Buttonreset() {
    MsgBox, 4, Горячие клавиши, Вы уверены, что хотите выполнить это сброс горячих клавиш?
    IfMsgBox, Yes
    {
        Gosub, reset
    }
    Else
    {
        MsgBox, 0, Горячие клавиши, Сброс отменен.
    }
    }
    Gui, 11: Add, Button, x315 y518 w60 h20 gButtonreset, Сброс
    Gui, 11: Add, Button, x475 y518 w60 h20 gSaveData7, Сохранить
    Gui, 11: Add, Button, x540 y518 w60 h20 gGuishka11, Отменить
return
;===================================================================================
coord:
    Gui, 3: -MaximizeBox
    Gui, 3: Show, w190 h60, X/Y
    Gui, 3: Color, 161A1E
    Gui, 3: Font, c0x999999
    Gui, 3: Add, Edit, x10 y10 w50 h21 vqX, %qX%
    Gui, 3: Add, Edit, x70 y10 w50 h21 vqY, %qY%
    Gui, 3: Add, Text, x5 y33 w120 h23 +0x200 +0x1, Координаты X и Y
    Gui, 3: Add, Button, x125 y10 w60 h20 gSaveData1, Принять
    Gui, 3: Add, Button, x125 y33 w60 h20 gGuishka3, Отменить
return
;===================================================================================
discord:
    Gui, 4: -MaximizeBox
    Gui, 4: Show, w260 h60, Ваш Дискорд
    Gui, 4: Color, 161A1E
    Gui, 4: Font, c0x999999
    Gui, 4: Add, Edit, x10 y10 w90 h21 vqdis, %qdis%
    Gui, 4: Add, Text, x5 y33 w150 h23 +0x200 +0x1, NickName
    Gui, 4: Add, Button, x155 y10 w60 h20 gSaveData2, Принять
    Gui, 4: Add, Button, x155 y33 w60 h20 gGuishka4, Отменить
return
;===================================================================================
discordga:
    Gui, 5: -MaximizeBox
    Gui, 5: Show, w260 h60, Дискорд ГА/ЗГА
    Gui, 5: Color, 161A1E
    Gui, 5: Font, c0x999999
    Gui, 5: Add, Edit, x10 y10 w90 h21 vgadis, %gadis%
    Gui, 5: Add, Edit, x10 y33 w90 h21 vzgadis, %zgadis%
    Gui, 5: Add, Button, x155 y10 w60 h20 gSaveData3, Принять
    Gui, 5: Add, Button, x155 y33 w60 h20 gGuishka5, Отменить
return
;===================================================================================
Вход:
    Gui, 6: -MaximizeBox
    Gui, 6: Show, w210 h132, Пресет
    Gui, 6: Color, 161A1E
    Gui, 6: Font, c0x999999
    Gui, 6: Add, CheckBox, x3 y10 w90 h23 vRadio1Com Checked%Radio1Com%, /esp
    Gui, 6: Add, CheckBox, x3 y35 w98 h23 vRadio2Com Checked%Radio2Com%, /hidecheatinfo
    Gui, 6: Add, CheckBox, x3 y60 w50 h23 vRadio3Com Checked%Radio3Com%, /dl
    Gui, 6: Add, CheckBox, x3 y85 w50 h23 vRadio4Com Checked%Radio4Com%, /esp 3
    Gui, 6: Add, CheckBox, x102 y10 w100 h23 vRadio5Com Checked%Radio5Com%, /templeader 5
    Gui, 6: Add, CheckBox, x102 y35 w90 h23 vRadio6Com Checked%Radio6Com%, /chide
    Gui, 6: Add, CheckBox, x102 y60 w90 h23 vRadio7Com Checked%Radio7Com%, /zzdebug
    Gui, 6: Add, CheckBox, x102 y85 w90 h23 vRadio8Com Checked%Radio8Com%, /specoff    
    Gui, 6: Add, Button, x4 y107 w95 h20 gSaveData4, Принять
    Gui, 6: Add, Button, x101 y107 w95 h20 gGuishka6, Отменить
return
:?:.выдать::
:?:/dslfnm::
    Gui, PunishInput:Destroy
    Gui, PunishInput:+AlwaysOnTop -SysMenu
    Gui, PunishInput:Color, 313338
    Gui, PunishInput:Font, s10 cWhite, Segoe UI
    
    Gui, PunishInput:Add, Text, x10 y10 w380, Введите команды для выдачи (каждая с новой строки):
    Gui, PunishInput:Add, Edit, x10 y35 w380 h200 vPunishCommands Multi WantReturn cBlack
    
    Gui, PunishInput:Add, Button, x10 y245 w185 h30 gExecutePunishCommands, Выдать
    Gui, PunishInput:Add, Button, x205 y245 w185 h30 gClosePunishInput, Отмена
    
    Gui, PunishInput:Show, w400 h285, Выдача наказаний
return

ExecutePunishCommands:
    Gui, PunishInput:Submit, NoHide
    
    Process, Exist, GTA5.exe
    if(!Errorlevel) {
        MsgBox, 16, Выдача наказаний, Запустите игру!
        return
    }
    
    if (PunishCommands = "") {
        MsgBox, 48, Выдача наказаний, Введите команды для выдачи!
        return
    }
    
    Gui, PunishInput:Destroy
    Sleep, 200
    
    WinActivate ahk_exe GTA5.exe
    Sleep, 400
    
    ; Устанавливаем русскую раскладку
    ru := DllCall("LoadKeyboardLayout", "Str", "00000419", "Int", 1)
    en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)
    w := DllCall("GetForegroundWindow")
    pid := DllCall("GetWindowThreadProcessId", "UInt", w, "Ptr", 0)
    l := DllCall("GetKeyboardLayout", "UInt", pid)
    
    if (l != ru) {
        PostMessage 0x50, 0, %ru%,, A
    }
    
    Sleep, 400
    
    FirstCommand := true ; Флаг для первой команды
    
    ; Разбиваем команды по строкам и выполняем
    Loop, Parse, PunishCommands, `n, `r
    {
        if (A_LoopField != "") {
            if (!FirstCommand) { ; Если НЕ первая команда - открываем чат
                SendInput, {T}
                Sleep, 500
            }
            SendInput, %A_LoopField%
            Sleep, 350
            SendInput, {Enter}
            Sleep, 350
            FirstCommand := false ; Помечаем что первая команда уже выполнена
        }
    }
    
    MsgBox, 64, Выдача наказаний, Наказания выданы успешно!
return

ClosePunishInput:
    Gui, PunishInput:Destroy
return

PunishInputGuiClose:
    Gui, PunishInput:Destroy
return
;===================================================================================
id:
    Gui, 7: -MaximizeBox
    Gui, 7: Show, w180 h60, ID
    Gui, 7: Color, 161A1E
    Gui, 7: Font, c0x999999
    Gui, 7: Add, Edit, x10 y10 w80 h23 vcID, %cID%    
    Gui, 7: Add, Text, x5 y33 w58 h23 +0x200 +0x1, Динамик
    Gui, 7: Add, Button, x100 y12 w70 h20 gSaveData5, Принять
    Gui, 7: Add, Button, x100 y35 w70 h20 gGuishka7, Отменить
return
;===================================================================================
Event:
    Gui, 8: -MaximizeBox
    Gui, 8: Show, w215 h150, Ивент
    Gui, 8: Color, 161A1E
    Gui, 8: Font, c0x999999
    Gui, 8: Add, Edit, x5 y5 w100 h23 veVeh, %eVeh%
    Gui, 8: Add, Text, x3 y25 w105 h23 +0x200 +0x1, Название авто
    Gui, 8: Add, Edit, x5 y45 w100 h23 veVeht, %eVeht%
    Gui, 8: Add, Text, x3 y65 w105 h23 +0x200 +0x1, Задержка /veh
    Gui, 8: Add, Edit, x5 y85 w100 h23 veVehс, %eVehс%
    Gui, 8: Add, Text, x3 y105 w105 h23 +0x200 +0x1, Цвет авто xx xx
    Gui, 8: Add, Edit, x110 y5 w100 h23 veWg, %eWg%
    Gui, 8: Add, Text, x108 y25 w105 h23 +0x200 +0x1, Название оружия
    Gui, 8: Add, Edit, x110 y45 w100 h23 veWgid, %eWgid%
    Gui, 8: Add, Text, x105 y65 w105 h23 +0x200 +0x1, ID игрока
    Gui, 8: Add, Edit, x110 y85 w100 h23 veWgam, %eWgam%
    Gui, 8: Add, Text, x108 y105 w100 h23 +0x200 +0x1, Кол-во патрон
    Gui, 8: Add, Button, x5 y126 w97 h20 gSaveData6, Принять
    Gui, 8: Add, Button, x110 y126 w97 h20 gGuishka8, Отменить
return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                                -----HotKey-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
^F9::reload
;===================================================================================
^F10::Exitapp
;===================================================================================
upturn:
    currentScriptPath := A_ScriptFullPath
    Sleep, 1500
    FileDelete, %currentScriptPath%
    UrlDownloadToFile, https://drive.google.com/uc?export=download&id=15zPIEaXmhDxiGbi-7YvBrTdAWcaE12RL, %A_ScriptDir%\admin.ahk
    sleep, 500
    MsgBox, 64, adm, Биндер обновлен.
    Exitapp
return
;===================================================================================
takerep:
    Clipboard :="Приветствую, сейчас займусь Вашим обращением. "
    SendMessage, 0x50,, 0x4190419,, A
    send,{sleep 1}{LControl down}{sleep 1}{vk56}{sleep 1}{LControl up}{sleep 1}
    Clipboard := ""
    counter++
    GoSub, UpdateCounter
Return
;===================================================================================
nicegame:
    Clipboard :="Приятной игры и всего наилучшего."
    SendMessage, 0x50,, 0x4190419,, A
    send,{sleep 1}{LControl down}{sleep 1}{vk56}{sleep 1}{LControl up}{sleep 1}
    Clipboard := ""
    counter++
    GoSub, UpdateCounter
Return
;===================================================================================
dl:
    BlockInput, SendAndMouse
    SendInput, {sc14}
    Sleep 300
    SendInput, /dl{Enter}
return
;===================================================================================
tp:
    BlockInput, SendAndMouse
    SendInput, {sc14}
    Sleep 300
    SendInput, /tp{space}
return
;===================================================================================
inv:
    BlockInput, SendAndMouse
    SendInput, {sc14}
    Sleep 300
    SendInput, /inv{Enter}
return
;===================================================================================
esp:
    BlockInput, SendAndMouse
    SendInput, {sc14}
    Sleep 300
    SendInput, /esp 3{Enter}
return
;===================================================================================
delv:
    BlockInput, SendAndMouse
    SendInput, {sc14}
    Sleep 300
    SendInput, /delveh{Enter}
return
;===================================================================================
killplayer:
    BlockInput, SendAndMouse
    SendInput, {sc14}
    Sleep 300
    SendInput, /hp  0{left 2}
return
;===================================================================================
gcar:
    BlockInput, SendAndMouse
    SendInput, {sc14}
    Sleep 300
    SendInput, /getcar{Space}
return
;===================================================================================
gm:
    BlockInput, SendAndMouse
    SendInput, {sc14}
    Sleep 300
    SendInput, /gm{Enter}
return
;===================================================================================
resc:
    SendInput, {sc14}
    Sleep 300
    SendInput, /rescue{Space}
return
;===================================================================================
gh:
    SendInput, {sc14}
    Sleep 300
    SendInput, /gh{Space}
return
;===================================================================================
chide:
    SendInput, {sc14}
    Sleep 300
    SendInput, /chide{Enter}
return
;===================================================================================
zzdebug:
    SendInput, {sc14}
    Sleep 300
    SendInput, /zzdebug{Enter}
return
;===================================================================================
mtp:
    SendInput, {F5}
    Sleep 300
    SendInput, {sc14}
    Sleep 300
    SendInput, /mtp{Enter}
    Sleep 300
    SendInput, {F5}
return
;===================================================================================
rep:
    counter++
    GoSub, UpdateCounter
    Clipboard :=
return
;===================================================================================
aveh:
    SendInput, {sc14}
    Sleep 300
    SendInput, /aveh{Enter}
return
;===================================================================================
reset:
    Filedelete, %A_AppData%\ahkadminconfig\Settings(hotkeys).ini
    Sleep 300
    FileAppend, Text, Settings(hotkeys).ini
    Sleep 300
    IfNotExist, %A_AppData%\ahkadminconfig\Settings(hotkeys).ini
    Sleep 300
    MsgBox, 64, Уведомление, Удалены все горячие клавиши.
    Sleep 300	   
    Reload
return
;===================================================================================
relog:
    ButtonПерезапуститьскрипт:
    Reload
return
;===================================================================================
exit:
    ExitApp
return
;===================================================================================
suggsbugs:
    Run, https://forms.gle/NHj4Bgdn4Jq372GF9
return
;===================================================================================
preset:
    SendInput, {T}
    Sleep 300
    SendInput, /gm
    Sleep 300
    SendInput, /settimelocal 19 30 0
    Sleep 300
    SendInput, {Enter}
    Sleep 400
    if (Radio4Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /esp 3
        Sleep 300
        SendInput, {Enter}
        Sleep 400
    }
    if (Radio6Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /chide
        Sleep 300
        SendInput, {Enter}
        Sleep 400
    }
    if (Radio2Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /hidecheatinfo
        Sleep 300
        SendInput, {Enter}
        Sleep 400
    }
    if (Radio1Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /esp 3
        Sleep 300
        SendInput, {Enter}
        Sleep 400
    }
    if (Radio3Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /dl
        Sleep 300
        SendInput, {Enter}
        Sleep 400
    }
    if (Radio7Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /zzdebug
        Sleep 300
        SendInput, {Enter}
        Sleep 400
    }
    if (Radio5Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /templeader 7
        Sleep 300
        SendInput, {Enter}
        Sleep 400
    }
    if (Radio8Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /setdim %cID% 0{Enter}
    }
    if else{
        MsgBox, 16, Ошибка, Вы так и не выбрали присет!
    }
return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Спавнер-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
#SingleInstance,Force
#MaxThreadsPerHotkey 2
;===================================================================================
var = 0
return
;===================================================================================
spevent:
    var := !var
    Loop{
        if !var
        break
        SendInput,{T}
        Sleep 30
        SendInput,/veh %eVeh% %eVehс%
        Sleep 100
        SendInput,{Enter}
        Sleep 200
        SendInput,{d down}
        Sleep 200
        SendInput,{d up}
        Sleep %eVeht%
    }
    sleep, 100
    reload
return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Счётчик-----
------------------------------------------------------------------------------------------------------------
UpdateCounter1:
    IniWrite, %DayANS%, Settings(Counter).ini, ANS, DayANS
    IniRead, DayANS, Settings(Counter).ini, ANS, DayANS
    IniWrite, %WeekANS%, Settings(Counter).ini, ANS, WeekANS
    IniRead, WeekANS, Settings(Counter).ini, ANS, WeekANS
    GuiControl,, MyText, День: %DayANS%
    GuiControl,, MyTotalR, Неделя: %WeekANS%
return
;===================================================================================
UpdateCounter:
    DayANS+=1
    WeekANS+=1
    IniWrite, %DayANS%, Settings(Counter).ini, ANS, DayANS
    IniRead, DayANS, Settings(Counter).ini, ANS, DayANS
    IniWrite, %WeekANS%, Settings(Counter).ini, ANS, WeekANS
    IniRead, WeekANS, Settings(Counter).ini, ANS, WeekANS
    GuiControl,, MyText, День: %DayANS%
    GuiControl,, MyTotalR, Неделя: %WeekANS%
return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----PRESET-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
:?:.вход::
    SendInput, /gm{Enter}
    Sleep 300
    if (Radio4Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /esp 3
        Sleep 300
        SendInput, {Enter}
        Sleep 400
    }
    if (Radio6Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /chide
        Sleep 300
        SendInput, {Enter}
        Sleep 400
    }
    if (Radio2Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /hidecheatinfo
        Sleep 300
        SendInput, {Enter}
        Sleep 400
    }
    if (Radio3Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /dl
        Sleep 300
        SendInput, {Enter}
        Sleep 400
    }
    if (Radio7Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /zzdebug
        Sleep 300
        SendInput, {Enter}
        Sleep 400
    }
    if (Radio5Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /templeader 5
        Sleep 300
        SendInput, {Enter}
        Sleep 400
    }
    if (Radio8Com==1){
        SendInput, {T}
        Sleep 300
        SendInput, /setdim %cID% 0{Enter}
    }
    if else
    {
        MsgBox, 16, Ошибка, Ну и зачем ты это тыкаешь, если ещё не выставил "𝐏𝐫𝐞𝐬𝐞𝐭".
    }
return
------------------------------------------------------------------------------------------------------------
                                        -----Телепорты-----
------------------------------------------------------------------------------------------------------------
:?:.ключ::/ctp -2031 -469 12
;===================================================================================
:?:.пд::/ctp 429 -980 30.50
:?:.взх::/ctp 2791 1510 24
:?:.бол::/ctp 287.70 -578.35 50
:?:.болька::/ctp 1154 -1504 38
:?:.шд::/ctp -434.87 6024.54 31.50
:?:.фз::/ctp -2336 3257 32.50
:?:.гов::/ctp -534.70 -222.07 37.60
:?:.вн::/ctp -593 -929 24
:?:.фиб::/ctp 2527 -377 93
;===================================================================================
:?:.балас::/ctp -70.06 -1824.64 26.94
:?:.ваг::/ctp 967 -1817 31
:?:.фэм::/ctp -204.29 -1513.69 31.60
:?:.бладс::/ctp 496 -1330 29.40
:?:.мара1::/ctp 1437.61 -1509.64 62.40
:?:.мара::/ctp 995 -2505 28
;===================================================================================
:?:.лкн::/ctp 1385 1154 114.40
:?:.рм::/ctp -1526 858 181
:?:.як::/ctp -1556.36 113.07 57
:?:.мекс::/ctp 381.03 23.12 91.40
:?:.ир::/ctp -3019.848 101.262 11.629
;===================================================================================
:?:.лост::/ctp 969.84 -128.40 74.40
:?:.аод::/ctp 1995.99 3062.44 47.06
;===================================================================================
:?:.воркт::/ctp 905.873 -182.840 74.113
:?:.воркм::/ctp -432.708 -1705.689 19.018
:?:.воркд1::/ctp 1185.185 -3250.850 6.029
:?:.воркд2::/ctp 74.213 6341.500 31.226
:?:.воркп::/ctp -220.035 -907.442 31.220
:?:.ворка::/ctp 457.760 -663.879 27.703
:?:.ворки::/ctp 1185.984 2691.326 37.798
:?:.воркф::/ctp 1185.984 2691.326 37.798
;===================================================================================
:?:.хум::/ctp 3569.54 3789.48 30
:?:.мейз::/ctp -75 -818 326
:?:.каз::/ctp 923.161 47.937 81.106
:?:.аш::/ctp -620 -2264 6
:?:.гг::/ctp -257 -2023 30
:?:.бургер::/ctp -1171.31 -890.20 13.90
:?:.багама::/ctp -1391.30 -585.35 30
:?:.кайо::/ctp 4488.58 -4493.52 4
:?:.авиа::/ctp 3035.21 -4688.55 15
:?:.мол::/ctp 61.67 -1751.80 47
:?:.трас::/ctp 7400 3946 1124
:?:.аук::/ctp -833 -699.50 27
:?:.бокс::/ctp 8.56 -1658.55 28.71
:?:.бар::/ctp -305.09 6259.59 30.92
:?:.бк::/ctp 500.44 109.79 96.49
:?:.ванила::/ctp 131.33 -1302.93 29.23
:?:.починка::/ctp -1430.45 -450.5 35.91
:?:.лск4::/ctp 1175.47 2671.33 37.85
:?:.порт::/ctp 417 -2501 13.46
:?:.стр::/ctp 1304 1453 98.87
:?:.лес::/ctp -321 6093 31.14
:?:.бмара::/ctp 1302 -1646 51.04
:?:.самол::/ctp 1473 2730 37.38
:?:.ключ::/ctp -51.316 -1077.890 29.904
:?:.особняк::/ctp 5011.070 -5750.629 32.853
;===================================================================================
:?:.бдим::/setdim 3{left 2}
:?:.кдим::/setdim 555{left 4}
;===================================================================================
:?:.инт1::/ctp -146.93 -595.68 166.43
:?:.инт2::/ctp 264.47 -1353.44 23.67
:?:.инт3::/ctp 2573.90 -260 -145.5
:?:.инт4::/ctp 2521 -234 -71
:?:.инт5::/ctp 2540 -269 -59
:?:.инт6::/ctp 303 -995 -94
:?:.инт7::/ctp 227 -986 -99
:?:.инт8::/ctp -3000 70 12
:?:.инт9::/ctp 2532.13 -277.68 -65.33
:?:.инт10::/ctp 2479.61 -272.62 -58.64
:?:.инт11::/ctp 2521.91 -269.01 -39.73
:?:.инт12::/ctp 2491.74 -246.01 -55.73
:?:.инт13::/ctp 2154.34 2916.8 -84.9
:?:.инт14::/ctp -1506.631 -2995.622 -82.207
:?:.инт16::/ctp 561.89 -446.65 -69.65
:?:.инт17::/ctp 478 -1271 -7
;===================================================================================
:?:.спд::/ctp 483.140 -996.473 30.690
:?:.семс::/ctp 309.812 -565.172 43.284
:?:.ссд::/ctp -434.720 6007.525 27.986
:?:.сфз::/ctp -2352.895 3256.369 92.904
:?:.сгов::/ctp -546.298 -192.803 32.882
:?:.свн::/ctp -594.387 -929.585 32.525
:?:.сфиб::/ctp 2516.250 -328.534 101.893
:?:.скайо::/ctp 4996.338 -5739.071 79.11
:?:.сяк::/ctp -1511.617 110.914 73.77
:?:.сир::/ctp -2956.760 42.077 7.964
:?:.срм::/ctp -1512.286 841.529 177.000
:?:.смекс::/ctp 411.211 5.318 84.922
:?:.слкн::/ctp 1397.579 1141.242 107.02
:?:.сбалас::/ctp -75.705 -1811.187 26.942
:?:.смара::/ctp 1445.227 -1486.904 66.535
:?:.сваг::/ctp 975.165 -1858.049 31.274
:?:.сбладс::/ctp 515.885 -1341.602 29.373
:?:.сфэм::/ctp -237.851 -1508.816 32.935
;===================================================================================
:?:.сш::/ctp 1888.585 3625.920 34.193
:?:.палето::/ctp -229.238 6108.973 75.349
:?:.ричман::/ctp -1927.219 358.418 103.399
:?:.рокфорд::/ctp -78.035 995.733 247.247
:?:.миррор::/ctp 1278.025 -531.254 83.166
;===========================Дополнительные точки======================================
:?:.ч::/ctp -511 4400 89 ; NRD угонки
:?:.ч1::/ctp 797 6437 32 ; NRD угонки №2
:?:.азс::/ctp 2678 3265 61 ; Азс №15
:?:.ашан::/ctp 2732 3483 74 ; Ашан ( рыбный мегамол - суета )
:?:.зеленый::/ctp -3136 1129 21 
:?:.рынок::/ctp-1242 1469 4
:?:.дом2::/ctp 1429 3140 40 
:?:.дом::/ctp -167 428 111
:?:.так::/ctp -1126 4672 240 
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Бизы-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
:?:.порт1::
    SendInput, /ctp 490.2 -3153.8 6.2
    Sleep 200
    SendInput, {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/setdim %cID% 222
    Sleep 700
    SendInput, {Enter}
return
;===================================================================================
:?:.порт2::
    SendInput, /ctp 429.3 -2500.9 14.2
    Sleep 200
    SendInput, {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/setdim %cID% 222
    Sleep 700
    SendInput, {Enter}
return
;===================================================================================
:?:.мара1::
    SendInput, /ctp 1728.7 -1626.4 112.5
    Sleep 200
    SendInput, {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/setdim %cID% 222
    Sleep 700
    SendInput, {Enter}
return
;===================================================================================
:?:.мара2::
    SendInput, /ctp 1330.4 -1632.2 52.3
    Sleep 200
    SendInput, {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/setdim %cID% 222
    Sleep 700
    SendInput, {Enter}
return
;===================================================================================
:?:.стройка1::
    SendInput, /ctp 1039.1 2406.7 53.9
    Sleep 200
    SendInput, {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/setdim %cID% 222
    Sleep 700
    SendInput, {Enter}
return
;===================================================================================
:?:.стройка2::
    SendInput, /ctp 1291.4 1467.7 99.3
    Sleep 200
    SendInput, {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/setdim %cID% 222
    Sleep 700
    SendInput, {Enter}
return
;===================================================================================
:?:.свал1::
    SendInput, /ctp 2405.8 3103.3 48.3
    Sleep 200
    SendInput, {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/setdim %cID% 222
    Sleep 700
    SendInput, {Enter}
return
;===================================================================================
:?:.свал2::
    SendInput, /ctp 2674.8 3248.5 55.4
    Sleep 200
    SendInput, {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/setdim %cID% 222
    Sleep 700
    SendInput, {Enter}
return
;===================================================================================
:?:.лес1::
    SendInput, /ctp -446.1 5347.7 82.3
    Sleep 200
    SendInput, {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/setdim %cID% 222
    Sleep 700
    SendInput, {Enter}
return
;===================================================================================
:?:.лес2::
    SendInput, /ctp -849.8 5413.8 34.9
    Sleep 200
    SendInput, {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/setdim %cID% 222
    Sleep 700
    SendInput, {Enter}
return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Команды-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
:?:.сзе::/ctp
:?:.снег::/removesnowman
:?:/rtn::/resettempname
:?:.кет::/resettempname
:?:.куыуееуьзтфьу::/resettempname
:?:.пь::/gm
:?:.гтифт::/unban
:?:/tf::/tempfamily
:?:.еа::/tempfamily
:?:.еуьзафьшдн::/tempfamily
:?:/sm::/setmaterials
:?:.ыь::/setmaterials
:?:.ыуеьфеукшфды::/setmaterials
:?:/tn::/tempname
:?:.ет::/tempname
:?:.еуьзтфьу::/tempname
:?:.яяв::/zzdebug
:?:/zzd::/zzdebug
:?:.яявуигп::/zzdebug
:?:/amph::/addamphitheater
:?:.фьзр::/addamphitheater
:?:/ramph::/removeamphitheater
:?:.кфьзр::/removeamphitheater
:?:/gzone::/togglegreenzone
:?:.пящту::/togglegreenzone
:?:/mcheck::/mutecheck
:?:.ьсрусл::/mutecheck
:?:.ьгеусрусл::/mutecheck
:?:.гтофшд::/unjail
:?:.цфкт::/warn
:?:/ld::/lastdriver
:?:.дв::/lastdriver
:?:/af::/ainfect
:?:.фа::/ainfect
:?:/sk::/skick
:?:.ыл::/skick
:?:/k::/kick
:?:.л::/kick
:?:/ai::/auninvite
:?:.аинв::/auninvite
:?:.фш::/auninvite
:?:.фуоусе::/aeject
:?:.фу::/aeject
:?:.аи::/fb
:?:.гтьгеу::/unmute
:?:.пуезшт::/getpin
:?:.пшв::/gid
:?:.фвьшты::/admins
:?:.фштаусе::/ainfect
:?:.умутещт::/eventon
:?:.умутещаа::/eventoff
:?:.пц::/gw
:?:.мур::/veh
:?:.ашчсфк::/fixcar
:?:.уьздуфвук::/templeader
:?:.фофшдсрусл::/ajailcheck
:?:.ифтсрусл::/bancheck
:?:/tl::/templeader
:?:.ед::/templeader
:?:.ылшсл::/skick
:?:.кузфшк::/repair
:?:.фгтшмшеу::/auninvite
:?:.учсфк::/excar
:?:.агуд::/fuel
:?:.згддекгтл::/pulltrunk
:?:.акууя::/freez
:?:.езсфк::/tpcar
:?:.дфыевкшмук::/lastdriver
:?:.вудшеуь::/delitem
:?:.езр::/tph
:?:.пез::/gtp
:?:/gc::/getcar
:?:.пс::/getcar
:?:.фв::/admins
:?:.ум::Так задуман функционал сервера.
:?:/ad::/admins 
:?:.з::/players
:?:/p::/players
:?:.здфнукы::/players
:?:.рес::/rescue
:?:.ез::/tp
:?:.ызус::/spec
:?:.ызусщаа::/specoff {Enter} {F5}
:?:.фыьы::/asms
:?:.ку::
    SendInput, Приветствую. Сейчас займусь Вашим обращением.{Space}
    counter++
    GoSub, UpdateCounter
:?:.ещё::Остались ли у Вас ещё какие-либо вопросы?
:?:.ф::/a
:?:/sp::/spec
:?:.ыз::/spec
:?:/so::/specoff {Enter} {F5}
:?:.ыщ::/specoff {Enter} {F5}
:?:/kill::/hp 0{left 2}
:?:.лшдд::/hp 0{left 2}
:?:.штсфк::/incar
:?:.пр::/gh
:?:.пиздец::<@&908323984788033536> Уважаемая администрация, просим зайти Вас на сервер, в данный момент нам очень нужна Ваша помощь.
:?:.штм::/inv
:?:.шв::/id
:?:.никак:: 
    SendInput, Приветствую. Никак.{Space}
    counter++
    GoSub, UpdateCounter
:?:.рз::/hp
:?:.од::/ajail
:?:.фофшд::/ajail
:?:.лшсл::/kick
:?:.ылшсл::/skick
:?:.кузфшк::/repair
:?:.вд::/dl
:?:.уыз::/esp
:?:.пуесфк::/getcar
:?:.ифт::/ban
:?:.вудмур::/delveh
:?:.ьез::/mtp
:?:.мур::/veh
:?:.фмур::/aveh
:?:.фдщсл::/alock
:?:.рфквифт::/hardban
:?:.ьгеу::/mute
:?:.пшв::/gid
:?:.пшмудшс::/givelic
:?:.езии::/tpbb
:?:.ср::/chide
:?:/ch::/chide
:?:.пы::/gs
:?:.акууяу::/freeze 
:?:.акууямур::/freezveh
:?:/scd::/setcardim
:?:.ысв::/setcardim
:?:.ыуесфквшь::/setcardim
:?:.куысгу::/rescue
:?:.ыуевшь::/setdim
:?:/sd::/setdim
:?:.ыв::/setdim
:?:.сршву::/chide
:?:.фгтсгаа::/auncuff
:?:.фсгаа::/acuff
:?:.акууяф::/freeza
:?:.ызфцтсфк::/spawncar
:?:/sc::/spawncar
:?:.ыс::/spawncar
:?:.темп::/templeader
:?:.пинг::/ping{enter}
:?:.кик::/auninvite
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Кастом-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
:?:.мп::
    SendInput,/a /o Уважаемые игроки, сейчас пройдёт мероприятие "". Попасть на мероприятие можно при помощи команды /event, уходить от RP, путём телепортации на мероприятие, строго запрещено{!} Главный приз: 20.000$.{left 149}
return
;===================================================================================
:?:.бб::
    SendInput, /auncuff %cID% {enter}
return
;===================================================================================
:?:.дим::
    SendInput, /specoff {enter}
return
;===================================================================================
:?:.евдим::
    SendInput, /setdim %cID% 58 {enter}
return
;===================================================================================
:?:.рев::
    SendInput, /rescue %cID% {enter}
return
;===================================================================================
:?:.афк::
    SendInput, /ctp 2491.74 -246.01 -55.73 {enter}
    Sleep 320
    SendInput, {T}
    Sleep 300
    SendInput,/a afk 
return
;===================================================================================
:?:.утон::
    Input, carId, V, {LAlt} {Enter}
    Sleep 200
    SendInput,{T}
    Sleep 300
    SendInput, /getcar %carId%
    Sleep 370
    SendInput,{Enter}
    Sleep 200
    SendInput,{T}
    Sleep 250
    SendInput,/repair
    Sleep 300
    SendInput,{Enter}
    Sleep 200
    SendInput,{T}
    Sleep 250
    SendInput,/setcardim %carId% 5
    Sleep 300
    SendInput,{Enter}
    Sleep 200
    SendInput,{T}
    Sleep 250
    SendInput,/setcardim %carId% 0
    Sleep 300
    SendInput,{Enter}
    Sleep 200
    SendInput,{T}
    Sleep 250
    SendInput,/repair
    Sleep 300
    SendInput,{Enter}
    Sleep 200
    SendInput,{T}
    Sleep 300
    SendInput, /getcar %carId%
    Sleep 320
    SendInput,{Enter}
return
;===================================================================================
:?:.сдим::
    Input, dimId, V, {LAlt} {Enter}
    Sleep 50
    SendInput,{T}
    Sleep 150
    SendInput,/setdim %dimID% 0
    Sleep 300
    SendInput, {Enter}
return
;===================================================================================
:?:.тхил::
    Input, hilId, V, {LAlt} {Enter}
    Sleep 50
    SendInput,{T}
    Sleep 250
    SendInput,/rescue %hilId%
    Sleep 300
    SendInput,{Enter}
    Sleep 300
    SendInput,{T}
    Sleep 250
    SendInput,/hp %hilId% 100
    Sleep 300
    SendInput,{Enter}
    Sleep 300
    SendInput,{T}
    Sleep 300
    SendInput,/gh %hilId%
    Sleep 350
    SendInput,{Enter}
return
;===================================================================================
:?:.хил::
    Input, hilId2, V, {LAlt} {Enter}
    Sleep 50
    SendInput,{T}
    Sleep 150
    SendInput,/rescue %hilId2%
    Sleep 300
    SendInput,{Enter}
    Sleep 200
    SendInput,{T}
    Sleep 150
    SendInput,/hp %hilId2% 100
    Sleep 300
    SendInput,{Enter}
return
;===================================================================================
:?:.чел::
    Input, chelId, V, {LAlt} {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 150
    SendInput,/ctp -51.316 -1077.890 29.904
    Sleep 300
    SendInput,{Enter}
    Sleep 200
    SendInput,{T}
    Sleep 150
    SendInput,/gh %chelId%
    Sleep 300
    SendInput,{Enter}
    Sleep 200
    SendInput,{T}
    Sleep 150
    SendInput,/setdim %chelId% 0
    Sleep 300
    SendInput,{Enter}
return
;===================================================================================
:?:.чайхана::
    SendInput,/chide
    Sleep 300
    SendInput, {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/inv
    Sleep 300
    SendInput, {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/chide
    Sleep 300
    SendInput, {Enter}
return
;===================================================================================
:?:.ган::
    SendInput,/gw %eWgid% %eWg% %eWgam% {Enter}
return
;===================================================================================
:?:.флаер::
    Input, flareId, V, {LAlt} {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/gw %flareId% weapon_flare 5{Enter}
return
;===================================================================================
:?:.ракета::
    Input, fireworkId, V, {LAlt} {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/gw %fireworkId% weapon_firework 55{Enter}
return
;===================================================================================
:?:.мушкет::
    Input, musketId, V, {LAlt} {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/gw %musketId% weapon_musket 555{Enter}
return
;===================================================================================
:?:.снапа::
    Input, heavysniperId, V, {LAlt} {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/gw %heavysniperId% weapon_heavysniper_mk2 555{Enter}
return
;===================================================================================
:?:.топорик::
    Input, hatchetId, V, {LAlt} {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/gw %hatchetId% weapon_stone_hatchet{Enter}
return
;===================================================================================
:?:.мачете::
    Input, macheteId, V, {LAlt} {Enter}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/gw %macheteId% weapon_machete{Enter}
return
;===================================================================================
:?:.тунк::
    SendInput,/veh khanjali
    Sleep 300
    SendInput, {Enter}
    Sleep 50
    SendInput,{T}
    Sleep 100
    SendInput,/incar{Space}
return
;===================================================================================
:?:.брички::
    SendInput,/veh %eVeh% %eVehс%{Enter}
    Sleep %eVeht%
    SendInput,{d down}
    Sleep 200
    SendInput,{d up}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/veh %eVeh% %eVehс%
    Sleep 300
    SendInput, {Enter}
    Sleep %eVeht%
    SendInput,{d down}
    Sleep 200
    SendInput,{d up}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/veh %eVeh% %eVehс%
    Sleep 300
    SendInput, {Enter}
    Sleep %eVeht%
    SendInput,{d down}
    Sleep 200
    SendInput,{d up}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/veh %eVeh% %eVehс%
    Sleep 300
    SendInput, {Enter}
    Sleep %eVeht%
    SendInput,{d down}
    Sleep 200
    SendInput,{d up}
    Sleep 100
    SendInput,{T}
    Sleep 100
    SendInput,/veh %eVeh% %eVehс%
    Sleep 300
    SendInput, {Enter}
return
; =======================================
:?:.мзр::Могу закрывать Ваш репорт?
:?:.опра::Если у Вас есть фиксация нарушения, Вы можете подать репорт-жалобу или обратиться с жалобой на форум.
:?:.репа::(Репорт-Жалоба:){left 2}
:?:.омг::Вам нужно подтвердить свой Discord аккаунт: https://support.discord.com/hc/ru/articles/6181726888215. Добавлять для этого в друзья необязательно. Также вступите в общий Discord канал проекта, в котором находится вся администрация: https://discord.gg/majestic
:?:.боль::Нужно рыться в мусорках и общаться в людных местах без маски и перчаток, для того, чтобы быстрее всего заболеть.
:?:.изв::Приносим свои извинения за возможные неудобства.
:?:.инт15::/ctp 899.5518 -3246.038 -98.04907
:?:.хеви::/gw weapon_heavysniper_mk2{left 23}
:?:.реви::/gw weapon_revolver_mk2{left 20}
:?:.сайга::/gw weapon_heavyshotgun{left 20}
:?:.караба::/gw weapon_carabinefirle_mk2{left 25}
:?:.болт::/gw WEAPON_PRECISIONRIFLE{left 22}
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Дискорды-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
:?:.дс::
    SendMessage, 0x50,, 0x4090409
    SendInput, Здравствуйте, предоставьте видеодоказательство мне в личные сообщения дискорда: %qdis%.
return
;===================================================================================
:?:.дис::
    SendMessage, 0x50,, 0x4090409
    SendInput, Здравствуйте, обратитесь ко мне в личные сообщения дискорда: %qdis%.
return
;===================================================================================
:?:.га::
    SendMessage, 0x50,, 0x4090409
    SendInput, Обратитесь в личные сообщения дискорда к главному администратору: %gadis%.
return
;===================================================================================
:?:.зга::
    SendMessage, 0x50,, 0x4090409
    SendInput, Обратитесь в личные сообщения дискорда к заместителю главного администратора: %zgadis%.
return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Клише-----
------------------------------------------------------------------------------------------------------------
:?:.вод::В данной ситуации я могу удалить ваш транспорт, в дальнейшем вы можете вызвать такси или заспавнить транспорт на ключе у нпс (на карте изображен в виде ключа). Так же вам напоминаю, что администрация не телепортирует игроков.
;===================================================================================
; Донат и информация о донатах:
:?:.донат::Все проблемы с платежами решаются исключительно через почту - help@majestic-rp.ru
:?:.донт::Чтобы забрать транспорт с донат инвентаря, Вам нужно зайти в F2 - Магазин - Предметы.
:?:.твойпромо::Вы получаете за каждого игрока 7.500$ при достижении им третьего уровня, а также 10 процентов доната игрока.
:?:.скин::Оружие / броня появляется в донат инвентаре, его можно будет распылить. Однако при его применении невозможно дальнейшее распыление. Чтобы применить скин на оружие: F2 - Магазин - Скины - Выбираете оружие / броню и скин к нему - Применить, скин применяется ко всем оружиям / броне выбранного типа. Скин привязывается к игроку, выбить оружие со скином / сбросить / обменять / продать - невозможно.
:?:.слоты::Чтобы увеличить гаражные места, Вы можете продать свой транспорт или купить дом/квартиру. Так же можете нажать F2 - Магазин - Персонаж и купить дополнительное гаражное место.
:?:.ник::Чтобы изменить никнейм, Вам надо нажать - F2 > Магазин > Персонаж.
:?:.перс::Чтобы изменить внешность персонажа, Вам надо нажать F2 > Магазин > Персонаж, но при этом Вы должны находится в магазине одежды №15.
:?:.ктату::Покупая тату за Majestic Coins Вы получаете его в безлимитное использование. Последующее снятие/нанесение абсолютно бесплатно. Так же работают и тату с боевого пропуска.
:?:.адон::Активировать уникальный код можно через F2 > Магазин > Пополнить.
:?:.ндон::Купить уникальный код можно через kinguin.net/c/112566/majestic-rp.
:?:.чеквип::Чтобы просмотреть имеется ли у Вас Majestic Premium, зайдите в F2 > Магазин > Majestic Premium.
;===================================================================================
; Взаимодействие ТС и Домом
;Транспорт
:?:.автоплюс::Чтобы найти Ваше авто, воспользуйтесь телефоном и приложением AutoPlus. Если же оно на месте парковки, Вы можете его призвать через любой автосервис (гаечный ключ на карте).
:?:.спавнкар::Вы можете призвать свой транспорт через любой автосервис (гаечный ключ на карте).
:?:.ремонт::Вам нужно купить запчасть для машины на любой АЗС или 24/7, нажать G > Починить замок / аккумулятор / залить масло. Также не забудьте ремонтный комплект.
:?:.канистра::Чтобы использовать канистру, возьмите её в руки, нажмите G на авто - Заправить (транспорт должен быть открыт).
:?:.свалка::Вы можете сдать авто / катер / вертолет на свалку. После сдачи вы получите 50 процентов от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый красный круг.
:?:.сто::Что бы починить Ваш транспорт, Вам нужно приехать на СТО (иконка гаечного ключа с отверткой на карте в желтой обводке), деталь возможно починить только при <95% износа.
:?:.замок::Вам необходимо купить дверной замок в магазине 24/7 и набор инструментов на ближайшей заправке, затем подойти к своему транспорту G -> Починить дверной замок.
:?:.акум::Вам необходимо купить аккумулятор и набор инструментов на ближайшей заправке, затем подойти к своему транспорту и нажать G -> Заменить аккумулятор.
:?:.масло::Вам необходимо купить моторное масло и набор инструментов на ближайшей заправке, затем подойти к своему транспорту G -> Заменить масло.
:?:.кавто::Чтобы сделать дубликат ключей от авто необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат. Максимум можно сделать три дубликата.
:?:.парк::Чтобы припарковать транспорт, будучи за рулем нажмите G - Припарковать.
:?:.дубликат::Чтобы сделать дубликат ключа от транспорта, Вам необходимо купить заготовку для ключа в магазине 24/7, после навестись на авто и нажать G - Сделать дубликат.
:?:.арен::Чтобы отказаться от аренды транспорта, Вам необходимо находится около него, после навестить на транспорт и нажать G - Отменить аренду, так же можете отменить аренду транспорта через приложение Auto Plus на телефоне.
:?:.угон::Чтобы взломать транспорт, Вам необходимо иметь Программатор ЭБУ и Турбодекодер.
:?:.типпосадки::Вам нужно зайти в F2 - Настройки и поменять тип посадки на приоритет водительское.
:?:.рем::Чтобы починить транспорт, купите ремонтный комплект на любой АЗС. Далее наведитесь на авто и нажать G - Починить транспорт.
:?:.авторынок::Для того, чтобы выставить свой транспорт на продажу, Вам необходимо приехать на территорию авторынка, выбрать место и нажать на клавишу G - Авторынок - Выставить на продажу.
:?:.толк::Чтобы толкать транспорт, Вам нужно подойти к нему со стороны багажника, нажать G - Толкать. Транспорт должен быть открыт, а так же не находится в функциональной зеленой зоне. Спортивный транспорт толкать невозможно.
;Дом
:?:.сейф::Закрывать интерфейс сейфа можно только нажав на ESC. В сейф можно класть до 5 миллионов, деньги списываются с наличных. Нельзя продать дом государству, игроку или обменять, если в сейфе есть деньги. Сначала требуется их забрать. Если Вы не успеете оплатить налог на дом и он уйдет на аукцион, деньги с сейфа зачислятся Вам наличными.
:?:.подсел::Чтобы подселить игрока к себе в дом или же квартиру, стоя около дома, наведитесь на игрока и нажмите G - Подселить.
:?:.госдом::Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75% от его гос. цены. Если Вы невовремя оплатите налоги или забудете это сделать, дом выставится на аукцион автоматически.
:?:.кладовка::Чтобы сделать дубликат кладовки, Вам необходимо купить дубликат ключей в магазине 24/7, после находится около нее, нажать по игроку через G - Передать ключи от кладовки.
;===================================================================================
; Инструкции по выполнению квестов и заданий:
:?:.работы::Для выполнения квеста на работе, Вам необходимо подойти к NPC и нажать Е. Подобные квесты можно взять на любой из работ (все зеленые чемоданы на карте).
:?:.новичок::Квест новичка берется и проходится один раз. Если вы ранее начали проходить на другом персонаже, то нужно закончить прохождение на нем. Задание выполняется один раз на аккаунт.
:?:.отмнов::Если вы не можете взять квест, то Вам необходимо отменить активный квест. Чтобы проверить его наличие, нажмите F2 - Задания - Активные, при желании там же его можно отменить. Если у Вас не отображается квест в правом верхнем углу экрана, попробуйте нажать F6 несколько раз. Если информация так же не появляется, перезайдите на сервер.
:?:.место::Чтобы у Вас засчитывался квест с рыбалкой, Вам необходимо рыбачить на месте рыбалки, которое доступно Вам по уровню.
:?:.сов::Работы для совместного выполнения - мусоровоз, почтальон, инкассатор. На карте изображены в виде зеленых чемоданов. Для выполнения квеста на работе, Вам необходимо подойти к NPC, после чего нажать Е. Подобные квесты можно взять на любой из работ (все зеленые чемоданы на карте).
:?:.пут::Чтобы найти путеводителя, Вам необходимо открыть карту и найти значок в виде человека махающего рукой. Далее, Вам нужно подойти к нему и нажать Е. Вам будет доступна аренда авто, а так же взятие начального квеста.
:?:.квест::Ознакомиться с мировым квестом Вы можете приехав к метке красного знака вопроса на карте. Квесты доступны всем. Личные квесты Вы можете проходить в любое время, но, если Вы захотите участвовать в мировом квесте и получить дополнительные бонусы, то Вам нужно поторопиться выполнить личный квест. Только несколько человек смогут попасть в топ и получить дополнительные игровые бонусы, каждую неделю доступно по 3 личных и мировых квеста. - Некоторые квесты по типу инкассатора / мусорщика / почтальона можно выполнять в 2-ем и более, засчитываться они будут всем.
:?:.дмг::На первом этаже стоит NPC у которого можно взять задание. Чтобы отбыть срок в деморгане, нужно выполнять задачи, например помыть туалет. В определенное время тюрьма закрывает клетки на 5 минут, соответственно, в это время отбыть срок нельзя.
:?:.ежеднев::Награду голубой редкости (каждые 7 дней) Вы можете забрать только тогда, когда собраны 5 предыдущих наград. Красную награду (каждые 30 дней) Вы можете забрать если получили 70% прошлых наград (~21 день).
:?:.билл::NPC Билл находится на рынке около фермы.
:?:.руда::Единственный способ продажи руды - маркетплейс, добыть её Вы можете на карьере (F3 > Работа > Карьерщик). Применяется только для сдачи семейных контрактов или крафтов. Шанс выпадения случайный, самая редкая руда - золотая.
;===================================================================================
; Предметы с БП
:?:.био::Биодобавка 1 / 2 / 3 уровня ускоряет прокачку рабочих навыков в 2 раза (30 / 60 / 120 минут).
:?:.биол::Biolink восполняет голод и жажду до 100% и убирает потребность в еде и воде на 5 часов.
:?:.пицца::Гавайская пицца содержит 8 кусочков, каждый восполняет 50 сытости.
:?:.ремка::Ремонтный набор для оружия при использовании чинит любое оружие в руках на 30%, после использования он пропадает.
:?:.набор::Большой ремонтный набор для автомобиля аналог обычному ремонтному комплекту, но использовать его можно 25 раз.
:?:.пилюля::Экспериментальная пилюля "Имморталитикс" дает шанс в 50% излечиться от всех болезней, в ином случае потерять 50 единиц здоровья.
:?:.бобы::Консервированные бобы восполняют 35 единиц сытости и жажды.
:?:.волосы::При использовании стайлинга для волос игрока невозможно подстричь. Тот, кто попытается это сделать - сломает машинку для бритья, действует 12 часов.
:?:.губер::Благодарственное письмо губернатора увеличивает зарплату на 50%, действует в течение 5 часов.
:?:.испбургер::Испорченный бургер снижает сытость и жажду до 0.
:?:.бургер::Гамбургер восстанавливает 40 единиц сытости.
:?:.капсулы::Капсулы восстановления пополняют 9 единиц здоровья раз в 2 секунды, при использовании 2х подряд - передозировка и -50 единиц здоровья.
:?:.батончик::Протеиновый батончик ускоряет прокачку спортивных навыков в 2 раза и действует 20 минут.
:?:.металл::Улучшенный металлоискатель это аналог обычного металлоискателя, но его радиус для поиска клада увеличен в 2 раза.
:?:.скидка::Скидка на одежду (купон) - аналог скидке на покупку транспорта, применим в любом магазине одежды, не имеет срока использования.
:?:.реднека::Непредсказуемый коктейль Реднека имеет три разных эффекта: ослепит на 5 минут, пополнит 100 здоровья, сытости и жажды, либо вызовет отравление.
:?:.скейт::Скейт даёт возможность передвигаться с соответствующей анимацией, скорость равна ходьбе, с зажатым SHIFT - равна скорости бега.
:?:.ролики::Ролики дают возможность передвигаться с соответствующей анимацией, скорость равна ходьбе, с зажатым SHIFT - равна скорости бега.
:?:.крепление::Система крепления для мотоцикла позволяет Вам пристегнуться и не падать при столкновении с другим транспортом или предметами. Снять с мотоцикла ее нельзя, ставится один раз и навсегда.
:?:.сигналка::Автосигнализация сработает, если зажигание на Вашем транспорте будет взломано. Уведомление придет Вам и Вашей семье, если транспорт семейный. Снять с транспорта ее нельзя, ставится раз и навсегда.
:?:.двершок::Набор дверных шокеров наносит урон игроку при попытке открыть закрытый транспорт. Снять с транспорта их нельзя, ставятся раз и навсегда.
:?:.горн::Воздушный горн при использовании выводит всех игроков в радиусе 10 метров на некоторое время и убирает у всех оружие из активного слота, если таковое имеется. За одно использование тратится 2% прочности.
:?:.кастет::Стальной кастет при нанесении урона оглушает противника на небольшое время. При смерти данный предмет не выпадает.
:?:.ингал::Ингалятор - улучшенная альтернатива бонга, которая не требует зажигалки. Использование происходит менее чем за секунду, прочность у него не тратится.
:?:.крем::Крем-маска при нанесении не позволит идентифицировать Вашу личность в течение 30 минут, однако, сотрудники гос. структур могут смыть ее.
:?:.сверхтяж::Сверхтяжелый бронежилет имеет 150% прочности, но накладывает на персонажа эффект перевеса.
:?:.энергос::Энергетик увеличивает скорость передвижения персонажа, эффект перевеса не снимает, если таковой имеется.
:?:.пенни::Счастливый пенни нужен для прокручивания колеса удачи в казино. Вы так же можете сыграть с другим игроком в камень-ножницы-бумага на данный предмет, и в случае выигрыша получить еще один. Если у Вас более 1 пенни в инвентаре, Вы можете прокрутить колесо удачи столько раз, сколько у Вас имеется пенни, но в день максимум это можно сделать 5 раз.
:?:.гпстрекер::GPS трекер можно поставить на транспорт и отслеживать его местоположение на карте. Снять его с транспорта нельзя, ставится один раз и навсегда.
:?:.точкамень::Точильный камень нужен для заточки инструментов и повышении их эффективности в получении ресурсов с каждой заточкой.
:?:.глушилка::Глушилка связи позволяет глушить любые электронные устройства и сигналы связи в радиусе 50 метров. Имеет запас прочности.
:?:.саморес::Набор самореанимации используется при критическом состоянии Вашего персонажа перед смертью. Позволяет Вам воскресить себя с 10 единицами здоровья.
:?:.рамка::Откидная рамка для номеров позволяет спрятать установленный номер на транспорте, чтобы избежать наказания за превышение скорости. Находясь в машине нажмите G - Убрать номер. Снять с транспорта их нельзя, ставится один раз и навсегда.
:?:.фляга::Стальная фляжка наполняется около любого источника воды (в инвентаре нажмите ПКМ по фляжке - Наполнить), имея вместительность 500 ед. жажды (за один глоток прибавляет 100 ед. жажды). Имеет бесконечную прочность.
:?:.блокавто::Блок автопилота позволяет установить автопилот на любой автомобиль. Работает так же, как и обычный автопилот на электромобилях. Снять с транспорта его нельзя, ставится один раз и навсегда.
:?:.бронпатр::Магазин бронебойных патронов - модификация на оружие, которая позволяет наносить 20% урона по здоровью, игнорируя надетый бронежилет и изменяя звук хитмаркера. Он не бесконечный и со временем ломается. Совместим с тем же оружием, на которое можно поставить увеличенный магазин.
:?:.стимгруз::Стимулятор грузоподъёмности cнимает действие эффекта "Перевес" на 1 час.
:?:.стимлеч::Стимулятор лечения увеличивает восстановление здоровья на 20% от применения предметов, которые мгновенно лечат / постепенно восстанавливают здоровье на 30 минут.
;===================================================================================
; Скиллы и нач. работы
:?:.рыбалка::Для того чтобы рыбачить, Вам нужно удилище, катушка, леска, крючок, а так же наживка или приманка. Все это покупается в рыболовном магазине, который находится около Палето-Бей. Подходите к зоне рыбалки своего уровня, далее собираете удочку и нажимаете Е, что бы начать рыбачить. После звукового и визуального эффекта, Вам нужно будет подсечь рыбу. После успешной подсечки нажимайте A-D в противоположную сторону от движения рыбы, пока не выловите её. Рыбу можно забрать себе, либо отпустить, получив за это дополнительные очки опыта для прокачки уровня рыбака. Рыбу в дальнейшем можно продать на маркетплейсе либо у NPC на рынке.
:?:.скилрыб::Рыбак - навык профессии, прокачивающийся путём ловли рыбы (F3 > Работа > Рыбак). Первый уровень - Зоны: 1, 2, 3, 4. Второй уровень - Зоны: 5,6. Третий уровень - Зоны: 7,8. Четвертый уровень - Зоны: 9,10. Пятый уровень - Зона 11. Шестой уровень - Зона 12. Седьмой уровень - Зона 13. Восьмой уровень - Зона 14. Данный уровень является максимальным в данной профессии. Эффект "Опьянение" уменьшает время ожидания поклёвки рыбы.
:?:.скилфер::Фермер - навык профессии, прокачивающийся путём работы на ферме (F3 > Работа > Фермер). Уровни: 1 lvl - Апельсины. 2 lvl - Пшеница(До 450). 3 lvl - Картофель(До 1 070). 4 lvl - Капуста(До 1 730). 5 lvl - Кукуруза(До 2 830). 6 lvl - Тыква(До 4 460). 7 lvl - Бананы, данный уровень финальный.
:?:.скилпоч::Почтальон - навык профессии, прокачивающийся путём работы на почте (F3 > Работа > Почтальон). Уровни: 1 lvl - 0-500. 2 lvl - 501-2100. 3 lvl - 2101-6800. 4 lvl - Максимальный уровень профессии.
:?:.скилбус::Водитель автобуса - навык профессии, прокачивающийся путём работы на автобусе (F3 > Работа > Водитель автобуса). Уровни: 1 lvl - 0-250. 2 lvl - 251-700. 3 lvl - 701-2000. 4 lvl - 2001-6000. 5 lvl - Максимальный уровень профессии.
:?:.скилмус::Мусорщик - навык профессии, прокачивающийся путём работы на мусоровозе (F3 > Работа > Мусорщик). Уровни: 1 lvl - 0-650. 2 lvl - 651-2600. 3 lvl - 2601-8500. 4 lvl - 8501-26000. 5 lvl - Максимальный уровень профессии.
:?:.скилинк::Инкассатор - навык профессии, прокачивающийся путём работы на инкасаторе (F3 > Работа > Инкассатор). Уровни: 1 lvl - 0-100. 2 lvl - 101-300. 3 lvl - 301-900. 4 lvl - 901-2500. 5 lvl - Максимальный уровень профессии.
:?:.скилдал::Дальнобойщик - навык профессии, прокачивающийся путём грузоперевозок (F3 > Работа > Дальнобойщик). Уровни: 1 lvl - 0-500. 2 lvl - 501-2000. 3 lvl - Максимальный уровень профессии.
:?:.скилгриб::.скилгриб - Грибник - навык профессии, прокачивающийся путём сбора грибов (F3 > Работа > Грибник). Уровни: 1 lvl - 0-550. 2 lvl - 551-1500. 3 lvl - 1501-1900. 4 lvl - 1901-4300. 5 lvl - 4301-7700. 6 lvl - Максимальный уровень профессии.
:?:.скиллес::Лесник - навык профессии, прокачивающийся путём рубки деревьев (F3 > Работа > Лесник). Уровни: 1 lvl - 0-2600. 2 lvl - 2601-8450. 3 lvl - 8451-23400. 4 lvl - Максимальный уровень профессии.
:?:.скилкар::Карьерщик - навык профессии, не имеющий прокачки, необходим при семейных контрактах (F3 > Работа > Карьерщик).
:?:.сила::Навык силы повышается от физических нагрузок. Чем больше Вы занимаетесь в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.
:?:.дых::Навык дыхания повышается от длительного нахождения под водой. Чем больше Вы плаваете, тем быстрее повышается навык. Соответственно, повышение навыка влияет на длительность беспрерывного плавания под водой.
:?:.вожден::Навык вождения повышается от времени, проведенного за рулем автомобиля. Чем больше Вы водите транспорт, тем быстрее повышается навык. От прокачки увеличивается управляемость транспортным средоством.
:?:.полет::Навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше Вы летаете на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысить, пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увеличение навыка от 1 занятия - 10%, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.
:?:.скрытн::Навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Чем чаще Вы скрываетесь от полиции, тем быстрее повышается навык. От прокачки уменьшается время, которое Вы будете находиться в розыске (быстрее пропадают звезды).
:?:.стрельба::Навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше Вы стреляете и попадаете, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, например - в тире оружейного магазина. От прокачки навыка увеличивается скорость перезарядки и перекатов, а так же кучность стрельбы.
:?:.вынос::Навык выносливости повышается от подвижного образа жизни. Чем больше Вы бегаете, тем быстрее повышается навык. При низком навыке, персонаж очень быстро выдыхается и начинает бежать медленно. Повышение навыка влияет на длительность беспрерывного бега.
;===================================================================================
; Ограбление и нападение
; Напададение на форт и кайо
:?:.зкайо::На острове имеется несколько точек захвата медицинских, оружейных, и технических материалов. Для захвата Вам необходимо взять с собой маячки, с маячками зелёного цвета Вы сможете захватить оружейные материалы, с маячками синего цвета Вашей целью станут технические материалы, а при наличии красных Вам откроется возможность захватить медицинские. Захват можно начать в радиусе 50 метров от точки погрузки, после активации маячка появится обозримая зона захвата, если выйти за зону захвата или все захватчики умрут, маячок уничтожается, точка переходит в спокойное состояние, как до захвата. Не стоит забывать и про сигнализацию, если Вы её не выключите все госструктуры будут оповещены и они окажут Вам сопротивление (функционально на захват материалов это не повлияет). После захвата метка на карте красится в цвет организации захватчиков. Игроки смогут забирать материалы с точки и грузить их в личную / арендованную лодку, в последствии в городе перегружать в матовозку.
:?:.перико::У всех силовых фракций есть метка для телепортации на остров, фракции EMS/WN/GOV лишены её. Отделение LSCSD в Сэнди-Шорс тоже не имеет точки телепорта. Каждая фракции телепортируется в одну точку на острове, в этой же точке можно вернуться обратно. Вы не сможете телепортироваться с точки другой фракции. На острове, вблизи особняка и на его территории, можно через планшет заспавнить транспорт SANG, с которым может взаимодействовать любая государственная силовая фракция. Также SANG имеет склад на Кайо-Перико, он аналогичен тому что на военной базе.
:?:.сирена::Вышку можно взломать, не будет обновляться статус контроля точек в течение 10 минут. Для взлома нужен Программатор ЭБУ. Взлом происходит в мини-игре. После удачного взлома, на мини карте не будет отображаться статус захвата точек для SANG в течение 10 минут. После неудачного взлома, сразу срабатывает сирена. SANG могут восстановить работу вышки нажав "Е" на метке вышки.
:?:.маяк::Маячки могут выпасть с AirDrop или же при ограблении 24/7. Шансы выпадения у всех маячков разный.
; Ограбление бизнеса и банка
:?:.бизограб::Чтобы ограбить бизнес, Вам нужно: одеть маску, приобрести оружие и, придя в магазин в составе от 2 человек, навестись на NPC (продавца) оружием, грабить может только один человек.
:?:.банк::Чтобы начать ограбление Банка, Вам нужно позвонить по номеру 28121903. Для этого надо состоять в криминальной организации и находится рядом с банком (минимальное ограничение - 4 человека). Для начала ограбления требуется план банка, который выпадает с AirDrop или при ограблении бизнесов. Каждая организация может грабить банк 1 раз в день. После того, как ограбление началось и банк получил красную иконку, надо прицелиться в NPC и заполнить шкалу запугивания. Дальше будет хранилище, что бы открыть дверь, нужно пройти мини-игру со взломом. Для этого нужен Программатор ЭБУ. Далее идет 2-я дверь. Для ее взлома необходима Ключ карта Fleeca либо Термитная установка. Ключ карта Fleeca выпадает с NPC при ограблении бизнесов, или на AirDrop. Термитная установка продается у пиротехника. С ее помощью дверь открывается за 2 минуты.
:?:.банк2::В хранилище есть ячейки, для их взлома необходима Дрель 1500w. Дрель крафтится у криминальных организаций и выпадает при смерти. После успешного прохождения мини-игры по взлому ячейки на пол падает награда.
:?:.биз::Чтобы узнать, какие бизнесы можно ограбить в данный момент, позвоните по номеру 28121969.
;===================================================================================
; Скиллы и нач. работы
:?:.рыбалка::Для того чтобы рыбачить, Вам нужно удилище, катушка, леска, крючок, а так же наживка или приманка. Все это покупается в рыболовном магазине, который находится около Палето-Бей. Подходите к зоне рыбалки своего уровня, далее собираете удочку и нажимаете Е, что бы начать рыбачить. После звукового и визуального эффекта, Вам нужно будет подсечь рыбу. После успешной подсечки нажимайте A-D в противоположную сторону от движения рыбы, пока не выловите её. Рыбу можно забрать себе, либо отпустить, получив за это дополнительные очки опыта для прокачки уровня рыбака. Рыбу в дальнейшем можно продать на маркетплейсе либо у NPC на рынке. Также, время ожидания поклевки уменьшается при активном эффекте опьянения.
:?:.скилрыб::.скилрыб - Рыбак - навык профессии, прокачивающийся путём ловли рыбы (F3 > Работа > Рыбак). Первый уровень - Зоны: 1, 2, 3, 4. Второй уровень - Зоны: 5,6. Третий уровень - Зоны: 7,8. Четвертый уровень - Зоны: 9,10. Пятый уровень - Зона 11. Шестой уровень - Зона 12. Седьмой уровень - Зона 13. Восьмой уровень - Зона 14. Данный уровень является максимальным в данной профессии. Эффект "Опьянение" уменьшает время ожидания поклёвки рыбы.
:?:.скилфер::.скилфер - Фермер - навык профессии, прокачивающийся путём работы на ферме (F3 > Работа > Фермер). Уровни: 1 lvl - Апельсины. 2 lvl - Пшеница(До 450). 3 lvl - Картофель(До 1 070). 4 lvl - Капуста(До 1 730). 5 lvl - Кукуруза(До 2 830). 6 lvl - Тыква(До 4 460). 7 lvl - Бананы, данный уровень финальный.
:?:.скилпоч::Почтальон - навык профессии, прокачивающийся путём работы на почте (F3 > Работа > Почтальон). Уровни: 1 lvl - 0-500. 2 lvl - 501-2100. 3 lvl - 2101-6800. 4 lvl - Максимальный уровень профессии.
:?:.скилбус::Водитель автобуса - навык профессии, прокачивающийся путём работы на автобусе (F3 > Работа > Водитель автобуса). Уровни: 1 lvl - 0-250. 2 lvl - 251-700. 3 lvl - 701-2000. 4 lvl - 2001-6000. 5 lvl - Максимальный уровень профессии.
:?:.скилмус::Мусорщик - навык профессии, прокачивающийся путём работы на мусоровозе (F3 > Работа > Мусорщик). Уровни: 1 lvl - 0-650. 2 lvl - 651-2600. 3 lvl - 2601-8500. 4 lvl - 8501-26000. 5 lvl - Максимальный уровень профессии.
:?:.скилинк::Инкассатор - навык профессии, прокачивающийся путём работы на инкасаторе (F3 > Работа > Инкассатор). Уровни: 1 lvl - 0-100. 2 lvl - 101-300. 3 lvl - 301-900. 4 lvl - 901-2500. 5 lvl - Максимальный уровень профессии.
:?:.скилдал::Дальнобойщик - навык профессии, прокачивающийся путём грузоперевозок (F3 > Работа > Дальнобойщик). Уровни: 1 lvl - 0-500. 2 lvl - 501-2000. 3 lvl - Максимальный уровень профессии.
:?:.скилгриб::Грибник - навык профессии, прокачивающийся путём сбора грибов (F3 > Работа > Грибник). Уровни: 1 lvl - 0-550. 2 lvl - 551-1500. 3 lvl - 1501-1900. 4 lvl - 1901-4300. 5 lvl - 4301-7700. 6 lvl - Максимальный уровень профессии.
:?:.скиллес::Лесник - навык профессии, прокачивающийся путём рубки деревьев (F3 > Работа > Лесник). Уровни: 1 lvl - 0-2600. 2 lvl - 2601-8450. 3 lvl - 8451-23400. 4 lvl - Максимальный уровень профессии.
:?:.скилкар::Карьерщик - навык профессии, не имеющий прокачки, необходим при семейных контрактах (F3 > Работа > Карьерщик).
:?:.сила::Навык силы повышается от физических нагрузок. Чем больше Вы занимаетесь в качалке (иконка гантели на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.
:?:.дых::Навык дыхания повышается от длительного нахождения под водой. Чем больше Вы плаваете, тем быстрее повышается навык. Соответственно, повышение навыка влияет на длительность беспрерывного плавания под водой.
:?:.вожден::Навык вождения повышается от времени, проведенного за рулем автомобиля. Чем больше Вы водите транспорт, тем быстрее повышается навык. От прокачки увеличивается управляемость транспортным средоством.
:?:.полет::Навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше Вы летаете на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысить, пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увеличение навыка от 1 занятия - 10%, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.
:?:.скрытн::Навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Чем чаще Вы скрываетесь от полиции, тем быстрее повышается навык. От прокачки уменьшается время, которое Вы будете находиться в розыске (быстрее пропадают звезды).
:?:.стрельба::Навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше Вы стреляете и попадаете, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, например - в тире оружейного магазина. От прокачки навыка увеличивается скорость перезарядки и перекатов, а так же кучность стрельбы.
:?:.вынос::Навык выносливости повышается от подвижного образа жизни. Чем больше Вы бегаете, тем быстрее повышается навык. При низком навыке, персонаж очень быстро выдыхается и начинает бежать медленно. Повышение навыка влияет на длительность беспрерывного бега.
;===================================================================================
; БП - Квесты
;Остальное
:?:.опыт::Чтобы улучшить сезонный пропуск или приобрести опыт, нажмите F2 > Сезонный пропуск > Купить опыт.
:?:.дрифт::Очки дрифта идут в статистику при получении 3000 очков за раз и более. Чтобы выполнить задание, Вам нужно приехать любую точку дрифта и набрать очки в отведенной для этого области, если Вы будете набирать очки вне зоны, засчитываться они не будут.
:?:.дрифт2::Отображение дрифт очков можно включить через F2 > Настройки > Основное > Интерфейс. Счетчик будет показываться всегда, когда Вы находитесь в транспорте.
:?:.зонадрифта::Чтобы найти зону для дрифта откройте карту и найдите метку виде колеса в огне.
:?:.автопилот::Чтобы воспользоваться автопилотом, Вам нужно поставить метку на карте, после чего, находясь в автомобиле, нажать G - Автопилот.
:?:.предметы::Чтобы забрать предметы с сезонного пропуска, Вам необходимо нажать F2 > Магазин > Предметы.
:?:.лотерея::Розыгрыш лотереи 3 раза в день - в 15:00, в 18:00 и в 21:00.
:?:.стриптиз::Чтобы заказать приватный танец, Вам необходимо прийти в клуб, пройти в комнату с диванами и нажать Е.
:?:.мусор::Чтобы открыть мусорку нужно подойти к ней и нажать Е, но не все мусорки можно просмотреть. Расположение мусорок Вы можете узнать у игроков, либо же самостоятельным поиском.
:?:.руки::Чтобы прокатится на руках, Вам необходимо, чтобы Вас взял игрок на руки и пронес до выполнения задания.
:?:.тел::Телефоны находятся по всей карте. Чтобы ответить на звонок, Вам необходимо подойти к нему и нажать Е. Их можно найти по характерному звуку (звонок).
:?:.угонбп::Чтобы угнать транспорт, Вам необходимо находится в криминальной организации и иметь при себе Программатор ЭБУ. Взломать замок, сесть на водительское место и нажать G - Взломать зажигание.
:?:.животные::Мясо можно получить из следующих животных: кролики, кабаны, олени, коровы, свиньи, петухи. Домашних животных, которые гуляют по карте, можно гладить. Они появляются по всей карте.
:?:.резня::Чтобы разделать животное, Вам необходимо иметь при себе нож в активном слоте (покупается в магазине 24/7), далее нужно подойти к животному и нажать G - Разделать животное.
:?:.болезнь::Вы не сможете заболеть до 3-го уровня персонажа включительно. Если Вас интересует выполнение задания, Вы можете заменить его или же повысить уровень персонажа. Более, к сожалению, никак.
:?:.лифт::Попробуйте использовать другие лифты. На карте их большое количество, например в капитолии Government или офисе Weazel News. Нужно прокатиться на лифте, в котором есть выбор этажей, для выполнения задания это обязательное условие.
:?:.клад::Для поиска кладов Вам необходим металлоискатель и лопата, купить их можно у NPC на рынке. Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения от зеленого цвета, до красного. Когда круг перестанет пульсировать и остановится, нужно достать лопату и выкопать клад. Места расположения сокровищ: пляжи и архипелаги.
:?:.ганг::Maze Bank Arena (гангейм) это место, где можно посоревноваться с другими игроками в навыках стрельбы. На карте находится снизу изображен в виде джойстика. 
;1 сентебря
:?:.круг::Круги обозначают, что рядом с Вами находится клад, который нужно выкопать. Вы можете получить различные предметы, которые в дальнейшем Вы сможете продать на рынке или маркетплейсе.
:?:.книга::Книги Вы можете обменять на предметы со школьного ивента. В отсутствие или окончание ивента, Вы сможете продать их на маркетплейсе.
;Хеллоин
:?:.незнак::Если у Вас задание с незнакомцем у Вас на карте появляется метка, куда Вам нужно отправиться. Если метка не появляется, перезайдите на сервер.
:?:.хелло::Так же, месторасположение нового квеста можно узнать в F2 - Halloween -> Выбрать нужный этап и отследить где находится новый квест.
:?:.отмхелло::Отменить Хэллоуинские квесты можно только через F2 -> Задания -> Активные задания. Через бота отменить их нельзя.
:?:.хелло3::Вам нужно подойти к NPC, начать прохождение квеста, надеть выданную футболку и повторно подойти к NPC, Вас телепортирует в другой мир и задание продолжится.
:?:.трансц::Трансцендентный ассенизатор используется для поиска частиц в разломах.
;Новый год
:?:.снеж::Сдать снежки вы можете большому снеговику, который находится по правую сторону от NPC, у которого Вы брали квест. Местоположение возле церкви.
:?:.лепка::Слепить снежок можно в любой точке карты.
:?:.ивент::В данный момент еще нету новогодних заданий, следите за новостями в Discord канале Majestic RP. Администрация не владеет информацией когда они будут доступны.
;===================================================================================
; Функционал
;разное
:?:.гпс::Вам нужно нажать F3 и выбрать цель прибытия. Маршрут можно будет отменить повторно нажав F3.
:?:.аним::Остановите анимацию. X > Остановить анимацию.
:?:.майки::Чтобы купить майку под верхнюю одежду, Вам нужно сначала купить элемент верхней одежды, например, пиджак. После этого вам будут доступны все майки, которые подходят под нее в соответствующем разделе магазина.
:?:.дрон::Существует 3 вида дронов: гражданский, полицейский, и дрон-сканер. Гражданский дрон не имеет никаких функций кроме полета, полицейский дрон обладает тепловизором и ночным видением, а дрон-сканер сканирует местность в радиусе 100 метров и показывает местонахождение людей в этой области на карте (метки видят все игроки, которые находятся в одной группе с пилотом дрона). Управление: Навигация - "W/A/S/D". Спуск - "Shift". Подъем - "Space". Тепловизор / ПНВ / Сканирование - "Е".
:?:.червь::Чтобы выкопать червей, нужно копать землю на местах для ловли рыбы (крючках для рыбалки).
;маркетплейс
:?:.тестдрайв::Зайдите в интерьер маркетплейса и нажмите Е, далее выберите категорию "Транспорт", кликните по интересующему авто и нажмите синюю кнопку "Тест-драйв".
:?:.мпсклад::Существует основное здание маркетплейса и пункты выдачи, обозначенные желтыми гаражами на карте. Купленные вещи можно забрать в любом из этих мест, нажав Е и переместив предметы со склада маркетплейса в инвентарь / багажник.
:?:.маркп::Чтобы выставить предмет на маркетплейс, Вам не обходимо положить его на склад на любом пункте выдачи. Далее заходите в приложение маркетплейса через планшет. Справа вверху нажимаете кнопку "Создать".
:?:.склад::Вам нужно положить предмет на склад хранения, сделать это можно на любом пункте выдачи, затем создать объявление.
;банк
:?:.пинкод::Чтобы сменить PIN-код, Вам нужно зайти в любой банк, нажать Смена PIN-кода -> Восстановить PIN-код. После чего, Вам на почту придет письмо с кодом.
:?:.карта::На сервере есть 3 вида банковских карт: Standart, Premium, VIP. Standart карта стоит в обслуживании 500$ в месяц, снятия и переводы без комиссии до 500.000$ после превышения месечного лимита комиссия на вывод 5% (Максимум 20.000$), на перевод 4% (Максимум 20.000$), кэшбек в магазинах отсутствует. Premium карта стоит в обслуживании 25.000$ в месяц, снятия и переводы без комиссии до 2.500.000$ после превышения месечного лимита комиссия на вывод 4% (Максимум 15.000$), на перевод 3% (Максимум 15.000$), кэшбек в магазинах 1%, лимит кэшбека на одну операцию до 2.500$, месечный лимит кэшбека 50.000$. VIP карта стоит в обслуживании 75.000$ в месяц, снятия и переводы без комиссии до 20.000.000$ после превышения месечного лимита комиссия на вывод 3% (Максимум 20.000$), на перевод 2.5% (Максимум 20.000$), кэшбек в магазинах 3%, лимит кэшбека на одну операцию до 10.000$, месечный лимит кэшбека 150.000$. Деньги за обслуживание и лимиты снимаются каждое 1 число нового месяца.
;гангейм
:?:.лобби::Пользовательская игра - это игра, созданная Вами, для друзей или же обычных игроков, все правила настраиваете именно Вы. Для того, что бы начать нужно: Дать название своему лобби (графа "Название лобби"), выбрать один из трёх доступных режимов (Гонка вооружений / Бой на смерть / Захват флага), и выбрать одну из карт. Далее Вы сможете установить пароль, если же не хотите видеть лишних игроков в своей игре. После всех первичных настроек Вам откроются дополнительные: Требование для победы, оружие, время суток, одежда (если выбрать "Нет" игрок временно сменит одежду в матче), погодные условия, авто-баланс команд (в случае захвата флага) и др. За создание лобби нужно будет заплатить некоторую сумму игровой валюты.
:?:.флаг::Захват флага это командный режим боя, в котором Вы сможете противостоять своим оппонентам в равных условиях. В этом режиме Вы можете поднимать оружие с земли, а также покупать снаряжение на заработанные во время матча деньги, для этого нажмите B на одной из захваченных точек либо спавне. Матч закончится, как только одна из команд потеряет все очки, скорость их потери / накопления зависит от количества захваченных, Вашей командой, точек.
;настройки
:?:.чат::Настроить чат Вы сможете в F2 > Настройки > Игровой чат. Там Вы сможете выставить дату и время у СМС, тип шрифта, установить тем или задний фон, задать размер / межстрочечный интервал и многое другое.
;разное
:?:.кости::Чтобы играть в кости, Вам нужно купить их в любом 24/7. После того как Вы купили кости, подойтите к игроку и нажмите G > Предложить бросить кости.
:?:.модел::Пункт "Прогрузка моделей" отвечает за быстроту прогрузки текстур при приближении к ним.
:?:.лоу::Пункт "Режим низкого качества" в F2 > Настройки > Дополнительно. Она отключает любую синхронизацию одежды (кроме фракционной), а также уменьшает дистанцию прогрузки всех авто и игроков, тем самым уменьшая нагрузку видеопамяти.
:?:.асис::F2 -> Настройки -> GPS Ассистент.
;===================================================================================
;реп-жалобы
:?:.откл::Недостаточно доказательств для выдачи наказания, так как предоставлена не полная запись ситуации. Можете оставить жалобу на игрока на форуме, приложив более длинное видео с указанием тайм-кодов нарушений.
:?:.фото::Скриншоты должны быть загружены на площадку - Imgur / Yapx / ibb / Media.discordapp.
:?:.видео::Видеозаписи должны быть загружены на площадку - YouTube / Twitch / Trovo / Rutube / VK Видео / Dzen.
:?:.форум::В данный момент на сервере большая нагрузка из-за количества обращений, оставьте, пожалуйста, Вашу жалобу на форуме. Спасибо за понимание.
:?:.минута::Мы не рассматриваем записи в обращениях, длина которых составляет более минуты. Вы можете оставить жалобу на игрока на форуме приложив данное видео и указать тайм-коды нарушений.
:?:.начало::В жалобе отказано. Данных материалов недостаточно для выявления всей ситуации. Вы можете оформить жалобу на игрока на форуме с полной ситуацией.
:?:.рж::Сделайте название видео по форме подачи: Ваш static, static нарушителя(ей), а так же дата и время нарушения.
;===================================================================================
; Вопросы администрации и поддержки:
:?:.актуал::Обращение неактивно более двух минут, вынужден его закрыть. Если же у Вас есть не решенный вопрос/проблема - создайте новое и ожидайте ответа.
:?:.неактуал::Вижу, неактуально. Могу закрывать обращение?
:?:.суд::Администрация не отвечает и не консультирует по вопросам законодательства. Вы можете узнать данную информацию у других игроков либо найти ее самостоятельно на форуме в разделе законодательной базы нашего сервера.
:?:.отв::Ответил Вам по этому вопросу, прочитайте сообщения выше. Если у Вас более нет никаких вопросов, я закрою обращение.
:?:.невлад::Не обладаем данной информацией.
:?:.ха::Администрация не телепортирует, не лечит, не чинит, не снимает наручники/стяжки/веревки, не заправляет авто, не предоставляет видео Вашего нарушения или же другого игрока от своего лица, не сообщает информацию об игроках, не выдает игровую валюту, а так же донат валюту.
:?:.гд::Администрация не помогает с поиском угнанного авто, ищите транспорт тщательнее по всей площади зоны.
:?:.убед::Если же Вы стоите один, Вам необходимо подождать, чтобы администрация убедилась, что никакой RP ситуации с Вами в данный момент не происходит, спасибо за понимание.
:?:.стяж::Администрация не снимает просто так веревки / стяжки / наручники. Если около Вас есть игроки, они могут Вам помочь, а именно купить нож или отверки в 24/7.
:?:.неуд::Администрация удаляет только взорванный и утопленный транспорт.
:?:.нету::Я не вижу Вашего транспорта в воде, возможно он удалился автоматически.
:?:.воп::Вопроса более от Вас не увидел, закрываю обращение.
:?:.такси::В данной ситуации я могу удалить Ваш транспорт, в дальнейшем Вы можете вызвать такси или призвать транспорт в автосервисе.
:?:.ставка::Расчёт ставки происходит в течение неопределённого кол-ва времени. Администрация не управляет расчетом.
:?:.промо::При достижении 3 уровня персонажа Вам будет зачислена награда в виде игровой валюты и подписки Majestic Premium.
:?:.рп::Извините, но это Role Play процесс, в который администрация не в праве вмешиваться.
:?:.жб::Администрация не может выдавать наказания и выносить какие-либо вердикты не видя всей ситуации, а так же её начала соответственно. Если у Вас есть запись данного нарушения - оставьте жалобу на форуме или в обращении.
:?:.адс::Администратор, которого Вы указали - сейчас не в сети. Напишите ему в Discord и узнайте то, что Вам было необходимо.
:?:.вода::
    SendInput, Приветствую, администрация не достает автомобили из воды.{Space}
    counter++
    GoSub, UpdateCounter
:?:.кредит::Любые финансовые договоры (Займы, кредиты и т.д) игроки совершают на свой страх и риск. Администрация не несет ответственности и не является гарантом сделки.
:?:.сделка::
    SendInput, Приветствую, администрация не следит за сделками игроков.{Space}
    counter++
    GoSub, UpdateCounter
:?:.погода::К сожалению администрация не контролирует данный процесс. Погода меняется автоматически.
:?:.уточв::Уточните вопрос/проблему в обращении.
:?:.уточ::Уточните вопрос/проблему.
:?:.неп::Опишите ситуацию текстом. Количество символов неограничено, Вы можете полностью расписать суть обращения тут.
:?:.неувид::Не вижу нарушений.
:?:.капт::Администрация не телепортирует, не лечит, не поднимает игроков перед каптом и после него, обратитесь к своим кураторам фракции в дискорд.
:?:.анлак::Рекомендую настроить клипы в OBS / Nvidia App, чтобы иметь видеодоказательство нарушений правил сервера игроком для дальнейшего составления репорт-жалобы на него.
:?:.рас::Позже рассмотрю Вашу репорт жалобу, вердикт Вам сообщу.
:?:.драйв::Необходимо прийти внутрь здания маркетплейса. В холле здания нажать Е - Выбрать категорию "Транспорт" - Нажать "Тестдрайв".
:?:.складмаркет::Необходимо приехать на любой пункт выдачи, далее нажать Е и выгрузить / загрузить предметы со склада маркетплейса.
:?:.арм::Армрестлинг находится около мэрии, палето шерифов и между стрипклубом и починкой авто.
:?:.автобус::F2 - Настройки - Главное - Тип посадки - Приоритет водительское.
:?:.пинкод::Чтобы сменить PIN-код, Вам нужно зайти в любой банк, нажать Смена PIN-кода -> Восстановить PIN-код. После чего, Вам на почту придет письмо с кодом.
:?:.войс::Перезайдите несколько раз. Методы исправления войс чата, если множественные перезаходы Вам не помогут: 1. Отключите все аудиовходы и выходы, кроме тех, которые вам нужны (Настройки -> Система -> Звук -> Дополнительные настройки звука -> Правой кнопкой мыши -> Отключить). 2. Удалите ваше аудиоустройство (Диспетчер устройств -> Ввод -> Выберите ваше устройство) и перезагрузите компьютер. 3. Попробуйте изменить IP с помощью различных программ (пробуйте различные), это позволит подключиться к голосовому серверу, если этого не происходит.
:?:.проник::На любом из режимных объектов (FIB - Н.У.П/SANG - ФЗ/Федеральная тюрьма) могут находиться лишь игроки государственных фракций, при веской IC причине. Обычные игроки исходя из РП логики и правил сервера находиться там не могут никаким образом.
:?:.граф::Остров Кай-Перико - Дни нападения: вторник, среда, пятница, суббота; часы: 16, 17, 19, 20, 22. Нападение на Форт-Занкудо - Дни нападения: понедельник, четверг, суббота, воскресенье; Часы: 15, 16, 17, 19, 21, 22. 
:?:.пей::Для выполнения данного задания необходимо быть уволенным со всех функциональных работ, проверить это можно в F2 - Персонаж - Основное. После этого вам будет начисляться пособие по безработице либо зарплата в государственной структуре.
:?:.кам::Камеры могут быть уничтожены игроками состоящими в бандах с 14:00 до 01:00. Требуются кусачки и отвертка, далее вам необходимо взаимодейстсвовать со столбом, где находится камера, будет мини-игра. Для успешного прохождения нужен напарник, который сообщит об изменении сигналов светофора. Как только резервное питание будет отключено, нужно выстрелить в камеру после уведомления. При попадании на землю упадёт предмет "Повреждённая камера". Если не выстрелить вовремя, питание восстановится и камера перейдет в статус настройки.
:?:.раб::Для выполнения данного задания необходимо быть уволенным со всех функциональных работ, проверить это можно в F2 - Персонаж - Основное. После этого вам будет начисляться пособие по безработице либо зарплата в государственной структуре.
:?:.доступ::Для решения проблемы с потерей доступа к аккаунту, Вам нужно обратиться к техническому специалисту. Для этого необходимо заполнить форму → https://forms.gle/WVASXnZuAVuXwq2q9. Ответ на обращение приходит исключительно с почты "majesticrp.tech@gmail.com".
:?:.лвл::При достижении 5-го уровня: 500 MC; При достижении 10-го уровня: 1000 MC; При достижении 15-го уровня: 2000 MC; При достижении 20-го уровня: 3000 MC; При достижении 25-го уровня: 4000 MC; При достижении 30-го уровня: 5000 MC; Каждый следующий уровень после 30-го: 1500 MC.
:?:.мир::Вам необходимо прийти на любой рынок, к знаку вопроса на карте и поговорить с NPC в лавке. Увидеть общий квест недели и выполнить 10% от поставленной цели.
:?:.штраф::При наличии 200 и более штрафов, каждый новый штраф отображает метку местоположения игрока на карте всем силовым структурам. Число автоштрафов игрока можно посмотреть в планшете, раздел "База данных", выбрав строку игрока.
:?:.срез::Если связать игрока стяжками, верёвкой, наручниками или игрок поднимет руки. То в G > Незаконное / фракционное > появится пункт «Попытаться срезать бронежилет». Шанс на успех / провал = 50%. При успехе бронежилет снимается из инвентаря игрока и падает на пол. После попытки срезать: в случае удачного среза - КД на повторный срез 60 минут, в случае неудачного - 5 минут.
:?:.жрыба::Аквамарин - жарится с 1.5 кг, Карась - жарится с 1.5 кг, Камбала - жарится с 1.5 кг, Золотая рыбка - жарится с 1 кг, Красный солдат - жарится с 1 кг, Форель - жарится с 1 кг, Тунец - жарится с 10 кг, Оранжевый карп - жарится с 10 кг.
:?:.рыбак::Отправляйтесь в рыболовный магазин для приобретения всех необходимых принадлежностей. Затем, находясь в зоне рыбалки, наведитесь на удочку в инвентаре, нажмите ПКМ. Как только Вы соберете удилище, Вы сможете выловить свою первую рыбу.
:?:.да::
SendInput {BS 4}Приветствую, да.{Space}
GoSub, UpdateCounter
return
:?:.нет::
SendInput {BS 5}Приветствую, нет.{Space}
GoSub, UpdateCounter
return
:?:.зад::Проверьте активные задания в F2 - Задания, также при нажатии F6 справа сверху интерфейса указаны ваши активные задания.
:?:.режимный::На любом из режимных объектов (FIB - Н.У.П / SANG - ФЗ / Федеральная тюрьма) могут находиться лишь игроки государственных фракций, при веской IC причине. Обычные игроки исходя из РП логики и правил сервера находиться там не могут никаким образом.
:?:.дмв::Департамент DMV можно найти через F3 - Поиск - Оплата штрафов.
:?:.инв::F2 - Магазин - Предметы.

;===================================================================================
; Решение технических проблем и багов:
:?:.колесо::Ожидайте, я телепортирую Вас к боту, Вам нужно будет нажать "E" чтобы ваш персонаж разбагался.
:?:.фидбек::Если у Вас произошел баг, Вы можете сообщить о нем в официальном Discord'e Majestic RP в канале "Сообщить о баге".
:?:.багмини::Проверьте, включена ли мини-карта в настройках F2. Отключите сверхширокий режим в настройках F2 и полностью перезайдите на сервер. Когда Вы находитесь на сервере, вам нужно войти в игровое меню, нажав клавишу "ESC". В игровом меню с помощью стрелок влево и вправо перейдите к пункту «Настройки», затем нажмите клавишу «Ввод». Перейдите в строку «Видео» в настройках и активируйте его, нажав клавишу «Enter». В разделе «Видео» установите значение «Вкл.» для верхнего элемента напротив строки «Радар».
:?:.п::Приятной игры.
:?:.зап::Если Вы забагались (не можете двигаться или не можете ехать на своем авто), Вам необходимо перезайти на сервер, в курсе о данной проблеме, она уже передана разработчикам.
:?:.почта::Если Вы не можете сдать посылку на почте, Вам необходимо уволится с работы и устроится по новой у NPC, это связано с тем, что дом забагался. В курсе о данном баге, уже передали разработчикам, когда его исправят мы не знаем. Приносим свои извинения за предоставленные неудобства.
:?:.багж::К сожалению данное животное забагалось, попробуйте пожалуйста с другим. Приносим свои извинения за предоставленные неудобства.
:?:.как::Каким образом Вы забагались или забагался Ваш авто? Распишите, чтобы понимать, с чем Вам помогать.
:?:.манибек::Если у Вас произошел баг и у Вас есть видеозапись, Вы можете написать в тех. раздел на форуме, чтобы вам компенсировали утрату.
:?:.багказ::Попробуйте пожалуйста перезайти на сервер. Так же данная проблема может быть из-за установленных дополнительных модификации (редукс).
:?:.баг::Знаем о данной проблеме, она уже передана разработчикам. Когда её решат у нас информации нет.
:?:.багвойс::К сожалению, починить голосовой чат находясь на сервере, невозможно. Вам стоит перезайти на сервер, приносим извинения за предоставленные неудобства.
:?:.багзз::Чтобы восстановить прежнюю скорость, попробуйте заехать в зеленую зону и выехать из нее.
:?:.коинтайм::Это визуальный баг таймера, часы идут и коины вам начислят по истечению времени.
:?:.багинв::Если у Вас забагалось окно модификаций, попробуйте переместить оружие в другую ячейку инвентаря или перевернуть.
:?:.бинд::Сменить бинд клавиши можно в F2 > Настройки > Бинд Клавиш, если же у Вас баг и нужно вернуть всё к стандартным настройкам, то перейдите в F2 > Настройки > Бинд Клавиш > Стандартные настройки, данная кнопка будет в правом верхнем углу.
:?:.багреп::Сообщите о данной проблеме в канал "сообщить-о-баге" официального Discord'а Majestic RP - https://discord.com/invite/majestic
:?:.багказ2::Это баг, сейчас я Вас телепортирую ко входу, не входите в казино заново, Вам нужно перезайти на сервер.
:?:.тех::Вам стоит обратиться в технический раздел на форуме с данной проблемой - https://forum.majestic-rp.ru/forums/obrashcheniya-v-tekhnicheskii-razdel.560/
:?:.техдс::Напишите техническим помощникам в разделе дискорда "Помощь по игре" - https://discord.com/invite/majestic
:?:.аут::Для подключения Google Authenticator Вам нужно в меню выбора персонажа открыть раздел настроек.
:?:.багбп::Это визуальный баг. Вам нужно полностью перезайти на сервер.
:?:.офдс::https://discord.com/invite/majestic
;===================================================================================
; Другое
:?:.лопата::Лопату Вы можете купить у NPC механика на рынке.
:?:.ворк::Вам нужно нажать F3 > Работа и выбрать любую работу.
:?:.рыба::Вам нужно приехать один из рынков и продать рыбу соответствующему NPC.
:?:.рын::Рынок находится в Лос-Сантосе, Сэнди-Шорс и Палето-Бей.
:?:.оружрын::Боту на рынке можно сдать оружие только с 0% прочности.
:?:.ганлиц::Получить лицензию на оружие можно в LSPD или LSCSD.
:?:.рыблиц::Получить лицензию на рыбалку Вы можете в Мэрии.
:?:.коп::Обратитесь к сотрудникам полиции. Вы можете вызвать их через телефон.
:?:.слух::Функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается блокировкой. Отключить ее можно в меню F2 - Настройки.
:?:.выборы::Выборы активны с 10:00 - 10:00 по Московскому времени. Проголосовать может каждый от 3-го уровня игрового персонажа, по принципу один голос на один аккаунт. Голосование проходит в левом крыле Мэрии (На карте флаг USA).
:?:.имя::Ваша Имя / Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать обращение повторно, если Ваш ник будет соответствовать правилам сервера, то Вас выпустят.
:?:.смендим::Поменял Вам измерение.
:?:.стиль::Чтобы поменять стиль походки, Вам необходимо нажать F2 > Настройки > Стиль походки.
:?:.не::Не увидел нарушений.
:?:.наказан::Игрок наказан.
:?:.наказаны::Игроки наказаны.
:?:.уд::Прийдите на точку вашего транспорта, чтобы я смог его удалить.
:?:.адх::По поводу наказания обратитесь в личные сообщения Discord'a к администратору, который его выдал.
:?:.карта2::Чтобы узнать номер счета банковской карты, Вам необходимо открыть инвентарь и навестись на карту мышкой.
:?:.ф6::Нажмите F6 несколько раз.
:?:.коины::При достижении 5-го уровня: 500 MC, при достижении 10-го уровня: 1000 MC, при достижении 15-го уровня: 2000 MC, при достижении 20-го уровня: 3000 MC, при достижении 25-го уровня: 4000 MC, при достижении 30-го уровня: 5000 MC. Каждый следующий уровень после 30-го Вы будете получать по 1500 MC за уровень.
:?:.ехп::Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2 - Персонаж - Основное.
:?:.зп::Чтобы начислялся PayDay, Вам нужно иметь свою банковскую карту и быть уволенным со всех работ.
:?:.сид::Укажите static ID игрока, с которым у Вас происходил RP процесс.
:?:.ид::Укажите, пожалуйста, ID нарушителя.
:?:.увы::Увы, нет.
:?:.путнов::Всю информацию (команды/о фракциях, работах и так далее) можно узнать на форуме Majestic Wiki - https://wiki.majestic-rp.ru
:?:.увал::К сожалению, ничем не можем помочь. Дождитесь своего лидера/заместителей или обратитесь к кураторам в Discord канале Вашей фракции.
:?:.офф::Прекратите оффтопить в обращении или получите наказание за помеху работе администрации.
:?:.урп::Данную информацию Вы можете получить при взаимодействии с другими игроками / самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем.
:?:.релог::Попробуйте перезайти на сервер.
:?:.функ::Данный функционал временно недоступен, как только всё исправят об этом сообщат в канале "change-log".
:?:.фун::Данный функционал не предусмотрен сервером.
:?:.новость::Позвоните или придите лично в Weazel News.
:?:.нов::Следите за новостями сервера в официальном Discord канале проекта.
:?:.краш::Укажите статический ID гос. сотрудника с которым происходил RP процесс. Если с моменты вылета прошло много времени, Вам стоит загрузить видео краша, если таковое имеется. В случае отсуствия видеозаписи вылета с сервера, мы не сможем выпустить Вас.
:?:.хз::Не обладаем данной информацией.
:?:.хз2::Не обладаем данной информацией. Следите за новостями.
:?:.бп::Данную информацию Вы можете узнать в F2 > FAQ > Сезонный пропуск.
:?:.сеть::Данный игрок не в сети.
:?:.неви::Вы не на сервере, закрываю обращение.
:?:.анак::Обратитесь в Discord к администратору, который выдал Вам наказание или рассмотрел жалобу.
:?:.адз::Напишите администратору в Discord. К сожалению, сейчас он занят другим делом.
:?:.кпт::Вам необходимо открыть планшет фракции и перейти в раздел каптов, после чего выбрать нужный Вам квадрат и установить необходимые параметры, а так же выбрать участников.
:?:.вики::Данную информацию Вы можете получить с помощью Majestic Wiki - https://wiki.majestic-rp.ru/
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Клише с использованием qdis-----
------------------------------------------------------------------------------------------------------------
:?:.если::
    SendMessage, 0x50,, 0x4090409
    SendInput, Если у вас есть какие-либо доказательства невиновности вашего наказания, то предоставьте мне в лс дискорда - %qdis%. Иначе наказание остается в силе.
return
:?:.момент::
    SendMessage, 0x50,, 0x4090409
    SendInput, В данный момент у меня нету ответа на данный вопрос, как только поступит информация я вам ее сообщу, напишите мне в личные сообщения в дискорде - %qdis%
return
:?:.звезды::
    SendMessage, 0x50,, 0x4090409
    SendInput, Звезды функциональные могут выдавать из-за криминальных действий: убийство. Если же у вас произошел баг, предоставьте мне в лс дискорда %qdis% видеозапись данной ситуации, я сниму с их вас, в ином случаее администрация не снимает звезды с игроков.
return
:?:.тач::
    SendMessage, 0x50,, 0x4090409
    SendInput, Если же у вас произошел баг и авто просто пропало и у вас есть видеофиксация, предоставьте мне ее в лс - %qdis% и я вас телепортирую на ключ. Если у вас пропало авто его мог эвакуировать сотрудник силовой структуры. Так же ее мог угнать игрок с помощь отверок. Если вы ехали на фракционном авто его мог заспавнить игрок старший во фракции. Авто может пропасть через определенное время, это сделано для разгрузки сервера. Вам необходимо предоставить видео бага, в ином случае администрация не телепортирует игроков, вам необходимо вызвать такси или добежать до ключа.
return
:?:.наруч::Если у вас вылетела игра в наручниках и у вас есть видеозапись, то предоставьте ее в здесь в обращении. Напоминаю вам, что без видеозаписи не выпускаем.
:?:.емс::Администрация не реанимирует и не лечит игроков, воспользуйтесь услугами EMS.
:?:.нетп::Администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно.
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Наказания-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
:?:.кв::/kick Помеха ВЗМ{Left 11}
:?:.оф::/kick Помеха работе администрации{Left 28}
:?:.кмп::/kick Помеха МП{Left 10}
;===================================================================================
:?:.муз::/mute 30 Музыка в ЗЗ{Left 15}
:?:.муз6::/mute 60 Музыка в ЗЗ{Left 15}
:?:.оос::/mute 30 OOC in IC{Left 13}
:?:.фикс::/mute 10 Громкие звуки в микрофон{Left 28}
:?:.спзз::/mute 30 SoundPad в ЗЗ{Left 17}
:?:.мямля::/warn 1.9 ПГО{Left 8}
;===================================================================================
:?:.нрд::/ajail 15 nonRP Drive{Left 15}
:?:.лнрд::/ajail 45 nonRP Drive{Left 15}
:?:.хнрд::/ajail 90 nonRP Drive{Left 15}
;===================================================================================
:?:.нрп::/ajail 15 nonRP Поведение{Left 19}
:?:.лнрп::/ajail 60 nonRP Поведение{Left 19}
:?:.хнрп::/ajail 90 nonRP Поведение{Left 19}
:?:.ооск::/ajail 20 ООС Оскорбление{Left 19}
;===================================================================================
:?:.дб::/ajail 30 DB{Left 6}
:?:.лдб::/ajail 60 DB{Left 6}
:?:.хдб::/ajail 90 DB{Left 6}
;===================================================================================
:?:.смник::/ajail 720 nonRP Nick{Left 50}
:?:.дм::/ajail 120 DM{Left 7}
:?:.гб::/gunban 6 DM{Left 5}
:?:.краймзз::/ajail 10 Криминальные действия в ЗЗ{Left 30}
;===================================================================================
:?:.тсвза::/ajail 45 1.8 ВЗА{Left 11}
:?:.анимвза::/ajail 35 3.5 ВЗА{Left 11}
:?:.фраквза::/ajail 90 1.1 ВЗА{Left 11}
:?:.госвза::/ajail 45 1.11 ВЗА{Left 12}
;===================================================================================
:?:.пг::/ajail 35 PG{Left 6}
:?:.лпг::/ajail 60 PG{Left 6}
:?:.хпг::/ajail 90 PG{Left 6}
:?:.личка::/ajail 35 5.4 ПГО{Left 11}
:?:.соло::/ajail 35 8.3 ПГО{Left 11}
;===================================================================================
:?:.взм45::/ajail 35 Нарушение правил ВЗМ(Стрельба в/из нейтрала){Left 48}
:?:.взм90::/ajail 90 Нарушение правил ВЗМ{Left 25}
:?:.взм::/kick ВЗМ{Left 4}
;===================================================================================
:?:.багоюз::/warn 6.8 Основных правил проекта{Left 28}
:?:.тк::/ajail 50 TK{Left 6}
:?:.хтк::/warn TK{Left 3}
:?:.краймгос::/warn 1.1.1 ПГО{Left 10}
:?:.отказ::/warn 1.11 ПГО{Left 8}
;===================================================================================
:?:.пидр::/ban 3 Запрещённые слова{left 20}
:?:.куколд::/mute 120 Запрещённые слова{left 22}
:?:.попуск::/warn 1.12.1 ПОиП{left 12}
:?:.сельдь::/ajail 90 Воз. ненависти, на почве разногласия о генд.{left 44}
:?:.пизда::/ajail 90 Воз. ненависти, на почве разногласия о генд.{left 44}
:?:.неуваж::/ban 5 6.4 Основных правил проекта{left 42}
:?:.лнеуваж::/hardban 15 6.4 Основных правил проекта{left 43}
:?:.хнеуваж::/hardban 30 6.4 Основных правил проекта{left 43}
:?:.брат::/ban 5 Упоминание родных{left 19}
:?:.сестра::/ban 5 Упоминание родных{left 19}
;===================================================================================
:?:.хач::/hardban 30 Оскорбление нации{left 21}
:?:.мама::/hardban 30 Оскорбление родных{left 22}
:?:.оскмамы::/hardban 45 Оскорбление родных{left 22}
:?:.хардо::/hardban 9999 Обход блокировки{left 21}
:?:.бот::/hardban 9999 Использование стороннего ПО(BOT){left 38}
:?:.чит::/hardban 9999 Cheats{left 12}
:?:.оска::/hardban 10 Оскорбление администрации{left 29}
:?:.лоска::/hardban 15 Оскорбление администрации{left 29}
:?:.хоска::/hardban 30 Оскорбление администрации{left 29}
;===================================================================================
:?:.ща::
    SendInput, Приветствую. Сейчас помогу.{Space}
    counter++
    GoSub, UpdateCounter
return
------------------------------------------------------------------------------------------------------------
                                                -----Оверлеи-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
memo:
    State2:=!State2
    If state2{
        CustomColor2 = 	EEAA99
        Gui 9: +LastFound +AlwaysOnTop -Caption +ToolWindow
        Gui 9: Color, black
        Gui 9: Font, s9
        Gui 9: Font, w3000
        Gui 9: Font, cFFFFFF
        Gui 9: Add, Text,, =================================================================================================================================================================================================================================================================================================================================================================================
        Gui 9: ADD, TEXT, cGreen,!                    ЧАСТЫЕ НАРУШЕНИЯ		                                                                                                			ДРУГИЕ НАРУШЕНИЯ		                                                                                                          		КРИМИНАЛЬНЫЕ НАРУШЕНИЯ
        Gui 9: Add, Text, cYellow, DM                                   	            Demorgan 120 минут / WARN / Ban 3 - 30 дней.		            Лут в бою.							Demorgan 35 минут / WARN.			Грабителей меньше 4 чел. и 2 ТС.				Demorgan 15 - 35 минут
        Gui 9: Add, Text,, DB	                                    	Demorgan 30 - 90 минут / WARN / Ban 3 - 30 дней.		Унизительные/Аморальные/ceксуальные дейст.		WARN.						Меньше 4-х похитителей					WARN.
        Gui 9: Add, Text, cYellow, Уход от РП                                	WARN / HardBan 4-8 дней.					Ограбление/Похищение в ЗЗ					HardBan 7 дней / WARN.			Убийство жертвы без IC причины				Demorgan 120 минут.
        Gui 9: Add, Text,, SK	                                       	GB 8ч / Ban 2-5 дня / Hardban 2 - 7 дней.			Отыгровки в свою пользу					Demorgan 15-35 минут.				Более 2х фракций в союзе на ограблении биза			Demorgan 90 минут / Устный лидеру.
        Gui 9: Add, Text, cYellow, PG	                                            	Demorgan 35-90 минут / WARN / Ban 2-7 дней.			Обман администрации						Ban-Hardban 10 - 30 дней / PermBan.		Агрес. дейст. на враж. респе					Ban 5 дней.
        Gui 9: Add, Text,, NRD					Demorgan 15 - 90 минут / Ban 3-7 дней.				Программа изм. голоса					Mute 10 - 60 минут.				Блок. входы/выходы из бизнеса ТС.				Demorgan 35 минут.
        Gui 9: Add, Text, cYellow, NRP поведение	                                    Demorgan 15 - 90 минут / WARN / Ban / Hard Ban 3 - 15 дней.	Трап / нрп ник							Demorgan 720 минут (до смены)			Кол-во участников ограбления более 35 чел.			Demorgan 15 минут всем участникам.
        Gui 9: Add, Text,, Крайм к EMS(Без ПГ)                  	Demorgan 90 минут / WARN.                                 		Лутерство в бою						Demorgan 35 минут / WARN		           ТС/Одежда не в фрак. цвет					Demorgan 35 минут.
        Gui 9: Add, Text, cYellow, Музыка в ЗЗ	                                   	Mute 30-60 минут.						Помеха работе администрации					Kick / Demorgan-Mute 10 - 100 минут.		Срез. бронижелета без ножа					Demorgan 10 - 60 минут.
        Gui 9: Add, Text,, Уход в ЗЗ	                                   	Demorgan 20-90 минут / WARN					Спам/флуд в чат						Mute 10 - 60 минут.				Уход от погони на респ.					Demorgan 100 минут.       
        Gui 9: Add, Text, cYellow, Упом. нации				Ban 15-30 дней / Hardban 15-30 дней.			  	Реклама посторонних проектов					HardBan 15 - 30 дней / PermBan.		Переговорщик в заложниках					WARN.
        Gui 9: Add, Text,, Упом. родных                        		Ban 5-30 дней / Hardban 15.                                                      Оск. администрации						Ban 5 - 30 дней / HardBan 10 - 30 дней.
        Gui 9: Add, Text, cYellow, Громкие звуки в войс                          	Mute 10 - 120 минут.						-------------------------------------					------------------------------								ГОСУДАРСТВЕННЫЕ НАРУШЕНИЯ
        Gui 9: Add, Text,, ООС оскобления             		Demorgan 15-90 минут.						Читерство							PermBan.
        Gui 9: Add, Text, cYellow, Свап оружия                	     		Demorgan 100 минут / Ban 2 дня.				Оскорбительные отыгровки					Demorgan 10-35 минут.				Спец техника в городе						Demorgan 35 минут.
        Gui 9: Add, Text,, Угон спец техники	                        Demorgan 15 - 90 минут / Ban 2 - 10 дней.			Обман /do							Demorgan 35 минут. / WARN		            Патруль на личке						Demorgan 35 минут.
        Gui 9: Add, Text, cYellow, Байт гос. структур                           	Ban 2-5 дней.					 	 	Винтовка на поставке                                                               Demorgan 60 минут. 			            Соло гетто                                          				Demorgan 25 минут.
        Gui 9: Add, Text,, Крайм без фракции          		Demorgan 35 мин.						Ограбление мёртвого						Ban 3 дня.			  		Связь с краймом						WARN.
        Gui 9: Add, Text, cYellow, Запрещенные слова                              Mute 120 / Ban 3-30 дней / Permban.				Ограб. без отыгровок						Demorgan 15-60 минут.				Затягивание допроса (120 мин.)				Demorgan 35-90 минут всем.
        Gui 9: Add, Text,, Багоюз	                                                WARN / Ban 3 - 30 дней / Hardban 3 - 30 дней / Permban.	Хилл/броня в бою						Demorgan 35 - 90 минут.			Не чёткая миранда(1.9 ПГО)			                       Увал / WARN.
        Gui 9: Add, Text, cYellow, Крайм в ЗЗ	                         	Demorgan 10 - 100 минут / WARN / Ban 3 дня.			Стрельба с ТС по пешим					GB 6 часов / Ban 3-5 дней / HardBan 7 дней. 	Оскорбление первым (1.11 ПГО)                                              Demorgan 50-100 минут / WARN.
        Gui 9: Add, Text,, Фракции	                                    1 - LSPD   2 - EMS   3 - SD   4 - SANG   5 - GOV   6 - WN   7 - FIB   8 - Ballas   9 - Vagos   10 - Fam   11 - Bloods   12 - Mara   13 - LCN   14 - RM   15 - YAK   16 - MEX   17 -  LOST   18 - AOD   19 - IM	
        Gui 9: Add, Text,,                =================================================================================================================================================================================================================================================================================================================================================================================
        WinSet, TransColor, %CustomColor2% 200
        Gui 9: Show, x0 y430 NoActivate, window.
    }
    Else
    Gui 9: Destroy
return
;===================================================================================
ruleair:
    State3:=!State3
    If state3{
        GoSub, ruleair1
        Gui, 10:Show, x%XCoord% y%YCoord% NoActivate
    }
    Else
    Gui 10: Destroy
return

ruleair1:
    Gui 10:+LastFound +AlwaysOnTop -Caption +ToolWindow
Return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Box-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
Info:
    MsgBox, 8192, Описание "Информация", Софт создан для облегчения работы администрации проекта Majestic RP.`n`nОписание кнопок:`n- Телепорты - Телепорты в различные части карты.`n- Кастомные телепорты - Телепорты в интерьеры и бизвар локации.`n- Команды - Обширный список команд.`n- Кастомные команды - Дополнительные команды.`n- Кик\Мут - Быстрые наказания.`n- Деморган\Варн - Быстрые наказания.`n- Бан\хардбан - Быстрые наказания.`n- Памятка - Описание скилов, лицензий и тп.`n- Скиллы - Описание всех навыков.`n- ID - Вписывать свой динамик для работы команд.`n- Ивент - Можно выставить параметры спавна авто.`n- Сброс - Сбросить все настройки хотекеев.`n- Счетчик - Настройки счётчика.`n- Пресет - Можно выставить команды при входе.`n- Discord - Тут сможешь оставить свою идею или информацию о баге.`n`nКлише: Заготовленные ответы.`n- Вопросы по донату - ответы относящиеся к донату.`n- Дом и Транспорт - Вопросы по взаимодействию с транспортом и домом.`n- Квесты и задания - Начальные квесты и задание и не только.`n- Батлпасс - набор ответов на вопросы по батлпассу`n- Предметы с батлпасса - Описание предметов с батлпасса`n- Скиллы - Скиллы работ и прокачки персонажа.`n- Ограбление и нападение - Вопросы по ограблени бизнесов и банков, нападение на перрико.`n- Функционал - готовые ответы по функционалу сервера.`n- Репорт-жалобы - Быстрые ответы на репорт-жалобы.`n- Баги и решение - Ответы на вопросы по багам, а также решение их.`n- Ответы 1-2 - Ответы на репорты которые не попали ни в какую категорию ответов.`n`n"Ctrl + F9" - Во всех ситуациях перезагрузит скрипт.`n"Ctrl+ F10" - Во всех ситуациях закроет скрипт.`n
return
;===================================================================================
Teleports:
    MsgBox, 8192, Описание "Телепорты",`n- .пд - телепорт на LSPD`n- .бол - телепорт на Больницу ЛС`n- .сд - телепорт на Шерфи Департамент`n- .фз - телепорт на Форрт`n- .гов - телепорт на Мерию`n- .вн - телепорт на Новости`n- .фиб - телепорт на ФИБ`n `n- .балас - телепорт на Балласов`n- .ваг - телепорт на Вагасов`n- .фэм - телепорт на Фэмов`n- .бладс - телепорт на Бладсов`n- .мара - телепорт на Марабунту`n `n- .лкн - телепорт на ЛКН`n- .рм - телепорт на РМ`n- .як - телепорт на Якудзу`n- .мекс - телепорт на Мексиканцев`n- .ир - телепорт на Ирланцев`n `n- .лост - телепорт на лостов`n- .аод - телепорт на АОД`n`n- .особняк - Телепорт на особняк Кайо-Перико.`n- .ключ - Телепорт на ключ(Город).`n- .хум - телепорт на Хуман Лабс`n- .мейз - телепорт на Мейз Банк`n- .каз - телепорт на Казино`n- .аш - телепорт на АвтоШкола`n- .гг - телепорт на ГанГейм`n- .бургер - телепорт на Бургерную`n- .багама - телепорт на Багаму Маму`n- .кайо - телепорт на Остров.`n- .авиа - Телепорт на авианосец `n- .мол - Телепорт на мол `n- .трас - Телепорт на искуственную трассу`n- .аук - Телепорт на аукцион`n- .бокс - Телепорт на бокс`n- .бар - Телепорт телепорт в бар с интой`n- .бк - Телепорт на букмекерскую контору`n- .ванила - Телепорт в стрип клуб Vanila Unicorn`n- .починка - Телепорт на СТО Hayes`n- .лск4 - Телепорт к 4 лск, шоссе 68`n`n- .спд - Телепорт на склад LSPD`n- .сбемс - Телепорт на склад EMS`n- .ссд - Телепорт на склад LSCSD`n- .сфз - Телепорт на склад SANG`n- .сгов - Телепорт на склад GOV`n- .свн - Телепорт на склад WN`n- .сфиб - Телепорт на склад FIB`n- .скайо - Телепорт на склад Кайо-Перико.`n`n- .сяк - Телепорт на склад Yakuza`n- .сир - Телепорт на склад Irish`n- .срм - Телепорт на склад Russia Mafia`n- .смекс - Телепорт на склад Mex`n- .слкн - Телепорт на склад LCN`n- .сбалас - Телепорт на склад Ballas`n- .смара - Телепорт на склад Mara.`n- .сваг - Телепорт на склад Vagos.`n- .сбладс - Телепорт на склад Bloods.`n- .сфэм - Телепорт на склад Fam.`n- .сш - Телепорт в Сэнди-Шорс.`n- .палето - Телепорт в Палето.`n- .ричман - Телепорт на Ричман.`n- .рокфорд - Телепорт на Рокфорд.`n- .миррор - Телепорт в Миррор-Парк.`n
return
;===================================================================================
CusTp:
    MsgBox, 8192, Описание "Кастомные телепорты",Интерьеры:`n - .инт1 - СТО.`n- .инт2 - Морг.`n- .инт3 - Розовая комната казино.`n- .инт4 - Хранилище казино.`n- .инт5 - Металодетекторы казино.`n- .инт6 - Квартира.`n- .инт7 - Гараж.`n- .инт8 - Лаундж зона.`n- .инт9 - Гараж казино.`n- .инт10 - Казино ограба.`n- .инт11 - Пентхаус.`n- .инт12 - Бар казино.`n- .инт13 - Серверная НУП.`n- .инт14 - Гараж в МАЛС.`n`nБизвары:`n- .порт1 - Телепорт на защиту. Локация "Порт".`n- .порт2 - Телепорт на атаку. Локация "Порт".`n- .мара1 - Телепорт на защиту. Локация "Нефть".`n- .мара2 Телепорт на атаку. Локация "Нефть".`n- .стройка1 - Телепорт на защиту. Локация "Стройплощадка".`n- .стройка2 - Телепорт на атаку. Локация "Стройплощадка".`n- .свал1 - Телепорт на защиту. Локация "Самолёты".`n- .свал2 - Телепорт на атаку. Локация "Самолёты".`n- .лес1 - Телепорт на защиту. Локация "Лесопилка".`n- .лес2 - Телепорт на атаку. Локация "Лесопилка".`n`nРаботы:`n- .воркт: Телепорт на работу "Таксист".`n- .воркм: Телепорт на работу "Мусоровоз".`n- .воркд1: Телепорт на работу "Дальнобой(Порт)".`n- .воркд2: Телепорт на работу "Дальнобой(Палето)".`n- .воркп: Телепорт на работу "Почтальон".`n- .ворка: Телепорт на работу "Автобусника".`n- .ворки: Телепорт на работу "Инкассатор".`n`n Другие: `n - .ч - NRD угон `n - .ч1 - NRD угон №2 `n - .азс - АЗС №15 `n
return
;===================================================================================
Com:
    MsgBox, 8192, Описание "Команды",Все команды случайно написанные на транслите будут конверсирвоанные в номальное состояние. Пример: .ез -> /tp.`n`nКоманды конвертации:`n- .пиздец - Если пизда по репортам, а админы AFK.`n- .дис - Отправит игроку ваш дискорд.`n- .га - Отправит игроку дискорд ГА.`n- .зга - отправит игроку дискорд зГА.`n- .куыуееуьзтфьу: /resettempname.`n- .пь: /gm.`n- .гтифт: /unban.`n- .еуьзафьшдн: /tempfamily.`n- .ыуеьфеукшфды: /setmaterials.`n- .еуьзтфьу: /tempname.`n- .яявуигп: /zzdebug.`n- .фьзр: /addamphitheater.`n- .кфьзр: /removeamphitheater.`n- .пящту: /togglegreenzone.`n- .ьгеусрусл: /mutecheck.`n- .гтофшд: /unjail.`n- .цфкт: /warn.`n- аинв: /auninvite.`n- .аи: /fb.`n- .гтьгеу: /unmute.`n- .пуезшт: /getpin.`n- .пшв: /gid.`n- .фвьшты: /admins.`n- .фштаусе: /ainfect.`n- .умутещт: /eventon.`n- .умутещаа: /eventoff.`n- .пц: /gw.`n- .мур: /veh.`n- .ашчсфк: /fixcar.`n- .уьздуфвук: /templeader.`n- .фофшдсрусл: /ajailcheck.`n- .ифтсрусл: /bancheck.`n- .ылшсл: /skick.`n- .кузфшк: /repair.`n- .фгтшмшеу: /auninvite.`n- .учсфк: /excar.`n- .агуд: /fuel.`n- .згддекгтл: /pulltrunk.`n- .акууя: /freez.`n- .езсфк: /tpcar.`n- .дфыевкшмук: /lastdriver.`n- .вудшеуь: /delitem.`n- .езр: /tph.`n- .пез: /gtp.`n- .фв: /admins.`n- .ум: Приветствую. Такова задумка разработчика..`n- .здфнукы: /players.`n- .рес: /rescue.`n- .ез: /tp.`n- .ызус: /spec.`n- .ызусщаа: /specoff.`n- .фыьы: /asms.`n- .ку: Приветствую, сейчас займусь вашим обращением..`n- .штсфк: /incar.`n- .фмур: /aveh.`n- .фдщсл: /alock.`n- .рфквифт: /hardban.`n- .ьгеу: /mute.`n- .пшв: /gid.`n- .пшмудшс: /givelic.`n- .езии: /tpbb.`n- .пы: /gs.`n- .акууяу: /freeze.`n- .акууямур: /freezveh.`n- .ыуесфквшь: /setcardim.`n- .куысгу: /rescue.`n- .ыуевшь: /setdim.`n- .сршву: /chide.`n- .фгтсгаа: /auncuff.`n- .фсгаа: /acuff.`n- .акууяф: /freeza.`n- .ызфцтсфк: /spawncar.`n- .темп: /templeader.`n- .фуоусе: /aeject.`n
return
;===================================================================================
CusCom:
    MsgBox, 8192, Описание "Кастомные команды",- .флаер - Выдача "Флаера".`n- .ракета - Выдача "Фейерверка".`n- .мушкет - Выдача "Мушкета".`n- .снапа - Выдача "Heavy Mk2".`n- .топорик - Выдача "Каменный топор".`n- .мачете - Выдача "Мачете".`n- .чайхана - Баг /chide.`n- .сдим - Сменить дим на 0 игроку.`n- .дим - Сменить себе дим на 0.`n- .евдим - Сменить себе дим на 58.`n- .афк - Отпись об АФК.`n- .рев - Реснуть себя.`n- .бб - Снять с себя наручники.`n- .чел - Телепорт типа на ключ.`n- .тунк - Спавн "khanjali" и последующий /incar.`n- .ган - Выдача оружия с "𝐄𝐯𝐞𝐧𝐭".`n- .вход - Запуск пресета.`n
return
;===================================================================================
Kikc:
    MsgBox, 8192, Описание "Кик\мут",---KICK---`n- .кв - /kick Помеха ВЗМ.`n- .оф - /kick offtop in "Обращения".`n- .кмп - /kick Помеха МП.`n`n---MUTE---`n- .муз - /mute 60 Music in ZZ.`n- .оос - /mute 60 OOC in IC.`n- .фикс - /mute 15 Громкие звуки в микрофон.`n- .спзз - /mute 15 SP in ZZ.`n- .мямля - /warn 1.9 ПГО.`n
return
;===================================================================================
Ajail:
    MsgBox, 8192, Описание "Деморган\Варн",---AJAIL---`n- .нрд - /ajail 15 nonRP Drive.`n- .лнрд - /ajail 70 nonRP Drive.`n- .хнрд - /ajail 90 nonRP Drive.`n- .нрп - /ajail 15 nonRP Поведение.`n- .мнрп - /ajail 70 nonRP Поведение.`n- .хнрп - /ajail 90 nonRP Поведение.`n- .дб - /ajail 30 DB.`n- .мдб - /ajail 75 DB.`n- .хдб - /ajail 90 DB.`n- .смник - /ajail 720 nonRP Nick`n- .дм - /ajail 100 DM.`n- .личка - /ajail 35 8.3 ПГО.`n- .соло - /ajail 25 8.3 ПГО.`n- .краймзз - /ajail 35 Crime in ZZ.`n- .тсвза - /ajail 45 1.9 ВЗА.`n- .анимвза - /ajail 45 3.6 ВЗА.`n- .фраквза - /ajail 90 1.1 ВЗА.`n- .госвза - /ajail 45 1.11 ВЗА.`n- .пг - /ajail 35 PG.`n- .лпг - /ajail 70 PG.`n- .хпг - /ajail 90 PG.`n- .взм45 - /ajail 35 Нарушение правил ВЗМ(Стрельба в/из нейтрала).`n- .взм90 - /ajail 90 Нарушение правил ВЗМ.`n- .тк - /ajail 90 Team Kill.`n`n---WARN---`n- .багоюз - /warn 6.8 Основных правил проекта.`n- .хтк - /warn Team Kill.`n- .отказ - /warn 1.11 ПГО.`n- .краймгос - /warn 1.1.1 ПГО.`n- .ооск - /ajail  20 ООС Оскорбление
return
;===================================================================================
Ban:
    MsgBox, 8192, Описание "Бан\Хардбан",---BAN---`n- .пидр - /ban 7 Запрещённые слова.`n- .брат - /ban 15 Упоминание родных.`n- .неуваж - /ban 5 Неуважительное отношение или неуважительное общение к администрации сервера.`n- .лнеуваж - /ban 10 Неуважительное отношение или неуважительное общение к администрации сервера.`n- .хнеуваж - /ban 25 Неуважительное отношение или неуважительное общение к администрации сервера.`n- .сельдь - /ban 3 Возбуждение ненависти, либо вражды на почве разногласия о гендерной принадлежности.`n- .пизда - /ban 10 Возбуждение ненависти, либо вражды на почве разногласия о гендерной принадлежности.`n- .попуск - /ban 3 Действия грубого унизительного характера без ООС согласия игрока.`n`n---HARDBAN---`n- .хардо - /hardban 9999 Обход блокировки.`n- .чит - /hardban 9999 Cheats.`n- .хач - /hardban 30 Оскорбление нации.`n- .мама - /hardban 30 Оскорбление родных.`n- .оска - /hardban 7 Оскорбление администрации.`n- .лоска - /hardban 15 Оскорбление администрации.`n- .хоска - /hardban 30 Оскорбление администрации.`n- .оскмамы - /hardban 45 Оскорбление родных.`n
return
;===================================================================================
Donate:
    MsgBox, 8192, Описание "Вопросы по донату", - .донат - Все проблемы с платежами решаются исключительно через почту - help@majestic-rp.ru `n- .донт - Чтобы забрать транспорт с донат инвентаря, Вам нужно зайти в F2 - Магазин - Предметы.`n- .скин - Оружие / броня появляется в донат инвентаре, его можно будет распылить. Однако при его применении невозможно дальнейшее распыление. Чтобы применить скин на оружие: F2 - Магазин - Скины - Выбираете оружие / броню и скин к нему - Применить, скин применяется ко всем оружиям / броне выбранного типа. Скин привязывается к игроку, выбить оружие со скином / сбросить / обменять / продать - невозможно.`n- .слоты - Чтобы увеличить гаражные места, Вы можете продать свой транспорт или купить дом / квартиру. Так же можете нажать F2 - Магазин - Персонаж и купить дополнительное гаражное место.`n- .ник - Чтобы изменить никнейм, Вам надо нажать - F2 > Магазин > Персонаж.`n- .перс - Чтобы изменить внешность персонажа, Вам надо нажать F2 > Магазин > Персонаж, но при этом Вы должны находится в магазине одежды №15.`n- .ктату - Покупая тату за Majestic Coins Вы получаете его в безлимитное использование. Последующее снятие/нанесение абсолютно бесплатно. Так же работают и тату с боевого пропуска.`n- .адон - Активировать уникальный код можно через F2 > Магазин > Пополнить.`n- .ндон - Купить уникальный код можно через kinguin.net/c/112566/majestic-rp.`n- .чеквип - Чтобы просмотреть, имеется ли у Вас Majestic Premium, зайдите в F2 > Магазин > Majestic Premium.`n- .твойпромо - Вы получаете за каждого игрока 7.500$ при достижении им третьего уровня, а также 10 процентов доната игрока.
return
;===================================================================================
HouseandCar:
     MsgBox, 8192, Описание "Взаимодействие с домом и транспортом", Транспорт:`n- .автоплюс - Чтобы найти Ваше авто, воспользуйтесь телефоном и приложением Auto Plus. Если же оно на месте парковки, Вы можете его призвать через любой автосервис (гаечный ключ на карте).`n- .ремонт - Для начала, Вам нужно купить запчасть для машины на любо АЗС или 24/7, нажать G > Починить замок/аккумулятор/залить масло. Также не забудьте рем комплект.`n- .канистра - Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и заправить(Авто должно быть открыто).`n- .свалка - Вы можете сдать авто/катер/вертолет на свалку. После сдачи вы получите 50 процентов от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый, красный круг.`n- .сто - Что бы починить транспорт, Вам нужно приехать на СТО (иконка гаечного ключа с отверткой на карте).`n- .замок - Вам необходимо купить дверной замок в магазине 24/7 и набор инструментов на ближайшей заправке, затем подойти к своему транспорту G -> Починить дверной замок.`n- .акум - Вам необходимо купить аккумулятор" и набор инструментов на ближайшей заправке, затем подойти к своему транспорту G -> Заменить аккумулятор.`n- .масло - Вам необходимо купить моторное масло и набор инструментов на ближайшей заправке, затем подойти к своему транспорту G -> Заменить масло.`n- .кавто - Чтобы сделать дубликат ключей от авто необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат. Максимум можно сделать три дубликата.`n- .парк - Чтобы припарковать транспорт, будучи за рулем нажмите G - Припарковать.`n- .дубликат - Чтобы сделать дубликат ключа от транспорта, Вам необходимо купить заготовку для ключа в магазине 24/7, после навестись на авто и нажать G - Сделать дубликат.`n- .арен - Чтобы отказаться от аренды транспорта, Вам необходимо находится около него, после навестить на транспорт и нажать G - Отменить аренду, так же можете отменить аренду транспорта через приложение Auto Plus на телефоне.`n- .угон - Чтобы взломать транспорт, Вам необходимо иметь Программатор ЭБУ и Турбодекодер.`n- .типпосадки - Вам нужно зайти в F2 - Настройки и поменять тип посадки на приоритет водительское.`n- .рем - Чтобы починить транспорт, купите ремонтный комплект на любой АЗС. Далее наведитесь на авто и нажать G - Починить транспорт.`n- .авторынок - Для того, чтобы выставить свой транспорт на продажу, Вам необходимо приехать на территорию авторынка, выбрать место и нажать на клавишу G - Авторынок - Выставить на продажу.`n- .толк - Чтобы толкать транспорт, Вам нужно подойти к нему со стороны багажника, нажать G - Толкать. Транспорт должен быть открыт, а так же не находится в функциональной зеленой зоне. Спортивный транспорт толкать невозможно.`n==============================================`nДом:`n- .сейф - Закрывать интерфейс сейфа можно только нажав на ESC. В сейф можно класть до 5 миллионов, деньги списываются с наличных. Нельзя продать дом государству, игроку или обменять, если в сейфе есть деньги. Сначала требуется их забрать. Если Вы не успеете оплатить налог на дом и он уйдет на аукцион, деньги с сейфа зачислятся Вам наличными.`n- .подсел - Чтобы подселить игрока к себе в дом или же квартиру, стоя около дома, наведитесь на игрока и нажмите G - Подселить.`n- .кладовка - Чтобы сделать дубликат кладовки, Вам необходимо купить дубликат ключей в магазине 24/7, после находится около нее, нажать по игроку через G - Передать ключи от кладовки.`n- .госдом - Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75 процентов от его гос. цены. Если Вы невовремя оплатите налоги или забудете это сделать, дом выставится на аукцион автоматически.
return
;===================================================================================
Quest:
    MsgBox, 8192, Описание "Квесты и задания", - .работы -  Для выполнения квеста на работе, Вам необходимо подойти к NPC и нажать Е. Подобные квесты можно взять на любой из работ (все зеленые чемоданы на карте).`n- .новичок - Квест новичка берется и проходится один раз. Если вы ранее начали проходить на другом персонаже, то нужно закончить прохождение на нем. Задание выполняется один раз на аккаунт.`n- .отмнов - Если вы не можете взять квест, то Вам необходимо отменить активный квест. Чтобы проверить его наличие, нажмите F2 - Задания - Активные, при желании там же его можно отменить. Если у Вас не отображается квест в правом верхнем углу экрана, попробуйте нажать F6 несколько раз. Если информация так же не появляется, перезайдите в игру.`n- .место - Чтобы у Вас засчитывался квест с рыбалкой, Вам необходимо рыбачить на месте рыбалки, которое доступно Вам по уровню.`n- .сов - Работы для совместного выполнения - мусоровоз, почтальон, инкассатор. На карте изображены в виде зеленых чемоданов. Для выполнения квеста на работе, Вам необходимо подойти к NPC, после чего нажать Е. Подобные квесты можно взять на любой из работ (все зеленые чемоданы на карте).`n- .пут - Чтобы найти путеводителя, Вам необходимо открыть карту и найти значок в виде человека махающего рукой. Далее, Вам нужно подойти к нему и нажать Е. Вам будет доступна аренда авто, а так же взятие начального квеста.`n- .квест - Ознакомиться с мировым квестом Вы можете приехав к метке красного знака вопроса на карте. Квесты доступны всем. Личные квесты Вы можете проходить в любое время, но, если Вы захотите участвовать в мировом квесте и получить дополнительные бонусы, то Вам нужно поторопиться выполнить личный квест. Только несколько человек смогут попасть в топ и получить дополнительные игровые бонусы, каждую неделю доступно по 3 личных и мировых квеста. - Некоторые квесты по типу инкассатора / мусорщика / почтальона можно выполнять в 2-ем и более, засчитываться они будут всем.`n- .дмг - На первом этаже стоит NPC у которого можно взять задание. Чтобы отбыть срок в деморгане, нужно выполнять задачи, например помыть туалет. В определенное время тюрьма закрывает клетки на 5 минут, соответственно, в это время отбыть срок нельзя.`n- .ежеднев - Голубую награду (каждые 7 дней) игрок может забрать только тогда, когда собраны 5 предыдущих наград. Красную награду (каждые 30 дней) игрок может забрать если собраны 70 процентов прошлых наград (~21 день).`n- .билл - NPC Билл находится на рынке около фермы.`n- .руда - Единственный способ продажи руды - маркетплейс, добыть её Вы можете на карьере (F3 > Работа > Карьерщик). Применяется только для сдачи семейных контрактов или крафтов. Шанс выпадения случайный, самая редкая руда - золотая.
return
;===================================================================================
BattlePass:
    MsgBox, 8192, Описание "Задания батлпасс", Остальное:`n- .опыт - Чтобы улучшить боевой пропуск - F2 > Сезонный пропуск > Купить опыт`n- .дрифт - Очки дрифта идут в статистику при набирание 3000 очков за раз и более.`n- .дрифт2 - Дрифт счётчик можно включить через F2 > Настройки. Он появляется во время управляемого заноса и показывает, на сколько хорошо вы прошли поворот. На карте вы можете увидеть зоны, где можно дрифтить и попасть в список топ-дрифтеров. Для этого Вам обязательно дрифтить по отмеченной зоне. В противном случае очки не засчитаются.`n- .гриль - Аквамарин - жарится с 1.5 кг., Карась - жарится с 1.5 кг., Камбала - жарится с 1.5 кг., Золотая рыбка - жарится с 1 кг., Красный солдат - жарится с 1 кг., Форель - жарится с 1 кг., Тунец - жарится с 10 кг., Оранжевый карп - жарится с 10 кг.`n- .зонадрифта - Чтобы найти зону для дрифта откройте карту. На карте будет изображена в виде колеса в огне. Приезжаете, нажимаете Е на точке (синия метка) и вы в дрифт зоне.`n- .автопилот - Чтобы использовать автопилот вам необходимо зайти в F2-Настройки-Бинд Клавиш, далее поставить удобный для вас бинд. Выйти с настроек - поставить метку в авто и нажать ваш бинд.`n- .предметы - Чтобы забрать предметы с рулетки или с сезонного пропуска вам необходимо нажать F2 > Магазин > Предметы.`n- .лотерея - Розыгрыш проходит 3 раза в день - в 15:00, в 18:00 и в 21:00.`n- .стриптиз - Чтобы заказать приватный танец вам необходимо прийти в клуб. Далее найти стол, подойдя к нему нажать Е.`n- .мусор - Чтобы открыть мусорку нужно подойти к ней и нажать Е, так же вам сообщаю что не все мусорки можно просмотреть. Расположение мусорок вы можете узнать через игроков, либо же самостоятельным поиском.`n- .руки - Чтобы прокатится несколько метров, вам необходимо чтобы вас взял игрок на руки и пронес несколько метров.`n- .тел - Телефоны находятся по всей карте. Чтобы ответить на звонок вам необходимо подойти к нему и нажать Е. Его можно найти по характерному звуку (звонок)`n- .угонбп - Чтобы угнать транспорт вам необходимо находится в криминальной организации. Далее купить отверку в 24/7. Сесть на водительское место - G - взломать.`n- .животные - Данные животные можно разделать на мясо - кролики, кабаны, олени, коровы, свиньи, петухи. Домашних животных которые гуляют по карте, можно гладить. Животные появляются по всей карте.`n- .резня - Чтобы разделать животное вам необходимо иметь при себе в руках нож (покупается в магазине 24/7), далее подходите к животному и нажимате G - разделать животное.`n- .болезнь - Вы не сможете заболеть до 3-го лвл включительно. Если вас интересует выполнение задания, вы можете заменить его или же повысить лвл. Более к сожалению никак.`n- .лифт - Попробуйте использовать другие лифты.Их большое количество на карте. Расположение данных лифтов вы сможете узнать через общение с игроками. Для выполнения задания в пропуске подобные лифты как в ЕMS засчитыватся у вас не будут`n- .клад - Для поиска кладов Вам необходим металоискатель и лопата, купить можно у NPC на рынке. Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. Места расположения сокровищ: пляжи и архипелаги.`n- .ганг - Maze bank arena (гангейм) это место, где можно посоревноваться с другими игроками в навыках стрельбы, для тренеровки своей стрельбы. На карте находится снизу изображен в виде джостика. `n`n---1 Сентебря:---`n- .круг - Круги обозначают, что рядом с вами находится клад, который нужно выкопать, вы получите предметы со школьного ивента, которые понадобятся вам для обмена у NPC. `n- .книга - Книги вы можете обменять на предметы со школьного ивента.`n- .ниера - Ниера находится на втором этаже библиотеки, в правом дальнем углу.`n`n---Хэллоуин:---`n- .незнак - Если у вас задание с незнакомцем у вас на карте пояляется метка, вам по ней нужно прийти. Если метка не появляется, перезайдите в игру, пожалуйста.`n- .хелло - Так же месторасположение нового квеста можно узнать в F2-Halloween-> Выбрать нужный этап и отследить где находится новый квест.`n- .отмхелло - Отменить Хэллоуинские квесты можно только через f2->Задания->Активные задания. Через бота нельзя отменить их.`n- .хелло3 - Вам нужно подойти к NPC, начать прохождение квеста, надеть выданную футболку и повторно подойти к NPC, Вас телепортирует в другой мир и задание продолжится.`n- .трансц - Трансцендентный ассенизатор используется для поиска частиц в разломах.`n`n---Новый год---`n- .снеж - Сдать снежки вы можете большому снеговику, который находится по правую сторону от NPC, у которого Вы брали квест. Местоположение возле церкви.`n- .лепка - Собрать снежки можно только за зоной ивента.`n- .ивент -  Вам нужно взять задание у NPC на Янктоне.
return
;===================================================================================
Ivnbatlepass:
    MsgBox, 8192, Описание "Предметы с Батлпасса", .био - Биодобавка 1 / 2 / 3 уровня ускоряет прокачку рабочих навыков в 2 раза (30 / 60 / 120 минут).`n- .биол - Biolink - восполняет голод и жажду до 100 процентов, убирает потребность на 5 часов.`n- .ремка - Ремонтный набор для оружия при использовании чинит любое оружие в руках на 30 процентов, одноразовый.`n- .набор - Большой ремонтный набор для автомобиля аналог обычному ремонтному комплекту, но использовать его можно 25 раз.`n- .пилюля - Экспериментальная пилюля "Имморталитикс" дает шанс в 50 процентов излечиться от всех болезней, в ином случае -50 здоровья.`n- .бобы - Консервированные бобы восполняют 35 единиц сытости и жажды.`n- .волосы - При использовании стайлинга для волос игрока невозможно подстричь. Тот, кто попытается это сделать - сломает машинку для бритья, действует 12 часов.`n- .губер - Благодарственное письмо губернатора увеличивает payday на 50 процентов, действует 5 часов.`n- .испбургер - Испорченный бургер снижает сытость и жажду до 0.`n- .капсулы - Капсулы восстановления пополняют 9 единиц здоровья раз в 2 секунды, при использовании 2х подряд - передозировка и -50 единиц здоровья.`n- .батончик - Протеиновый батончик ускоряет прокачку спортивных навыков в 2 раза и действует 20 минут.`n- .металл - Улучшенный металлоискатель это аналог обычного металлоискателя, но его радиус для поиска клада увеличен в 2 раза.`n- .скидка - Скидка на одежду (купон) - аналог скидке на покупку транспорта, применим в любом магазине одежды, не имеет срока использования.`n- .реднека - Непредсказуемый коктейль Реднека имеет три разных эффекта: ослепит на 5 минут, пополнит 100 здоровья, сытости и жажды, либо вызовет отравление.`n- .скейт - Скейт даёт возможность передвигаться с соответствующей анимацией, скорость равна ходьбе, с зажатым SHIFT - равна скорости бега.`n- .крепление - Система крепления для мотоцикла позволяет Вам пристегнуться и не падать при столкновении с другим транспортом или предметами. Снять с мотоцикла ее нельзя, ставится один раз и навсегда.`n- .сигналка - Автосигнализация сработает, если зажигание на Вашем транспорте будет взломано. Уведомление придет Вам и Вашей семье, если транспорт семейный. Снять с транспорта ее нельзя, ставится раз и навсегда.`n- .двершок - Набор дверных шокеров наносит урон игроку при попытке открыть закрытый транспорт. Снять с транспорта их нельзя, ставятся раз и навсегда.`n- .горн - Воздушный горн при использовании выводит всех игроков в радиусе 10 метров на некоторое время и убирает у всех оружие из активного слота, если таковое имеется. За одно использование тратится 2 процента прочности.`n- .кастет - Стальной кастет при нанесении урона оглушает противника на небольшое время. При смерти данный предмет не выпадает.`n- .ингал - Ингалятор - улучшенная альтернатива бонга, которая не требует зажигалки. Использование происходит менее чем за секунду, прочность у него не тратится.`n- .крем - Крем-маска при нанесении не позволит идентифицировать Вашу личность в течение 30 минут, однако, сотрудники гос. структур могут смыть ее.`n- .сверхтяж - Сверхтяжелый бронежилет имеет 150 процентов прочности, но накладывает на персонажа эффект перевеса.`n- .энергос - Энергетик увеличивает скорость передвижения персонажа, эффект перевеса не снимает, если таковой имеется.`n- .пенни - Счастливый пенни нужен для прокручивания колеса удачи в казино. Вы так же можете сыграть с другим игроком в камень-ножницы-бумага на данный предмет, и в случае выигрыша получить еще один. Если у Вас более 1 пенни в инвентаре, Вы можете прокрутить колесо удачи столько раз, сколько у Вас имеется пенни, но в день максимум это можно сделать 5 раз.`n- .гпстрекер - GPS трекер можно поставить на транспорт и отслеживать его местоположение на карте. Снять его с транспорта нельзя, ставится один раз и навсегда.`n- .точкамень - Точильный камень нужен для заточки инструментов и повышении их эффективности в получении ресурсов с каждой заточкой.`n- .глушилка - Глушилка связи позволяет глушить любые электронные устройства и сигналы связи в радиусе 50 метров. Имеет запас прочности.`n- .саморес - Набор самореанимации используется при критическом состоянии Вашего персонажа перед смертью. Позволяет Вам воскресить себя с 10 единицами здоровья.`n- .рамка - Откидная рамка для номеров позволяет спрятать установленный номер на транспорте, чтобы избежать наказания за превышение скорости. Находясь в машине нажмите G - Убрать номер. Снять с транспорта их нельзя, ставится один раз и навсегда.`n- .фляга - Стальная фляжка наполняется около любого источника воды (в инвентаре нажмите ПКМ по фляжке - Наполнить), имея вместительность 500 ед. жажды (за один глоток прибавляет 100 ед. жажды). Имеет бесконечную прочность`n- .блокавто - Блок автопилота позволяет установить автопилот на любой автомобиль. Работает так же, как и обычный автопилот на электромобилях. Снять с транспорта его нельзя, ставится один раз и навсегда.`n- .бронпатр - Магазин бронебойных патронов - модификация на оружие, которая позволяет наносить 20 процентов урона по здоровью, игнорируя надетый бронежилет и изменяя звук хитмаркера. Он не бесконечный и со временем ломается. Совместим с тем же оружием, на которое можно поставить увеличенный магазин.`n- .стимгруз - Стимулятор грузоподъёмности cнимает действие эффекта "Перевес" на 1 час.`n- .стимлеч - Стимулятор лечения увеличивает восстановление здоровья на 20 процентов от применения предметов, которые мгновенно лечат / постепенно восстанавливают здоровье на 30 минут.
return
;===================================================================================
Ski:
    MsgBox, 8192, Описание "Скиллы", - .рыбалка - Для того чтобы рыбачить, Вам нужно удилище, катушка, леска, крючок, а так же наживка или приманка. Все это покупается в рыболовном магазине, который находится около Палето-Бей. Подходите к зоне рыбалки своего уровня, далее собираете удочку и нажимаете Е, что бы начать рыбачить. После звукового и визуального эффекта, Вам нужно будет подсечь рыбу. После успешной подсечки нажимайте A-D в противоположную сторону от движения рыбы, пока не выловите её. Рыбу можно забрать себе, либо отпустить, получив за это дополнительные очки опыта для прокачки уровня рыбака. Рыбу в дальнейшем можно продать на маркетплейсе либо у NPC на рынке.`n- .скилрыб - Рыбак - навык профессии прокачивающийся путём ловли рыбы (F3>Работа>Рыбак). Уровни: 1 lvl Зоны: 1, 2, 3, 4. Рыба: Форель(До 196). 2 level Зоны: 5,6. Рыба: Камбала(До 588). 3 level Зоны: 7,8. Рыба: Тунец(До 1 225). 4 level Зоны: 9,10. Рыба: Красный солдат(До 2 205). 5 level Зона 11. Рыба: Карась(До 3 920). 6 level Зона 12. Рыба: Оранжевый карп(До 6 125). 7 level Зона 13. Рыба: Аквамарин(До 8 200).  8 level Зона 14. Рыба: Золотая рыбка. Данный уровень является максимальным в данной профессии.`n- .скилфер - Фермер - навык профессии прокачивающийся путём работы на ферме(F3>Работа>Фермер). Уровни: 1 lvl - Апельсины. 2 lvl - Пшеница(До 450). 3 lvl - Картофель(До 1 070). 4 lvl - Капуста(До 1 730). 5 lvl - Кукуруза(До 2 830). 6 lvl - Тыква(До 4 460). 7 lvl - Бананы, данный уровень финальный.`n- .скилпоч - Почтальон - навык профессии, прокачивающийся путём работы на почте (F3 > Работа > Почтальон). Уровни: 1 lvl - 0-500. 2 lvl - 501-2100. 3 lvl - 2101-6800. 4 lvl - Максимальный уровень профессии.`n- .скилбус - Водитель автобуса - навык профессии, прокачивающийся путём работы на автобусе (F3 > Работа > Водитель автобуса). Уровни: 1 lvl - 0-250. 2 lvl - 251-700. 3 lvl - 701-2000. 4 lvl - 2001-6000. 5 lvl - Максимальный уровень профессии.`n- .скилмус - Мусорщик - навык профессии, прокачивающийся путём работы на мусоровозе (F3 > Работа > Мусорщик). Уровни: 1 lvl - 0-650. 2 lvl - 651-2600. 3 lvl - 2601-8500. 4 lvl - 8501-26000. 5 lvl - Максимальный уровень профессии.`n- .скилинк - Инкассатор - навык профессии, прокачивающийся путём работы на инкасаторе (F3 > Работа > Инкассатор). Уровни: 1 lvl - 0-100. 2 lvl - 101-300. 3 lvl - 301-900. 4 lvl - 901-2500. 5 lvl - Максимальный уровень профессии.`n- .скилдал - Дальнобойщик - навык профессии, прокачивающийся путём грузоперевозок (F3 > Работа > Дальнобойщик). Уровни: 1 lvl - 0-500. 2 lvl - 501-2000. 3 lvl - Максимальный уровень профессии.`n- .скилгриб - Грибник - навык профессии, прокачивающийся путём сбора грибов (F3 > Работа > Грибник). Уровни: 1 lvl - 0-550. 2 lvl - 551-1500. 3 lvl - 1501-1900. 4 lvl - 1901-4300. 5 lvl - 4301-7700. 6 lvl - Максимальный уровень профессии.`n- .скиллес - Лесник - навык профессии, прокачивающийся путём рубки деревьев (F3 > Работа > Лесник). Уровни: 1 lvl - 0-2600. 2 lvl - 2601-8450. 3 lvl - 8451-23400. 4 lvl - Максимальный уровень профессии.`n- .скилкар - Карьерщик - навык профессии, не имеющий прокачки, необходим при семейных контрактах (F3 > Работа > Карьерщик).`n- .сила - Навык силы повышается от физических нагрузок. Чем больше Вы занимаетесь в качалке (иконка гантели на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.`n- .дых - Навык дыхания повышается от длительного нахождения под водой. Чем больше Вы плаваете, тем быстрее повышается навык. Соответственно, повышение навыка влияет на длительность беспрерывного плавания под водой.`n- .вожден - Навык вождения повышается от времени, проведенного за рулем автомобиля. Чем больше Вы водите транспорт, тем быстрее повышается навык. От прокачки увеличивается управляемость транспортным средоством.`n- .полет - Навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше Вы летаете на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысить, пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увеличение навыка от 1 занятия - 10 процентов, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.`n- .скрытн - Навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Чем чаще Вы скрываетесь от полиции, тем быстрее повышается навык. От прокачки уменьшается время, которое Вы будете находиться в розыске (быстрее пропадают звезды).`n- .стрельба - Навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше Вы стреляете и попадаете, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, например - в тире оружейного магазина. От прокачки навыка увеличивается скорость перезарядки и перекатов, а так же кучность стрельбы.`n- .вынос - Навык выносливости повышается от подвижного образа жизни. Чем больше Вы бегаете, тем быстрее повышается навык. При низком навыке, персонаж очень быстро выдыхается и начинает бежать медленно. Повышение навыка влияет на длительность беспрерывного бега.
return
;===================================================================================
Ograbanapad:
    MsgBox, 8192, Описание "Нападение и ограбление", Нападение на Кайо:`n- .зкайо - На острове имеется несколько точек захвата медицинских, оружейных, и технических материалов. Для захвата Вам необходимо взять с собой маячки, с маячками зелёного цвета Вы сможете захватить оружейные материалы, с маячками синего цвета Вашей целью станут технические материалы, а при наличии красных Вам откроется возможность захватить медицинские. Захват можно начать в радиусе 50 метров от точки погрузки, после активации маячка появится обозримая зона захвата, если выйти за зону захвата или все захватчики умрут, маячок уничтожается, точка переходит в спокойное состояние, как до захвата. Не стоит забывать и про сигнализацию, если Вы её не выключите все госструктуры будут оповещены и они окажут Вам сопротивление (функционально на захват материалов это не повлияет). После захвата метка на карте красится в цвет организации захватчиков. Игроки смогут забирать материалы с точки и грузить их в личную / арендованную лодку, в последствии в городе перегружать в матовозку.`n- .перико - У всех силовых фракций есть метка для телепортации на остров, фракции EMS/WN/GOV лишены её. Отделение LSCSD в Сэнди-Шорс тоже не имеет точки телепорта. Каждая фракции телепортируется в одну точку на острове, в этой же точке можно вернуться обратно. Вы не сможете телепортироваться с точки другой фракции. На острове, вблизи особняка и на его территории, можно через планшет заспавнить транспорт SANG, с которым может взаимодействовать любая государственная силовая фракция. Также SANG имеет склад на Кайо-Перико, он аналогичен тому что на военной базе.`n- .сирена - Вышку можно взломать, не будет обновляться статус контроля точек в течение 10 минут. Для взлома нужен Программатор ЭБУ. Взлом происходит в мини-игре. После удачного взлома, на мини карте не будет отображаться статус захвата точек для SANG в течение 10 минут. После неудачного взлома, сразу срабатывает сирена. SANG могут восстановить работу вышки нажав 'Е' на метке вышки.`n- .маяк - Маячки могут выпасть с AirDrop или же при ограблении 24/7. Шансы выпадения у всех маячков разный.`n`nОграбление Бизнеса:`n- .бизограб - Чтобы ограбить бизнес, Вам нужно: одеть маску, приобрести оружие и, придя в магазин в составе от 2 человек, навестись на NPC (продавца) оружием, грабить может только один человек.`n- .банк - Чтобы начать ограбление Банка, Вам нужно позвонить по номеру 28121903. Для этого надо состоять в криминальной организации и находится рядом с банком (минимальное ограничение - 4 человека). Для начала ограбления требуется План банка, который выпадает с AirDrop или при ограблении бизнесов. Каждая организация может грабить банк 1 раз в день. После того, как ограбление началось и банк получил красную иконку, надо прицелиться в NPC и заполнить шкалу запугивания. Дальше будет хранилище, что бы открыть дверь, нужно пройти мини-игру со взломом. Для этого нужен Программатор ЭБУ. Далее идет 2-я дверь. Для ее взлома необходима Ключ карта Fleeca либо Термитная установка. Ключ карта Fleeca выпадает с NPC при ограблении бизнесов, или на AirDrop. Термитная установка продается у пиротехника. С ее помощью дверь открывается за 2 минуты.`n- .банк2 - В хранилище есть ячейки, для их взлома необходима Дрель 1500w. Дрель крафтится у криминальных организаций и выпадает при смерти. После успешного прохождения мини-игры по взлому ячейки на пол падает награда.`n- .биз - Чтобы узнать, какие бизнесы можно ограбить в данный момент, позвоните по номеру 28121969.
return
;===================================================================================
Fuctional:
    MsgBox, 8192, Описание "Функционал", Банк:`n- .пинкод - Чтобы сменить PIN-код, Вам нужно зайти в любой банк, нажать Смена PIN-кода -> Восстановить PIN-код. После чего, Вам на почту придет письмо с кодом.`n- .карта - На сервере есть 3 вида банковских карт: Standart, Premium, VIP. Standart карта стоит в обслуживании 500$ в месяц, снятия и переводы без комиссии до 500.000$ после превышения месечного лимита комиссия на вывод 5 процентов (Максимум 20.000$), на перевод 4 процента (Максимум 20.000$), кэшбек в магазинах отсутствует. Premium карта стоит в обслуживании 25.000$ в месяц, снятия и переводы без комиссии до 2.500.000$ после превышения месечного лимита комиссия на вывод 4 процента (Максимум 15.000$), на перевод 3 процента (Максимум 15.000$), кэшбек в магазинах 1 процент, лимит кэшбека на одну операцию до 2.500$, месечный лимит кэшбека 50.000$. VIP карта стоит в обслуживании 75.000$ в месяц, снятия и переводы без комиссии до 20.000.000$ после превышения месечного лимита комиссия на вывод 3 процента (Максимум 20.000$), на перевод 2.5 процента (Максимум 20.000$), кэшбек в магазинах 3 процента, лимит кэшбека на одну операцию до 10.000$, месечный лимит кэшбека 150.000$. Деньги за обслуживание и лимиты снимаются каждое 1 число нового месяца.`n`n---Гангейм:---`n- .лобби - Пользовательская игра - это игра, созданная Вами, для друзей или же обычных игроков, все правила настраиваете именно Вы. Для того, что бы начать нужно: Дать название своему лобби (графа 'Название лобби'), выбрать один из трёх доступных режимов (Гонка вооружений / Бой на смерть / Захват флага), и выбрать одну из карт. Далее Вы сможете установить пароль, если же не хотите видеть лишних игроков в своей игре. После всех первичных настроек Вам откроются дополнительные: Требование для победы, оружие, время суток, одежда (если выбрать 'Нет' игрок временно сменит одежду в матче), погодные условия, авто-баланс команд (в случае захвата флага) и др. За создание лобби нужно будет заплатить некоторую сумму игровой валюты.`n- .флаг - Захват флага это командный режим боя, в котором Вы сможете противостоять своим оппонентам в равных условиях. В этом режиме Вы можете поднимать оружие с земли, а также покупать снаряжение на заработанные во время матча деньги, для этого нажмите B на одной из захваченных точек либо спавне. Матч закончится, как только одна из команд потеряет все очки, скорость их потери / накопления зависит от количества захваченных, Вашей командой, точек.`n`n---Разное:---`n- .гпс - Вам нужно нажать F3 и выбрать цель прибытия. Маршрут можно будет отменить повторно нажав F3.`n- .аним - Остановите анимацию. X > Остановить анимацию.`n- .майки - Чтобы купить майку под верхнюю одежду, Вам нужно сначала купить элемент верхней одежды, например, пиджак. После этого вам будут доступны все майки, которые подходят под нее в соответствующем разделе магазина.`n- .дрон - Существует 3 вида дронов: гражданский, полицейский, и дрон-сканер. Гражданский дрон не имеет никаких функций кроме полета, полицейский дрон обладает тепловизором и ночным видением, а дрон-сканер сканирует местность в радиусе 100 метров и показывает местонахождение людей в этой области на карте (метки видят все игроки, которые находятся в одной группе с пилотом дрона). Управление: Навигация - 'W/A/S/D'. Спуск - 'Shift'. Подъем - 'Space'. Тепловизор / ПНВ / Сканирование - 'Е'.`n`n---МаркетПлейс:---`n- .тестдрайв - Зайдите в интерьер маркетплейса и нажмите Е, далее выберите категорию 'Транспорт', кликните по интересующему авто и нажмите синюю кнопку 'Тест-драйв'.`n- .мпсклад - Существует основное здание маркетплейса и пункты выдачи, обозначенные желтыми гаражами на карте. Купленные вещи можно забрать в любом из этих мест, нажав Е и переместив предметы со склада маркетплейса в инвентарь / багажник.`n- .маркп - Чтобы выставить предмет на маркетплейс, Вам не обходимо положить его на склад на любом пункте выдачи. Далее заходите в приложение маркетплейса через планшет. Справа вверху нажимаете кнопку 'Создать'.`n- .склад - Вам нужно положить предмет на склад хранения, сделать это можно на любом пункте выдачи, затем создать объявление.`n- .кости - Чтобы играть в кости, Вам нужно купить их в любом 24/7. После того как Вы купили кости, подойтите к игроку и нажмите G > Предложить бросить кости.`n- .модел - Пункт 'Прогрузка моделей' отвечает за быстроту прогрузки текстур при приближении к ним.`n- .лоу - Пункт 'Режим низкого качества' в F2 > Настройки > Дополнительно. Она отключает любую синхронизацию одежды (кроме фракционной), а также уменьшает дистанцию прогрузки всех авто и игроков, тем самым уменьшая нагрузку видеопамяти.`n- .асис - F2 -> Настройки -> GPS Ассистент.`n- .чат - Настроить чат Вы сможете в F2 > Настройки > Игровой чат. Там Вы сможете выставить дату и время у СМС, тип шрифта, установить тем или задний фон, задать размер / межстрочечный интервал и многое другое.
return
;===================================================================================
Repjb:
    MsgBox, 8192, Описание "Репорт жалобы", - .откл - Недостаточно доказательств для выдачи наказания, так как предоставлена не полная запись ситуации. Можете оставить жалобу на игрока на форуме, приложив полную запись ситуации с указанием тайм-кодов.`n- .форум - В данный момент на сервере большая нагрузка из-за количества обращений, оставьте, пожалуйста, Вашу жалобу на форуме. Спасибо за понимание.`n- .суета - Мы не рассматриваем жалобы в обращениях, длина которых составляет более минуты. Вы можете оставить жалобу на игрока на форуме приложив данное видео и указать тайм-коды нарушений.`n- .начало - В жалобе отказано. Данных материалов недостаточно для выявления всей ситуации. Вы можете оформить жалобу на игрока на форуме с полной ситуацией.`n- .рж - Сделайте название видео по форме подачи: Ваш static, static нарушителя(ей), а так же дата и время нарушения.
return
;===================================================================================
Otv:
    MsgBox, 8192, Описание "Ответы на репорт", - .актуал - Обращение неактивно более двух минут, вынужден его закрыть. Если же у Вас есть не решенный вопрос / проблема - создайте новое и ожидайте ответа.`n- .неактуал - Вижу, неактуально. Могу закрывать обращение?`n- .суд - Администрация не отвечает и не консультирует по вопросам законодательства. Вы можете узнать данную информацию у других игроков либо найти ее самостоятельно на форуме в разделе законодательной базы нашего сервера.`n- .отв - Ответил Вам по этому вопросу, прочитайте сообщения Выше. Если у Вас более нет никаких вопросов, я закрою обращение.`n- .невлад - Не обладаем данной информацией.`n- .ха - Администрация не телепортирует, не лечит, не чинит, не снимает наручники/стяжки/веревки, не заправляет авто, не предоставляет видео Вашего нарушения или же другого игрока от своего лица, не сообщает информацию об игроках, не выдает игровую валюту, а так же донат валюту.`n- .гд - Администрация не помогает с поиском угнанного авто, ищите транспорт тщательнее по всей площади зоны.`n- .убед - Если же Вы стоите один, Вам необходимо подождать, чтобы администрация убедилась, что никакой RP ситуации с Вами в данный момент не происходит, спасибо за понимание.`n- .стяж -Администрация не снимает просто так веревки / стяжки / наручники. Если около Вас есть игроки, они могут Вам помочь, а именно купить нож или отверки в 24/7.`n- .неуд - Администрация удаляет только взорванный и утопленный транспорт.`n- .нету - Я не вижу Вашего транспорта в воде, возможно он удалился автоматически.`n- .воп - Вопроса более от Вас не увидел, закрываю обращение.`n- .такси - В данной ситуации я могу удалить Ваш транспорт, в дальнейшем Вы можете вызвать такси или призвать транспорт в автосервисе.`n- .ставка - Расчёт ставки происходит в течение неопределённого кол-ва времени. Администрация не управляет расчетом.`n- .промо - При достижении 3 уровня персонажа Вам будет зачислена награда в виде игровой валюты и подписки Majestic Premium.`n- .рп - Извините, но это Role Play процесс, в который администрация не в праве вмешиваться.`n- .жб - Администрация не может выдавать наказания и выносить какие-либо вердикты не видя всей ситуации, а так же её начала соответственно. Если у Вас есть запись данного нарушения - оставьте жалобу на форуме.`n- .адс - Администратор, которого Вы указали - сейчас не в сети. Напишите ему в Discord и узнайте то, что Вам было необходимо.`n- .вода - Приветствую, к сожалению, администрация не достает автомобили из воды.`n- .кредит - Любые финансовые договоры(Займы, кредиты и т.д) игроки совершают на свой страх и риск. Администрация не несет ответственности и не является гарантом сделки.`n- .сделка - Приветствую, администрация не следит за сделками игроков.`n- .погода - К сожалению администрация не контролирует данный процесс. Погода меняется автоматически.`n- .неп - Опишите ситуацию подробнее. Количество символов неограничено, Вы можете полностью расписать суть обращения тут. `n- .неувид - Не увидел нарушений.`n- .капт - Администрация не телепортирует, не лечит, не поднимает игроков перед каптом и после него, обратитесь к своим кураторам фракции в дискорд.
return
;===================================================================================
Bags:
    MsgBox, 8192, Описание "Баги и решение", - .колесо - жидайте, я телепортирую Вас к боту, Вам нужно будет нажать "E" чтобы Ваш персонаж разбагался.`n- .фидбек - Если у Вас произошел баг, Вы можете сообщить о нем в официальном Discord'e Majestic RP в канале "Сообщить о баге".`n- .багмини - Проверьте, включена ли мини-карта в настройках F2. Отключите сверхширокий режим в настройках F2 и полностью перезапустите игру. Когда Вы находитесь в игре, вам нужно войти в игровое меню, нажав клавишу "ESC". В игровом меню с помощью стрелок влево и вправо перейдите к пункту «Настройки», затем нажмите клавишу «Ввод». Перейдите в строку «Видео» в настройках и активируйте его, нажав клавишу «Enter». В разделе «Видео» установите значение «Вкл.» для верхнего элемента напротив строки «Радар».`n- .п - Приятной игры.`n- .зап - Если Вы забагались (не можете двигаться или не можете ехать на своем авто), Вам необходимо перезайти в игру, в курсе о данной проблеме, она уже передана разработчикам.`n- .почта - Если Вы не можете сдать посылку на почте, Вам необходимо уволится с работы и устроится по новой у NPC, это связано с тем, что дом забагался. В курсе о данном баге, уже передали разработчикам, когда его исправят мы не знаем. Приносим свои извинения за предоставленные неудобства.`n- .багж - К сожалению данное животное забагалось, попробуйте пожалуйста с другим. Приносим свои извинения за предоставленные неудобства.`n- .как - Каким образом Вы забагались или забагался Ваш авто? Распишите, чтобы понимать, с чем Вам помогать.`n- .манибек - Если у Вас произошел баг и у Вас есть видеозапись, Вы можете написать в тех. раздел на форуме, чтобы вам компенсировали утрату.`n- .багказ - Попробуйте пожалуйста перезайти в игру. Так же данная проблема может быть из-за установленных дополнительных модификации (редукс).`n- .баг - Знаем о данной проблеме, она уже передана разработчикам. Когда её решат у нас информации нет.`n- .багвойс - К сожалению, починить голосовой чат находясь на сервере, невозможно. Вам стоит перезайти на сервер, приносим извинения за предоставленные неудобства.`n- .багзз - Чтобы восстановить прежнюю скорость, попробуйте заехать в зеленую зону и выехать из нее.`n- .коинтайм - Это визуальный баг таймера, часы идут и коины вам начислят по истечению времени.`n- .багинв - Если у Вас забагалось окно модификаций, попробуйте переместить оружие в другую ячейку инвентаря или перевернуть.`n- .багреп - Вам необходимо оформить баг-репорт в официальном discord канале Majestic RP.`n- .багказ2 - Это баг, сейчас я Вас телепортирую ко входу, не входите в казино заново, Вам нужно перезайти в игру.`n- .тех - С таким вопросом Вам стоит обратиться в техническую поддержку на форуме Majestic RP, игровая администрация не может Вам помочь в этой ситуации.`n- .техдс - Напишите техническим помощникам в разделе дискорда "Помощь по игре" - https://discord.gg/majestic`n- .аут - Для подключения "Google Authenticator" Вам нужно в меню выбора персонажа открыть раздел настроек.`n- .багснеж - Если вы не можете избавиться от снега, попробуйте полность перезайти в игру, убийство и поднятие игрока не помогает.`n- .багбп - Это визуальный баг. Вам нужно полностью перезайти в игру.`n- .офдс - https://discord.com/invite/majestic
return
;===================================================================================
Otv2:
    MsgBox, 8192, Описание "Ответы на репорты", - .лопата - Лопату Вы можете купить у NPC механика на рынке.`n- .ворк - Вам нужно нажать F3 > Работа и выбрать любую работу.`n- .рыба - Вам нужно приехать один из рынков и продать рыбу соответствующему NPC.`n- .рын - Рынок находится в Лос-Сантосе, Сэнди-Шорс и Палето-Бей.`n- .оружрын - Боту на рынке можно сдать оружие только с 0 процентов прочности.`n- .ганлиц - Получить лицензию на оружие можно в LSPD или LSCSD.`n- .рыблиц - Получить лицензию на рыбалку Вы можете в Мэрии.`n- .коп - Обратитесь к сотрудникам полиции. Вы можете вызвать их через телефон.`n- .слух - Функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается блокировкой. Отключить ее можно в меню F2 - Настройки.`n- .выборы - Выборы активны с 10:00 - 10:00 по Московскому времени. Проголосовать может каждый от 3-го уровня игрового персонажа, по принципу один голос на один аккаунт. Голосование проходит в левом крыле Мэрии (На карте флаг USA).`n- .имя - Ваша Имя / Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать обращение повторно, если Ваш ник будет соответствовать правилам сервера, то Вас выпустят.`n- .смендим - Поменял Вам измерение.`n- .стиль - Чтобы поменять стиль походки, Вам необходимо нажать F2 > Настройки > Стиль походки.`n- .не - Не увидел нарушения от игрока. Если у Вас есть доказательства нарушения, Вы можете оформить жалобу на игрока на форуме.`n- .наказан - Игрок наказан.`n- .уд - Прийдите на точку вашего транспорта, чтобы я смог его удалить.`n- .адх - По поводу наказания обратитесь в личные сообщения Discord'a к администратору, который его выдал.`n- .карта2 - Чтобы узнать номер счета банковской карты, Вам необходимо открыть инвентарь и навестись на карту мышкой.`n- .ф6 - Нажмите F6 несколько раз.`n- .коины - При достижении 5-го уровня: 500 MC, при достижении 10-го уровня: 1000 MC, при достижении 15-го уровня: 2000 MC, при достижении 20-го уровня: 3000 MC, при достижении 25-го уровня: 4000 MC, при достижении 30-го уровня: 5000 MC. Каждый следующий уровень после 30-го Вы будете получать по 1500 MC за уровень.`n- .ехп - Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2 - Персонаж - Основное.`n- .зп - Чтобы начислялся PayDay, Вам нужно иметь свою банковскую карту и быть уволенным со всех работ.`n- .сид - Укажите static ID игрока, с которым у Вас происходил RP процесс.`n- .ид - Укажите, пожалуйста, ID нарушителя.`n- .увы - Увы, нет.`n- .путнов - Всю информацию (команды/о фракциях, работах и так далее) можно узнать на форуме Majestic Wiki - https://wiki.majestic-rp.ru`n- .увал -К сожалению, ничем не можем помочь. Дождитесь своего лидера/заместителей или свяжитесь обратитесь к кураторам в Discord канале Вашей фракции.`n- .офф - Прекратите оффтопить в обращении или получите наказание за помеху работе администрации.`n- .урп - Данную информацию Вы можете получить при взаимодействии с другими игроками / самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем.`n- .релог - Попробуйте перезайти в игру, к сожалению, ничем не могу Вам помочь.`n- .функ - Данный функционал временно недоступен, как только всё исправят об этом сообщат в канале "change-log".`n- .фун - Данный функционал не предусмотрен сервером.`n- .новость - Позвоните или придите лично в Weazel News.`n- .нов - Следите за новостями сервера в официальном Discord канале проекта.`n- .краш - Укажите статический ID гос. сотрудника с которым происходило RP. Если с моменты вылета прошло много времени, Вам стоит загрузить видео краша, если таковое имеется. Если отсуствует видеозапись вылета игры, то мы не можем выпустить Вас.`n- .хз - Не обладаем данной информацией.`n- .хз2 - Не обладаем данной информацией. Следите за новостями.`n- .бп - Данную информацию Вы можете узнать в F2 > FAQ > Сезонный пропуск.`n- .сеть - Данный игрок не в сети.`n- .неви - Вы не на сервере, закрываю обращение.`n- .нагрузка - Сейчас большая нагрузка на сервере оставьте жалобу на Forum. Спасибо за понимание.`n- .анак - Обратитесь в Discord к администратору, который выдал Вам наказание или рассмотрел жалобу.`n- .адз - Напишите администратору в Discord. К сожалению, сейчас он занят другим делом.`n- .кпт - Вам необходимо открыть планшет фракции и перейти в раздел каптов, после чего выбрать нужный Вам квадрат и установить необходимые параметры, а так же выбрать участников.
return
;===================================================================================
MemoBlock:
    MsgBox, 8192, Описание "𝐌𝐞𝐦𝐨", Скилы: `n stamina - выносливость`n strength - сила`n lung_capacity - дыхание`n wheelie_ability - вождение`n flying_ability - полет`n shooting_ability - стрельба`n stealth_ability - скрытность`n`n builder - Строитель`n butcher - Мясник`n trucker - Дальнобойщик`n fishing - Рыбалка`n busdriver - Водитель автобуса`n moneycollector - Инкассатор`n vineyard - Виноградник`n lumberjack - Лесоруб`n garbagecollector - Мусорщик`n farmer - Фермер`n burger - Повар`n mushroomer - Грибник`n gopostal - почтальон`n`n gangjob - Гетто закладчик`n mafiajob - Мафия закладчик`n bikerjob - Байкер закладчик`n hijacker - Угонщик`n`nЛицензии:`n drived - Легковой транспорт`n drivem - Мотоциклы`n CDLA - Тягачи и моногрузовики`n CDLB - Пикапы и грузовики`n CDWL - Оружие`n FH - Охота и рыбалка`n Business - Бизнесы`n`nЭлементы амфитеатра:`n ID 0 - Одна стойка для выступлений`n ID 1 - Две стойки для дебатов`n ID 2 - Три стойки для дебатов`n ID 3 - Четыре стойки для дебатов`n ID 4 - Американские флаги вдоль и на сцене`n ID 5 - Камеры на сцене`n ID 6 - Стол с креслами и баннерами на сцене для конкурса талантов`n
return
;===================================================================================
Change:
    MsgBox, 8192, Обновления, от 30.05.2026`n`n- Минимизирован интерфейс`n- Обновлены ответы (пунктуация и грамматика)`n- Убраны неактуальные разделы вроде памятки по AirDrop`n- Добавлена кнопка обновлений, через которую можно обновить биндер до актуализированной мною версии`n`nЕсли где-то увидели ошибку или хотите предложить что-то своё (мне очень интересно) - ds: sedxtive
return
;===================================================================================
UpdateBinder:

VersionURL := "https://raw.githubusercontent.com/qxxnt/Binder/refs/heads/main/version.txt"
ScriptURL := "https://raw.githubusercontent.com/qxxnt/Binder/refs/heads/main/Majestic%20Admin%20Binder.ahk"

TempVersion := A_Temp "\binder_version.txt"

URLDownloadToFile, %VersionURL%, %TempVersion%

if !FileExist(TempVersion)
{
    MsgBox, 16, Ошибка, Не удалось проверить обновления.
    return
}

FileRead, RemoteVersion, %TempVersion%
RemoteVersion := Trim(RemoteVersion)

if (RemoteVersion = CurrentVersion)
{
    MsgBox, 64, Обновление, У вас установлена последняя версия.
    return
}

MsgBox, 4, Обновление, Найдена версия %RemoteVersion%. Установить?
IfMsgBox No
    return

TempScript := A_Temp "\binder_update.ahk"

URLDownloadToFile, %ScriptURL%, %TempScript%

if !FileExist(TempScript)
{
    MsgBox, 16, Ошибка, Не удалось скачать обновление.
    return
}

BatFile := A_Temp "\binder_update.bat"

FileDelete, %BatFile%

FileAppend,
(
@echo off
ping 127.0.0.1 -n 3 > nul
copy /Y "%TempScript%" "%A_ScriptFullPath%"
start "" "%A_ScriptFullPath%"
), %BatFile%

Run, %BatFile%
ExitApp

return
;===================================================================================
