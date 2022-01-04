; This script was created using Pulover's Macro Creator
; www.macrocreator.com

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


F7::
Esperar:
Loop
{
    /*
    A cada 2 minutos, verifica a tela do jogo. São 5 loops
    */
    Loop, 5
    {
        Sleep, 120000  ; Aguardar entre 20 e 50 min
        /*
        Verifica se passou de fase
        */
        Loop, 100
        {
            CoordMode, Pixel, Window
            ImageSearch, FoundX, FoundY, 592, 558, 815, 641, C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\NEW MAP.png
        }
        If (ErrorLevel = 0)
        {
            Sleep, 1000
            Click, 694, 602 Left, 1
            Sleep, 10
            Sleep, 5000
        }
        /*
        Verifica se o jogo deslogou
        */
        Loop, 100
        {
            CoordMode, Pixel, Window
            ImageSearch, FoundX, FoundY, 429, 338, 971, 452, C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\Screen_20211230162746.png
        }
        If (ErrorLevel = 0)
        {
            Sleep, 2000
            Click, 704, 517 Left, 1
            Sleep, 10
            Sleep, 20000
            Gosub, AtualizarPag
        }
        /*
        Verifica se connect wallet está aparecendo, se sim, vai pra macro AtualizarPag
        */
        Loop, 100
        {
            CoordMode, Pixel, Window
            ImageSearch, FoundX, FoundY, 534, 514, 869, 661, C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\CONNECT WALLET.png
        }
        If (ErrorLevel = 0)
        {
            Sleep, 1000
            Goto, AtualizarPag
        }
        /*
        Verifica se notificação do win zip aparece kk
        */
        Loop, 50
        {
            CoordMode, Pixel, Window
            ImageSearch, FoundX, FoundY, 824, 460, 1195, 544, C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\lixo.png
        }
        If (ErrorLevel = 0)
        {
            Click, 1190, 462 Left, 1
            Sleep, 10
        }
        Sleep, 1000
    }
    Sleep, 100
    /*
    A cada 10-12 minutos, manda os verdes trabalharem
    */
    Goto, MandarTrabalhar
}
Return

F6::
MandarTrabalhar:
/*
Na tela do jogo, procurar botão voltar verde
*/
Loop, 100
{
    CoordMode, Pixel, Window
    ImageSearch, FoundX, FoundY, 231, 114, 308, 177, C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\Voltar verde.png
}
Until ErrorLevel = 0
If (ErrorLevel = 0)
{
    Sleep, 2000
    Click, 265, 139 Left, 1
    Sleep, 10
    /*
    Abrir os heroes
    */
    Loop, 100
    {
        CoordMode, Pixel, Window
        ImageSearch, FoundX, FoundY, 1073, 664, 1154, 700, C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\Heroes.png
    }
    If (ErrorLevel = 0)
    {
        Sleep, 500
        Click, 1114, 639 Left, 1
        Sleep, 10
        Sleep, 500
    }
    /*
    Sempre manda pelo menos um trabalhar:
    */
    Sleep, 500
    Click, 621, 303 Left, 1
    Sleep, 10
    /*
    Loop para mandar os verdes trabalharem
    */
    Loop, 2
    {
        ye := 260
        yd := 324
        Loop, 6
        {
            Loop, 50
            {
                CoordMode, Pixel, Window
                PixelSearch, FoundX, FoundY, 480, %ye%, 500, %yd%, 0x789F39, 0, Fast RGB
            }
            If (ErrorLevel = 0)
            {
                Sleep, 1000
                Click, 622, %FoundY% Left, 1
                Sleep, 10
            }
            ye += 64
            yd += 64
        }
        Sleep, 500
        Click, 447, 396, 0
        Sleep, 10
        Sleep, 500
        Loop, 30
        {
            Click, WheelDown, 1
            Sleep, 10
        }
    }
    Sleep, 1000
    /*
    Fechar janela dos heroes
    */
    Loop, 100
    {
        CoordMode, Pixel, Window
        ImageSearch, FoundX, FoundY, 739, 199, 786, 247, C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\X.png
        CenterImgSrchCoords("C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\X.png", FoundX, FoundY)
    }
    Until ErrorLevel = 0
    If (ErrorLevel = 0)
    {
        Click, 759, 221 Left, 1
        Sleep, 10
    }
    Sleep, 1500
    /*
    Voltar para o treasure hunt
    */
    Loop
    {
        CoordMode, Pixel, Window
        ImageSearch, FoundX, FoundY, 592, 259, 835, 572, C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\Treasure Hunt.png
    }
    Until ErrorLevel = 0
    If (ErrorLevel = 0)
    {
        Click, 714, 405 Left, 1
        Sleep, 10
        Sleep, 1000
    }
}
Goto, Esperar
Return

F5::
AtualizarPag:
/*
Atualizar página
*/
Loop
{
    CoordMode, Pixel, Window
    ImageSearch, FoundX, FoundY, 79, 41, 112, 77, C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\Refresh.png
    CenterImgSrchCoords("C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\Refresh.png", FoundX, FoundY)
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY% Left, 1
}
Until ErrorLevel = 0
Sleep, 1000
Click, 102, 143, 0
Sleep, 10
/*
Conectar wallet
*/
Loop, 1000
{
    CoordMode, Pixel, Window
    ImageSearch, FoundX, FoundY, 550, 527, 853, 655, C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\CONNECT WALLET.png  ; Conectar wallet
}
If (ErrorLevel = 0)
{
    Sleep, 5000
    Click, 700, 589 Left, 1
    Sleep, 10
    /*
    Aguardar janela do meta mask abrir
    */
    WinWaitActive, ahk_class Chrome_WidgetWin_1  ; Aguardar janela do meta mask abrir
    Sleep, 333
    Sleep, 2000
    Loop, 50
    {
        CoordMode, Pixel, Window
        ImageSearch, FoundX, FoundY, 992, 499, 1073, 587, C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\lixo.png
    }
    If (ErrorLevel = 0)
    {
        Click, 1360, 499 Left, 1
        Sleep, 10
    }
    /*
    Logar no meta mask
    */
    Loop, 500
    {
        CoordMode, Pixel, Window
        ImageSearch, SignX, SignY, 182, 523, 334, 597, C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\Sign Meta Mask.png
    }
    If (ErrorLevel = 0)
    {
        Click, %SignX%, %SignY% Left, 1
        Sleep, 10
    }
    Else
    {
        Goto, AtualizarPag
    }
    /*
    Entrar no treasure hunt (tela do jogo)
    */
    Loop, 1000
    {
        CoordMode, Pixel, Window
        ImageSearch, FoundX, FoundY, 595, 262, 833, 572, C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\Treasure Hunt.png
        CenterImgSrchCoords("C:\Users\Arthur\AppData\Roaming\MacroCreator\Screenshots\Treasure Hunt.png", FoundX, FoundY)  ; Entrar no treasure hunt (tela do jogo)
    }
    If (ErrorLevel = 0)
    {
        Sleep, 2000
        Click, 709, 407 Left, 1
        Sleep, 10
    }
    Else
    {
        Goto, AtualizarPag
    }
    Goto, MandarTrabalhar
}
Else
{
    Goto, AtualizarPag
}
Return


CenterImgSrchCoords(File, ByRef CoordX, ByRef CoordY)
{
	static LoadedPic
	LastEL := ErrorLevel

	Gui, Pict:Add, Pic, vLoadedPic, % RegExReplace(File, "^(\*\w+\s)+")
	GuiControlGet, LoadedPic, Pict:Pos
	Gui, Pict:Destroy
	CoordX += LoadedPicW // 2
	CoordY += LoadedPicH // 2
	ErrorLevel := LastEL
}
