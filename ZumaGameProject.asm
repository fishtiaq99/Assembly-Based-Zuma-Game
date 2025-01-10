INCLUDE Irvine32.inc
includelib Winmm.lib

PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD

.data
    ;SOUNDS
    deviceConnect BYTE "DeviceConnect",0
    death db  "C:/Users/fisht/OneDrive/Desktop/COAL_PROJECT/Audio.wav",0

    filename BYTE "example.txt", 0       ; File name with null-terminator
    dataToWrite BYTE "Hello, World!", 0  ; Properly null-terminated string
    bytesWritten DWORD ?                 ; Number of bytes written
    hFile DWORD ?  



ZUMA_DISPLAY     db '                         _______ ___    ___   _____ ______   _______       ',13,10          
               db '                                  |\____  |\  \  |\  \|\   _ \  _   \|\   __  \     ',13,10
               db '                                   `-- // / \  \ \ \  \ \  \\\__\ \  \ \  \|\  \    ',13,10
               db '                                      // / \ \  \ \ \  \ \  \\|__| \  \ \   __  \   ',13,10
               db '                                     // /___\ \  \_\_\  \ \  \    \ \  \ \  \ \  \  ',13,10
               db '                                    //______\\ \_________\ \__\    \ \__\ \__\ \__\ ',13,10
               db '                                    ||_______|\|_________|\|__|     \|__|\|__|\|__|',13,10
               db '                                                                                 ',13,10
               db 0                                                      
                                                                      
                                                                      
START             DB '                                               ___ ___ ___ ___ ___   ',13,10
                  DB '                                              / __|_ _| . | . |_ _|  ',13,10
                  DB '                                              \__ \| ||   |   /| |   ',13,10
                  DB '                                              |___/|_||_|_|_\_\|_|   ',13,10
                  DB 0   

INSTRUCTIONS    DB '                                     _ _ _ ___ ___ ___ _ _ ___ ___ _ ___ _ _ ___ ',13,10
                DB '                                    | | \ / __|_ _| . | | |  _|_ _| | . | \ / __|',13,10
                DB '                                    | |   \__ \| ||   |   | |__| || | | |   \__ \',13,10
                DB '                                    |_|_\_|___/|_||_\_`___`___/|_||_`___|_\_|___/',13,10
                DB 0
            
EXITED           DB '                                                  _____  _ _ ___   ',13,10
                 DB '                                                 | __\ \/ | |_ _|  ',13,10
                 DB '                                                 | _| \ \ | || |   ',13,10
                 DB '                                                 |____/\_\|_||_|   ',13,10
                 DB 0
                                           
 POINTER            DB'  <<<<<<<<<<<<<<<<   ',13,10
                    DB 0

pauseScreen         db'                 $$$$$$$\  $$$$$$$$\  $$$$$$\  $$\   $$\ $$\      $$\ $$$$$$$$\ ',13,10
                    db'                 $$  __$$\ $$  _____|$$  __$$\ $$ |  $$ |$$$\    $$$ |$$  _____|',13,10
                    db'                 $$ |  $$ |$$ |      $$ /  \__|$$ |  $$ |$$$$\  $$$$ |$$ |      ',13,10
                    db'                 $$$$$$$  |$$$$$\    \$$$$$$\  $$ |  $$ |$$\$$\$$ $$ |$$$$$\    ',13,10
                    db'                 $$  __$$< $$  __|    \____$$\ $$ |  $$ |$$ \$$$  $$ |$$  __|   ',13,10
                    db'                 $$ |  $$ |$$ |      $$\   $$ |$$ |  $$ |$$ |\$  /$$ |$$ |      ',13,10
                    db'                 $$ |  $$ |$$$$$$$$\ \$$$$$$  |\$$$$$$  |$$ | \_/ $$ |$$$$$$$$\ ',13,10
                    db'                 \__|  \__|\________| \______/  \______/ \__|     \__|\________|',13,10
                    db'                                                                                ',13,10
                    db'                                                                                ',13,10
                    db'                                                                                ',13,10
                    db'                             $$$$$$$$\ $$\   $$\ $$$$$$\ $$$$$$$$\              ',13,10
                    db'                             $$  _____|$$ |  $$ |\_$$  _|\__$$  __|             ',13,10
                    db'                             $$ |      \$$\ $$  |  $$ |     $$ |                ',13,10
                    db'                             $$$$$\     \$$$$  /   $$ |     $$ |                ',13,10
                    db'                             $$  __|    $$  $$<    $$ |     $$ |                ',13,10
                    db'                             $$ |      $$  /\$$\   $$ |     $$ |                ',13,10
                    db'                             $$$$$$$$\ $$ /  $$ |$$$$$$\    $$ |                ',13,10
                    db'                             \________|\__|  \__|\______|   \__|                ',13,10
                    db 0

INSTRUCTIONS_SCREEN      db 'Controls:                                                                                        ',13,10
                              db '                                                                                                 ',13,10
                              db ' 1-Use the (arrow keys) to shoot the balls.                                                ',13,10
                              db '                                                                                                 ',13,10
                              db ' Gameplay:                                                                                       ',13,10
                              db '                                                                                                 ',13,10
                              db ' 1-Match 3 or more balls of the same color to eliminate them.                                    ',13,10
                              db ' 2-Prevent the chain of balls from reaching the X by scoring 100 in time              ',13,10
                              db ' 4-Score points by clearing balls.                                  ',13,10
                              db '                                                                                                 ',13,10
                              db ' Levels:                                                                                        ',13,10
                              db '                                                                                                 ',13,10
                              db ' 1-Level 1: Practice basic ball matching and aim to complete the first level.                   ',13,10
                              db ' 2-Level 2: Power-ups are introduced. These power-ups slow down the ball chain for 5 seconds.    ',13,10
                              db ' 3-Level 3: Bombs are introduced. Bombs destroy 8 balls around the point of impact.             ',13,10
                              db '                                                                                                 ',13,10
                              db ' Power-Ups:                                                                                     ',13,10
                              db '                                                                                                 ',13,10
                              db ' 1-Slow Ball: Activated in Level 2, it slows down the chain for easier targeting.                ',13,10
                              db ' 2-Bombs: Activated in Level 3, bombs clear 8 balls around the impact.                          ',13,10
                              db '                                                                                                 ',13,10
                              db ' Scoring:                                                                                       ',13,10
                              db '                                                                                                 ',13,10
                              db ' 1-Eliminate balls to earn points.                                                              ',13,10
                              db '                                                                                                 ',13,10
                              db ' Game Over:                                                                                     ',13,10
                              db ' 1- You have 3 lives which are displayed on the screen                                   ',13,10
                              db ' 2-If the chain reaches the X, you loose a life.                                            ',13,10
                              db ' 3-If all 3 lives are lost, you loose the game.                                       ',13,10
                              db 0

                               
 gameOverScreen   db'______        ______  _______     _____  _    _ _______ ______                                    ',13,10
                  db'                   / _____)  /\  |  ___ \(_______)   / ___ \| |  | (_______(_____ \                                    ',13,10
                  db'                  | /  ___  /  \ | | _ | |_____     | |   | | |  | |_____   _____) )                                   ',13,10
                  db'                  | | (___)/ /\ \| || || |  ___)    | |   | |\ \/ /|  ___) (_____ (                                    ',13,10
                  db'                  | \____/| |__| | || || | |_____   | |___| | \  / | |_____      | |                                   ',13,10
                  db'                   \_____/|______|_||_||_|_______)   \_____/   \/  |_______)     |_|                                   ',13,10
                  db 0   
                  
gameWinScreen     db'  ______                                  ______          ',13,10
                  db'          \\    //  ||      || ||      ||      ||        || ||      || ||\\     || ',13,10
                  db'           \\  //   ||      || ||      ||      ||        || ||      || || \\    || ',13,10
                  db'            \\//    ||      || ||      ||      ||        || ||      || ||  \\   ||',13,10
                  db'             ||     ||      || ||      ||      ||  //\\  || ||      || ||   \\  || ',13,10
                  db'             ||     ||      || ||      ||      || //  \\ || ||      || ||    \\ || ',13,10
                  db'             ||     ||______|| ||______||      ||//    \\|| ||______|| ||     \\|| ',13,10
                  db 0   

menuSelect db 1

PauseandExitMessage            db'PRESS r TO RESUME  THE GAME',13,10
                               db'PRESS e TO EXIT THE GAME',13,10

ground2 BYTE "*",0

strScore BYTE "Your score is: ",0
score dw 0

strLevel BYTE "Level: ",0
levelNum dw 0

prompt1 db "Enter your name:",0
names db 20 dup (32)
strName db "Name:",0


livesprint db "Lives:",0
lives3 db "$$$",0
lives2 db "$$",0
lives1 db "$",0
lives db 3
atleast1livelost db 0

PlayerX db 12
PlayerY db 60
Player db "&",0

PlayerBulletColor db 1

BulletX db 60
BulletY db 12
BulletActive db 0
direction db ?

;;;;;;;
; Player's starting position (center)
    center_x db 40      ; Column (X)
    center_y db 12      ; Row (Y)


    ; Default character (initial direction)
    current_char db '^'

    ; Colors for the emitter and player
    color_red db 4       ; Red
    color_green db 2     ; Green
    color_yellow db 14   ; Yellow (for fire symbol)
    current_color db 4   ; Default player color (red)
    emitter_color1 db 2  ; Green
    emitter_color2 db 4  ; Red
    fire_color db 14     ; Fire symbol color (Yellow)

    ; Emitter properties
    emitter_symbol db '#'
    emitter_row db 10    ; Two rows above player (fixed row for emitter)
    emitter_col db 1     ; Starting column of the emitter
;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; PATHS LEVEL 1 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
lengthRL db 17
lengthTB db 60
lengthlevel1 db 154 

Path1XFull db 154 dup (?)
Path1YFull db 154 dup (?)

minValue dd 1
maxValue dd 3

lose1X db ?
lose1Y db ?

lose1 db "X",0

level1RX db 5 
level1RY db 90
level1BX db 21
level1BY db 89
level1LX db 21
level1LY db 30
level1TX db 4
level1TY db 30

ball db "O",0
numOfActiveBalls db 0
ballsX db 154 dup (-1)
ballsY db 154 dup (-1)
ballsC db 154 dup (-1)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; PATHS LEVEL 2 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

lengthlevel2 db 250

level2EUX db 3
level2EUY db 84

level2ELX db 2
level2ELY db 83

Path2XFull db 250 dup (?)
Path2YFull db 250 dup (?)

balls2X db 250 dup (-1)
balls2Y db 250 dup (-1)
balls2C db 250 dup (-1)

powerup db 0
powerupcount db 6


.code



main PROC
    INVOKE PlaySound, OFFSET death, NULL, 1
    
    ;MAIN SCREEN
    call DisplayMessage

    ;START MENU
    point1:
        mov dl,70
        mov dh,3
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,1
    jmp start_tab

    point2:
        mov dl,80
        mov dh,12
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,2
    jmp start_tab

    point3:
        mov dl,70
        mov dh,22
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,3
    jmp start_tab


    start_tab:
    call DisplayMenu

    call readchar
    call clrscr
    cmp al,'1'
    je point1
    cmp al,'2'
    je point2
    cmp al,'3'
    je point3
    cmp al,13

    call selection

    startGame:
    
    mov eax,white
    call SetTextColor

;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
mov lives,3
mov levelnum,1
level1fromthetop:
INVOKE PlaySound, OFFSET death, NULL, 1

mov score,0
mov numOfActiveBalls,0

mov ecx,154
mov eax, offset ballsX
mov ebx, offset ballsY
mov edx, offset ballsC

initialize:
mov byte ptr [eax],-1
mov byte ptr[ebx],-1
mov byte ptr[edx],-1
inc eax
inc ebx
inc edx
loop initialize
call clrscr
movzx eax, atleast1livelost
cmp eax,1
je here1

    mov esi, offset Path1XFull
    mov edi, offset Path1YFull
    movzx ecx, lengthRL
    level1Rpath:
        mov dh, level1RX
        mov dl, level1RY 
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        inc level1RX
        loop level1Rpath

    movzx ecx, lengthTB

    level1Bpath:
        mov dh, level1BX
        mov dl, level1BY 
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        dec level1BY
        loop level1Bpath

    movzx ecx, lengthRL
    level1Lpath:
        mov dh, level1LX
        mov dl, level1LY 
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        dec level1LX
        loop level1Lpath


    movzx ecx, lengthTB
    sub ecx,5
    level1Tpath:
        mov dh, level1TX
        mov dl, level1TY 
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        inc level1TY
        loop level1Tpath

here1:
        call printpath1
        pathcompleted:

        

        mov esi,offset ballsC
        mov ecx, lengthof ballsC

        level1balls:
        mov eax, maxValue
        sub eax, minValue
        inc eax
        call RandomRange
        add eax, minValue
        mov [esi], eax
        inc esi
        loop level1balls
        

        ;//////////////////////////////////////
        ;/////////////level1///////////////////
        ;//////////////////////////////////////
        here:
        level1:
        mov ax,score
        cmp ax,100
        je level1end
        call clrscr
        call printpath1
        
        ;call update_emitter
        ;call fire

        inc numOfActiveBalls
        movzx ecx, numOfActiveBalls
        dec ecx
        mov esi, offset ballsX
        add esi, ecx
        mov edi, offset ballsY
        add edi, ecx
        mov eax, offset Path1XFull
        mov ebx, offset Path1YFull
        movzx ecx, numOfActiveBalls
        inner_level1:
            mov dl, byte ptr [eax]
            mov [esi], dl
            mov dl, byte ptr [ebx]
            mov [edi], dl
            inc eax
            inc ebx
            dec esi
            dec edi
        loop inner_level1
        
        call PrintScore
        call DisplayLives
        call PrintLevel

        mov esi, offset ballsX
        mov edi, offset ballsY
        mov ecx,154
        mov ebx, offset ballsC

        level1printballs:
            mov dh, byte ptr [esi]
            mov dl, byte ptr [edi]
            mov al,-1
            cmp al,dh
            je out1
                movzx eax,byte ptr [ebx]
                cmp eax, 1
                jne next1
                mov eax,red
                call SetTextColor
                jmp colorhasbeenset
                next1:
                movzx eax,byte ptr [ebx]
                cmp eax, 2
                jne next2
                mov eax,blue
                call SetTextColor
                jmp colorhasbeenset
                mov eax,white 
                call SetTextColor
                next2:
                mov eax,green
                call SetTextColor
                jmp colorhasbeenset
            colorhasbeenset:
            call Gotoxy
            mov edx, OFFSET ball
            call WriteString
            inc esi
            inc edi
            inc ebx
        loop level1printballs
        out1:
        call check_for_key_press
        mov eax,1000
        call Delay

        mov dl, byte ptr [ballsX]
        mov dh, byte ptr [ballsY]


        cmp dl, lose1X
        jne out2
        cmp dh, lose1Y
        je lostlife1
        out2:
        jmp level1
            lostlife1:
            mov atleast1livelost,1
            dec lives
            movzx eax,lives
            cmp eax,0
            je lostgame
            jmp level1fromthetop


    level1end:



;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



mov level1RX, 5 
mov level1RY, 90
mov level1BX, 21
mov level1BY, 89
mov level1LX, 21
mov level1LY, 30
mov level1TX, 4
mov level1TY, 30

mov levelnum,2
mov lives,3
level2fromthetop:
INVOKE PlaySound, OFFSET death, NULL, 1

mov score,0
mov numOfActiveBalls,0

mov ecx,250
mov eax, offset balls2X
mov ebx, offset balls2Y
mov edx, offset balls2C

initialize2:
mov byte ptr [eax],-1
mov byte ptr[ebx],-1
mov byte ptr[edx],-1
inc eax
inc ebx
inc edx
loop initialize2

call clrscr
movzx eax, atleast1livelost
cmp eax,1
je l2here1

    mov esi, offset Path2XFull
    mov edi, offset Path2YFull

    movzx ecx, lengthRL
    level2Rpath:
        mov dh, level1RX
        mov dl, level1RY 
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        inc level1RX
        loop level2Rpath

    movzx ecx, lengthTB
    level2Bpath:
        mov dh, level1BX
        mov dl, level1BY 
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        dec level1BY
        loop level2Bpath

    movzx ecx, lengthRL
    level2Lpath:
        mov dh, level1LX
        mov dl, level1LY 
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        dec level1LX
        loop level2Lpath


    movzx ecx, lengthTB
    sub ecx,5
    level2Tpath:
        mov dh, level1TX
        mov dl, level1TY 
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        inc level1TY
        loop level2Tpath
    mov level2EUX,3
    mov level2EUY,84
    mov ecx,2

    level2EUXpath:
        mov dh, level2EUX
        mov dl, level2EUY 
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        dec level2EUX
    loop level2EUXpath
   
   mov level2ELX, 2
   mov level2ELY, 83
   movzx ecx, lengthTB

   level2ELXpath:
        mov dh, level2ELX
        mov dl, level2ELY
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        dec level2ELY
    loop level2ELXpath
    ;////////////////////////////////////////////////////////////////// extend path
l2here1:
        call printpath2
        pathcompleted2:

        

        mov esi,offset balls2C
        mov ecx, lengthof balls2C

        level2balls:
        mov eax, maxValue
        sub eax, minValue
        inc eax
        call RandomRange
        add eax, minValue
        mov [esi], eax
        inc esi
        loop level2balls
        

        ;//////////////////////////////////////
        ;/////////////level2///////////////////
        ;//////////////////////////////////////
        here2:
        level2:
        mov ax,score
        cmp ax,100
        je level2end
        call clrscr
        call printpath2

        inc numOfActiveBalls
        movzx ecx, numOfActiveBalls
        dec ecx
        mov esi, offset balls2X
        add esi, ecx
        mov edi, offset balls2Y
        add edi, ecx
        mov eax, offset Path2XFull
        mov ebx, offset Path2YFull
        movzx ecx, numOfActiveBalls
        inner_level2:
            mov dl, byte ptr [eax]
            mov [esi], dl
            mov dl, byte ptr [ebx]
            mov [edi], dl
            inc eax
            inc ebx
            dec esi
            dec edi
        loop inner_level2
        
        inc powerupcount
        call PrintScore
        call DisplayLives
        call PrintLevel
        call CheckPowerup

        mov esi, offset balls2X
        mov edi, offset balls2Y
        mov ecx,250
        mov ebx, offset balls2C

        level2printballs:
            mov dh, byte ptr [esi]
            mov dl, byte ptr [edi]
            mov al,-1
            cmp al,dh
            je out22
                movzx eax,byte ptr [ebx]
                cmp eax, 1
                jne next11
                mov eax,red
                call SetTextColor
                jmp colorhasbeenset2
                next11:
                movzx eax,byte ptr [ebx]
                cmp eax, 2
                jne next22
                mov eax,blue
                call SetTextColor
                jmp colorhasbeenset2
                mov eax,white 
                call SetTextColor
                next22:
                mov eax,green
                call SetTextColor
                jmp colorhasbeenset2
            colorhasbeenset2:
            call Gotoxy
            mov edx, OFFSET ball
            call WriteString
            inc esi
            inc edi
            inc ebx
        loop level2printballs
        out22:
        call check_for_key_press2

        call Delay2

        mov dl, byte ptr [balls2X]
        mov dh, byte ptr [balls2Y]


        cmp dl, lose1X
        jne out23
        cmp dh, lose1Y
        je lostlife2
        out23:
        jmp level2
            lostlife2:
            mov atleast1livelost,1
            dec lives
            movzx eax,lives
            cmp eax,0
            je lostgame
            jmp level2fromthetop

    level2end:

    ;/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    
mov level1RX, 5 
mov level1RY, 90
mov level1BX, 21
mov level1BY, 89
mov level1LX, 21
mov level1LY, 30
mov level1TX, 4
mov level1TY, 30

mov levelnum,3
mov lives,3
level3fromthetop:
INVOKE PlaySound, OFFSET death, NULL, 1

mov score,0
mov numOfActiveBalls,0

mov ecx,154
mov eax, offset ballsX
mov ebx, offset ballsY
mov edx, offset ballsC

initialize3:
mov byte ptr [eax],-1
mov byte ptr[ebx],-1
mov byte ptr[edx],-1
inc eax
inc ebx
inc edx
loop initialize3

call clrscr
movzx eax, atleast1livelost
cmp eax,1
je l3here1

    mov esi, offset Path1XFull
    mov edi, offset Path1YFull

    movzx ecx, lengthRL
    sub ecx,5
    level3Rpath:
        mov dh, level1RX
        mov dl, level1RY 
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        inc level1RX
        loop level3Rpath

    movzx ecx, lengthRL
    sub ecx,5
    level3Lpath:
        mov dh, level1LX
        mov dl, level1LY 
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        dec level1LX
        loop level3Lpath

    movzx ecx, lengthTB
    sub ecx,5
    level3Bpath:
        mov dh, level1BX
        mov dl, level1BY 
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        dec level1BY
        loop level3Bpath

    movzx ecx, lengthTB
    sub ecx,5
    level3Tpath:
        mov dh, level1TX
        mov dl, level1TY 
        mov [esi],dh
        mov [edi],dl
        inc esi
        inc edi
        inc level1TY
        loop level3Tpath

l3here1:
        call printpath1
        pathcompleted3:

        

        mov esi,offset ballsC
        mov ecx, lengthof ballsC

        level3balls:
        mov eax, maxValue
        sub eax, minValue
        inc eax
        call RandomRange
        add eax, minValue
        mov [esi], eax
        inc esi
        loop level3balls
        

        ;//////////////////////////////////////
        ;/////////////level3///////////////////
        ;//////////////////////////////////////
        here3:
        level3:
        mov ax,score
        cmp ax,100
        je level3end
        call clrscr
        call printpath1

        inc numOfActiveBalls
        movzx ecx, numOfActiveBalls
        dec ecx
        mov esi, offset ballsX
        add esi, ecx
        mov edi, offset ballsY
        add edi, ecx
        mov eax, offset Path1XFull
        mov ebx, offset Path1YFull
        movzx ecx, numOfActiveBalls
        inner_level3:
            mov dl, byte ptr [eax]
            mov [esi], dl
            mov dl, byte ptr [ebx]
            mov [edi], dl
            inc eax
            inc ebx
            dec esi
            dec edi
        loop inner_level3
        
        inc powerupcount
        call PrintScore
        call DisplayLives
        call PrintLevel
        call CheckPowerup

        mov esi, offset ballsX
        mov edi, offset ballsY
        mov ecx,154
        mov ebx, offset ballsC

        level3printballs:
            mov dh, byte ptr [esi]
            mov dl, byte ptr [edi]
            mov al,-1
            cmp al,dh
            je oout23
                movzx eax,byte ptr [ebx]
                cmp eax, 1
                jne next13
                mov eax,red
                call SetTextColor
                jmp colorhasbeenset3
                next13:
                movzx eax,byte ptr [ebx]
                cmp eax, 2
                jne next23
                mov eax,blue
                call SetTextColor
                jmp colorhasbeenset3
                mov eax,white 
                call SetTextColor
                next23:
                mov eax,green
                call SetTextColor
                jmp colorhasbeenset3
            colorhasbeenset3:
            call Gotoxy
            mov edx, OFFSET ball
            call WriteString
            inc esi
            inc edi
            inc ebx
        loop level3printballs
        oout23:
        call check_for_key_press
        mov eax,500
        call delay

        mov dl, byte ptr [ballsX]
        mov dh, byte ptr [ballsY]


        cmp dl, lose1X
        jne outt23
        cmp dh, lose1Y
        je lostlife3
        outt23:
        jmp level3
            lostlife3:
            mov atleast1livelost,1
            dec lives
            movzx eax,lives
            cmp eax,0
            je lostgame
            jmp level3fromthetop


            

level3end:
call win
exit

lostgame:
call lost
exit


    exit
main ENDP

DisplayLives PROC
    mov eax, white              ; Set text color to white
    call SetTextColor

    mov dl, 110                 ; Set cursor position (column)
    mov dh, 0                   ; Set cursor position (row)
    call gotoxy

    mov edx, OFFSET livesprint  ; Print the "Lives" label
    call WriteString

    movzx eax, lives            ; Load `lives` value into `eax`

    cmp eax, 3                  ; Check if lives == 3
    je printLives3

    cmp eax, 2                  ; Check if lives == 2
    je printLives2

    ; Default case: lives == 1
    mov edx, OFFSET lives1
    call WriteString
    jmp endDisplay

printLives3:
    mov edx, OFFSET lives3
    call WriteString
    jmp endDisplay

printLives2:
    mov edx, OFFSET lives2
    call WriteString

endDisplay:
    ret                         ; Return from procedure
DisplayLives ENDP

PromptAndRead PROC
    mov dh, 0
    mov dl, 0
    mov edx, offset prompt1
    mov ecx, lengthof prompt1
    mov ebx, offset names
    mov esi, 20
    call Gotoxy
    call WriteString
    mov edx, ebx
    mov ecx, esi
    call ReadString
    call ClrScr
    ret
PromptAndRead ENDP


DisplayMessage PROC
    mov dl, 10
    mov dh, 10
    mov eax, green
    call SetTextColor
    call Gotoxy
    mov edx, offset ZUMA_DISPLAY
    call WriteString
    call WaitMsg
    call ClrScr
    ret
DisplayMessage ENDP

InstructionsScreen PROC
    call Clrscr
    mov dl, 0
    mov dh, 0
    call Gotoxy
    mov edx, offset INSTRUCTIONS_SCREEN
    call WriteString
    call WaitMsg
    ret
InstructionsScreen ENDP

DisplayMenu PROC
    mov dl, 0
    mov dh, 1
    call Gotoxy
    mov edx, offset START
    call WriteString

    mov dl, 0
    mov dh, 10
    call Gotoxy
    mov edx, offset INSTRUCTIONS
    call WriteString

    mov dl, 0
    mov dh, 20
    call Gotoxy
    mov edx, offset EXITED
    call WriteString
    ret
DisplayMenu ENDP

selection PROC
    cmp menuSelect,1
    je E
    cmp menuSelect,2
    jne s
    call InstructionsScreen
    jmp E
    s:
    cmp menuSelect,3
    exit
    E:
    ret
selection ENDP

lost PROC
    call clrscr
    mov dl,20
    mov dh,10
    call gotoxy
    mov edx, OFFSET gameOverScreen
    call WriteString
    exit
lost ENDP

win PROC
    call clrscr
    mov dl,20
    mov dh,10
    call gotoxy
    mov edx, OFFSET gamewinScreen
    call WriteString
    exit
win ENDP

PauseGame PROC
    call Clrscr

    ; Display the pause screen message
    mov dl, 30
    mov dh, 20
    mov edx, offset pauseScreen
    call WriteString

    ; Display instructions for resuming or exiting
    mov dl, 30
    mov dh, 30
    mov edx, offset PauseandExitMessage
    call WriteString

wait_for_input:
    ; Wait for user input
    call ReadChar
    cmp al, 'r'           ; Check if 'r' is pressed for resume
    je resume_game
    cmp al, 'e'           ; Check if 'e' is pressed for exit
    je exit_game
    jmp wait_for_input     ; Loop until valid input

resume_game:
    call Clrscr
    ret                   ; Return to main loop or game

exit_game:
    exit                  
PauseGame ENDP



check_for_key_press proc
    call ReadKey         

    cmp ah, 48h          ; Up arrow key
    je up_arrow
    cmp ah, 50h          ; Down arrow key
    je down_arrow
    cmp ah, 4Dh          ; Right arrow key
    je right_arrow
    cmp ah, 4Bh          ; Left arrow key
    je left_arrow
    cmp al, 'p'          ; Pause the game
    jne nn1
    call PauseGame
    nn1:
    cmp al, 'e'          ; Exit the game
    jne nn2
    exit
    nn2:
    ret                  ; If no key matches, return to main loop



up_arrow:
    mov BulletActive,1
    mov direction, 1
    jmp setcolorandfire


down_arrow:
    mov BulletActive,1
    mov direction, 3
    jmp setcolorandfire

right_arrow:
    mov BulletActive,1
    mov direction, 2
    jmp setcolorandfire

left_arrow:
    mov BulletActive,1
    mov direction, 4
    jmp setcolorandfire

no_move:
    ret
setcolorandfire:
    mov al, PlayerBulletColor
    cmp al, 1              ; Check if PlayerBulletColor is 1
    je SetRedColor
    cmp al, 2              ; Check if PlayerBulletColor is 2
    je SetBlueColor
    cmp al, 3              ; Check if PlayerBulletColor is 3
    je SetGreenColor
SetRedColor:
    mov eax, red      ; Red foreground color (standard DOS color code)
    call SetTextColor
    jmp EndColorSetup

SetBlueColor:
    mov eax, blue      ; Blue foreground color
    call SetTextColor
    jmp EndColorSetup

SetGreenColor:
    mov eax, green       ; Green foreground color
    call SetTextColor
    jmp EndColorSetup
EndColorSetup:
    call fire
    ret
check_for_key_press endp



check_for_key_press2 proc
    call ReadKey         

    cmp ah, 48h          ; Up arrow key
    je up_arrow2
    cmp ah, 50h          ; Down arrow key
    je down_arrow2
    cmp ah, 4Dh          ; Right arrow key
    je right_arrow2
    cmp ah, 4Bh          ; Left arrow key
    je left_arrow2
    cmp al, 'p'          ; Pause the game
    jne nn12
    call PauseGame
    nn12:
    cmp al, 'e'          ; Exit the game
    jne nn22
    exit
    nn22:
    ret                  ; If no key matches, return to main loop


up_arrow2:
    mov BulletActive,1
    mov direction, 1
    jmp setcolorandfire2


down_arrow2:
    mov BulletActive,1
    mov direction, 3
    jmp setcolorandfire2

right_arrow2:
    mov BulletActive,1
    mov direction, 2
    jmp setcolorandfire2

left_arrow2:
    mov BulletActive,1
    mov direction, 4
    jmp setcolorandfire2

no_move2:
    ret
setcolorandfire2:
    mov al, PlayerBulletColor
    cmp al, 1              ; Check if PlayerBulletColor is 1
    je SetRedColor2
    cmp al, 2              ; Check if PlayerBulletColor is 2
    je SetBlueColor2
    cmp al, 3              ; Check if PlayerBulletColor is 3
    je SetGreenColor2
SetRedColor2:
    mov eax, red      ; Red foreground color (standard DOS color code)
    call SetTextColor
    jmp EndColorSetup2

SetBlueColor2:
    mov eax, blue      ; Blue foreground color
    call SetTextColor
    jmp EndColorSetup2

SetGreenColor2:
    mov eax, green       ; Green foreground color
    call SetTextColor
    jmp EndColorSetup2
EndColorSetup2:
    call fire2
    ret
check_for_key_press2 endp

draw_emitter proc
    ; Draw the emitter with alternating colors
    push ax
    push cx
    push dx

    mov cx, 80           ; Number of columns (console width)
    mov dl, emitter_col
    mov dh, emitter_row

emitter_loop:
    ; Alternate emitter colors between green and red
    mov al, emitter_color1
    call SetTextColor

    mov al, emitter_symbol
    call Gotoxy
    call WriteChar

    ; Toggle color for the next symbol
    cmp al, emitter_color1
    jne set_green
    mov al, emitter_color2
    jmp next_symbol

set_green:
    mov al, emitter_color1

next_symbol:
    inc dl               ; Move to the next column
    cmp dl, 80           ; Wrap around at the end of the row
    jne emitter_loop
    mov dl, emitter_col  ; Reset column

    pop dx
    pop cx
    pop ax
    ret
draw_emitter endp


print_character proc
    ; Set text color
    mov al, current_color
    call SetTextColor

    ; Move the cursor to the current position
    mov dl, [center_x]
    mov dh, [center_y]
    call Gotoxy

    ; Print the current character
    mov dl, current_char
    call WriteChar
    ret
print_character endp


initialize_screen proc
    ; Draw the emitter at the start
    call draw_emitter
    ; Set the initial player character position
    call print_character
    ret
initialize_screen endp


CheckPowerup PROC
    mov al, powerupcount     ; Load powerupcount into AL
    cmp al, 5                ; Compare powerupcount with 5
    jg DisablePowerup        ; If greater, jump to DisablePowerup

    ret                      ; Return if powerupcount is not greater than 5

DisablePowerup:
    mov powerup, 0           ; Set powerup to 0
    ret                      ; Return from procedure
CheckPowerup ENDP

printpath1 PROC
    mov esi, offset Path1XFull
    mov edi, offset Path1YFull
    mov ecx,154
    mov eax,white
    call SetTextColor
    l:
    mov dh, [esi]
    mov dl, [edi]
    inc esi
    inc edi
    mov bl,0
    cmp bl,dl
    jz E1
    call Gotoxy
    mov edx, OFFSET ground2
    call WriteString
    loop l
    E1:
    sub esi,2
    sub edi,2
    mov dh, [esi]
    mov dl, [edi]
    mov lose1X, dh
    mov lose1Y, dl
    mov eax,red
    call SetTextColor
    call Gotoxy
    mov edx, OFFSET lose1
    call WriteString

    mov eax,0
    mov al, PlayerBulletColor
    mov al, PlayerBulletColor      ; Load PlayerBulletColor into AL
cmp al, 1                      ; Check if PlayerBulletColor is 1
je set_red                     ; Jump to set_red if true

cmp al, 2                      ; Check if PlayerBulletColor is 2
je set_blue                    ; Jump to set_blue if true

cmp al, 3                      ; Check if PlayerBulletColor is 3
je set_green                   ; Jump to set_green if true

jmp end_color_setting          ; Jump to end if none match

set_red:
    mov eax, red            ; Set text color to red (adjust as per your system)
    call SetTextColor          ; Call procedure to set the text color
    jmp end_color_setting      ; Skip other cases

set_blue:
    mov eax, blue              ; Set text color to blue (adjust as per your system)
    call SetTextColor          ; Call procedure to set the text color
    jmp end_color_setting      ; Skip other cases

set_green:
    mov eax, green              ; Set text color to green (adjust as per your system)
    call SetTextColor          ; Call procedure to set the text color
    jmp end_color_setting      ; Skip other cases

end_color_setting:
    mov dh, PlayerX
    mov dl, PlayerY
    call Gotoxy
    mov edx, OFFSET Player
    call WriteString
    ret
printpath1 ENDP


printpath2 PROC
    mov esi, offset Path2XFull
    mov edi, offset Path2YFull
    mov ecx,250
    mov eax,white
    call SetTextColor
    f2:
    mov dh, [esi]
    mov dl, [edi]
    inc esi
    inc edi
    mov bl,0
    cmp bl,dl
    jz F1
    call Gotoxy
    mov edx, OFFSET ground2
    call WriteString
    loop f2
    F1:
    sub esi,2
    sub edi,2
    mov dh, [esi]
    mov dl, [edi]
    mov lose1X, dh
    mov lose1Y, dl
    mov eax,red
    call SetTextColor
    call Gotoxy
    mov edx, OFFSET lose1
    call WriteString

    mov eax,0
    mov al, PlayerBulletColor
    mov al, PlayerBulletColor      ; Load PlayerBulletColor into AL
cmp al, 1                      ; Check if PlayerBulletColor is 1
je set_red2                     ; Jump to set_red if true

cmp al, 2                      ; Check if PlayerBulletColor is 2
je set_blue2                    ; Jump to set_blue if true

cmp al, 3                      ; Check if PlayerBulletColor is 3
je set_green2                   ; Jump to set_green if true

jmp end_color_setting2          ; Jump to end if none match

set_red2:
    mov eax, red            ; Set text color to red (adjust as per your system)
    call SetTextColor          ; Call procedure to set the text color
    jmp end_color_setting2      ; Skip other cases

set_blue2:
    mov eax, blue              ; Set text color to blue (adjust as per your system)
    call SetTextColor          ; Call procedure to set the text color
    jmp end_color_setting2      ; Skip other cases

set_green2:
    mov eax, green              ; Set text color to green (adjust as per your system)
    call SetTextColor          ; Call procedure to set the text color
    jmp end_color_setting2      ; Skip other cases

end_color_setting2:
    mov dh, PlayerX
    mov dl, PlayerY
    call Gotoxy
    mov edx, OFFSET Player
    call WriteString
    ret
printpath2 ENDP


Fire2 PROC
    cmp BulletActive, 0
    je ExitFire2


    mov al, direction
    cmp al, 1  ; Move up
    je MoveUp2
    cmp al, 2  ; Move right
    je MoveRight2
    cmp al, 3  ; Move down
    je MoveDown2
    cmp al, 4  ; Move left
    je MoveLeft2

    jmp ExitFire2 ; Exit if no valid direction is set

MoveUp2:
    ;dec BulletY
    mov dl, bulletX       
    mov dh, bulletY  
    mov ecx,8

    moveUp12:
        dec dh
        call GoToXY           
        mov al, '|'           
        call WriteChar  
        mov eax,10
        call Delay
    loop moveUp12

    movzx eax,balls2X[123]
    cmp eax,0ffh
    je s2
    
    movzx eax, numOfActiveBalls
    sub eax,123
    jmp processfurther2


MoveRight2:        
    mov dl, BulletX
    mov dh, BulletY
    mov ecx,30
    moveright12:
        inc dl
        call gotoxy
        mov al, '-'           
        call WriteChar
        mov eax,10
        call Delay
    loop moveright12

    movzx eax,balls2X[7]
    cmp eax,0ffh
    je s2
    
    movzx eax, numOfActiveBalls
    sub eax,7
    jmp processfurther2

MoveDown2:
    ;inc BulletY           
    mov dl, BulletX
    mov dh, BulletY
    mov ecx,9

    moveDown12:
        inc dh
        call GoToXY
        mov al, '|'           
        call WriteChar
        mov eax,10
        call Delay
    loop moveDown12

   movzx eax,balls2X[46]
    cmp eax,0ffh
    je s2
    
    movzx eax, numOfActiveBalls
    sub eax,46
    jmp processfurther2

MoveLeft2:
    mov dl, BulletX
    mov dh, BulletY
    mov ecx,30
    moveleft12:
        dec dl
        call GoToXY
        mov al, '-'           
        call WriteChar
        mov eax,10
        call Delay

    loop moveleft12

     movzx eax,balls2X[85]
    cmp eax,0ffh
    je s2
    
    movzx eax, numOfActiveBalls
    sub eax,85
    jmp processfurther2

processfurther2:
    
    mov esi, offset balls2C
    mov ecx,eax
    dec ecx

    loo2:
    inc esi
    loop loo2

    mov eax,0
    mov al,[esi]
    movzx ebx, PlayerBulletColor
    cmp eax,ebx

    jne s12

   mov al, PlayerBulletColor      ; Load PlayerBulletColor into AL

cmp al, 1                      ; Check if PlayerBulletColor is 1
je color_12                     ; Jump to color_1 if true

cmp al, 2                      ; Check if PlayerBulletColor is 2
je color_22                     ; Jump to color_2 if true

cmp al, 3                      ; Check if PlayerBulletColor is 3
je color_32                     ; Jump to color_3 if true

jmp end_color_change2           ; Jump to end if none match

color_12:
    mov bl, 2                  ; If PlayerBulletColor is 1, set BL to 2
    mov [esi], bl              ; Store 2 at [esi]
    inc esi                    ; Increment ESI
    mov [esi], bl              ; Store 2 at [esi+1]
    inc esi
    mov bl,3; Increment ESI
    mov [esi], bl              ; Store 2 at [esi+2]
    jmp end_color_change2       ; Skip other cases

color_22:
    mov bl, 3                  ; If PlayerBulletColor is 2, set BL to 3
    mov [esi], bl              ; Store 3 at [esi]
    inc esi                    ; Increment ESI
    mov bl,1
    mov [esi], bl              ; Store 3 at [esi+1]
    inc esi                    ; Increment ESI
    mov [esi], bl              ; Store 3 at [esi+2]
    jmp end_color_change2       ; Skip other cases

color_32:
    mov bl, 1                  ; If PlayerBulletColor is 3, set BL to 1
    mov [esi], bl              ; Store 1 at [esi]
    inc esi                    ; Increment 
    mov bl,2
    mov [esi], bl              ; Store 1 at [esi+1]
    inc esi                    ; Increment ESI
    mov [esi], bl              ; Store 1 at [esi+2]
    jmp end_color_change2       ; Skip other cases

end_color_change2:
    add score,10
    mov powerupcount,0
    mov powerup,1
    sub numOfActiveBalls,4



    s12:
    mov byte ptr [esi], bl

    s2:
    jmp ExitFire2


ExitFire2:

        mov BulletActive, 0   ; Reset bulletActive
        mov eax, maxValue
        sub eax, minValue
        inc eax
        call RandomRange
        add eax, minValue
        mov PlayerBulletColor, al
    ret
Fire2 ENDP









Fire PROC
    ; Check if bullet is active
    cmp BulletActive, 0
    je ExitFire ; Exit if no bullet is active



    ; Move bullet based on the direction
    mov al, direction
    cmp al, 1  ; Move up
    je MoveUp
    cmp al, 2  ; Move right
    je MoveRight
    cmp al, 3  ; Move down
    je MoveDown
    cmp al, 4  ; Move left
    je MoveLeft

    jmp ExitFire ; Exit if no valid direction is set

MoveUp:
    ;dec BulletY
    mov dl, bulletX       
    mov dh, bulletY  
    mov ecx,8

    moveUp1:
        dec dh
        call GoToXY           
        mov al, '|'           
        call WriteChar  
        mov eax,10
        call Delay
    loop moveUp1

    movzx eax,ballsX[123]
    cmp eax,0ffh
    je s
    
    movzx eax, numOfActiveBalls
    sub eax,123
    jmp processfurther


MoveRight:
    ;inc BulletX          
    mov dl, BulletX
    mov dh, BulletY
    mov ecx,30
    moveright1:
        inc dl
        call gotoxy
        mov al, '-'           
        call WriteChar
        mov eax,10
        call Delay
    loop moveright1

    movzx eax,ballsX[7]
    cmp eax,0ffh
    je s
    
    movzx eax, numOfActiveBalls
    sub eax,7
    jmp processfurther

MoveDown:
    ;inc BulletY           
    mov dl, BulletX
    mov dh, BulletY
    mov ecx,9

    moveDown1:
        inc dh
        call GoToXY
        mov al, '|'           
        call WriteChar
        mov eax,10
        call Delay
    loop moveDown1

   movzx eax,ballsX[46]
    cmp eax,0ffh
    je s
    
    movzx eax, numOfActiveBalls
    sub eax,46
    jmp processfurther

MoveLeft:
    mov dl, BulletX
    mov dh, BulletY
    mov ecx,30
    moveleft1:
        dec dl
        call GoToXY
        mov al, '-'           
        call WriteChar
        mov eax,10
        call Delay

    loop moveleft1

     movzx eax,ballsX[85]
    cmp eax,0ffh
    je s
    
    movzx eax, numOfActiveBalls
    sub eax,85
    jmp processfurther

processfurther:
    mov esi, offset ballsC
    mov ecx,eax
    dec ecx

    loo:
    inc esi
    loop loo

    mov eax,0
    mov al,[esi]
    movzx ebx, PlayerBulletColor
    cmp eax,ebx

    jne s1

   mov al, PlayerBulletColor      ; Load PlayerBulletColor into AL

cmp al, 1                      ; Check if PlayerBulletColor is 1
je color_1                     ; Jump to color_1 if true

cmp al, 2                      ; Check if PlayerBulletColor is 2
je color_2                     ; Jump to color_2 if true

cmp al, 3                      ; Check if PlayerBulletColor is 3
je color_3                     ; Jump to color_3 if true

jmp end_color_change           ; Jump to end if none match

color_1:
    mov bl, 2                  ; If PlayerBulletColor is 1, set BL to 2
    mov [esi], bl              ; Store 2 at [esi]
    inc esi                    ; Increment ESI
    mov [esi], bl              ; Store 2 at [esi+1]
    inc esi
    mov bl,3; Increment ESI
    mov [esi], bl              ; Store 2 at [esi+2]
    jmp end_color_change       ; Skip other cases

color_2:
    mov bl, 3                  ; If PlayerBulletColor is 2, set BL to 3
    mov [esi], bl              ; Store 3 at [esi]
    inc esi                    ; Increment ESI
    mov bl,1
    mov [esi], bl              ; Store 3 at [esi+1]
    inc esi                    ; Increment ESI
    mov [esi], bl              ; Store 3 at [esi+2]
    jmp end_color_change       ; Skip other cases

color_3:
    mov bl, 1                  ; If PlayerBulletColor is 3, set BL to 1
    mov [esi], bl              ; Store 1 at [esi]
    inc esi                    ; Increment 
    mov bl,2
    mov [esi], bl              ; Store 1 at [esi+1]
    inc esi                    ; Increment ESI
    mov [esi], bl              ; Store 1 at [esi+2]
    jmp end_color_change       ; Skip other cases

end_color_change:
    add score,10
    sub numOfActiveBalls,4
    movzx eax, levelnum
    cmp eax,3
    jne sss
    sub numOfActiveBalls,4
    sss:



    s1:
    mov byte ptr [esi], bl

    s:
    jmp ExitFire


ExitFire:

        mov BulletActive, 0   ; Reset bulletActive
        mov eax, maxValue
        sub eax, minValue
        inc eax
        call RandomRange
        add eax, minValue
        mov PlayerBulletColor, al
    ret
Fire ENDP




PrintScore PROC
    ; Calculate the center position
    mov dl, 50                 ; X position (middle of an 80-column screen)
    mov dh, 0                  ; Y position (top of the screen)
    call GoToXY                ; Move the cursor to (40, 0)

    ; Print the static text "Your score is: "
    mov edx, OFFSET strScore   ; Load the address of strScore
    call WriteString           ; Print the string

    ; Convert the score to ASCII
    mov eax,0
    mov ax, score              ; Load the score value
    call WriteInt            ; Print the score

    ret
PrintScore ENDP

PrintLevel PROC
    mov dl, 0                  ; X position (leftmost)
    mov dh, 0                  ; Y position (topmost)
    call GoToXY                ; Set cursor position to (0, 0)
    mov eax,white
    call settextcolor

    mov edx, OFFSET strLevel   ; Load address of the string
    call WriteString           ; Print the static text

    ; Convert the level number to ASCII
    mov ax, levelnum              ; Load the current level number
    call writeInt            ; Print the level number

    ret
PrintLevel ENDP


Delay2 PROC
    cmp powerup, 1         ; Check if powerup is active
    jne normal_delay       ; If not, use the normal delay

    ; Powerup is active, set delay to 500
    mov eax, 1000            ; Set CX to 500 for the delay
    call delay      ; Jump to the delay loop

normal_delay:
    mov eax, 500           ; Normal delay value
    call delay

    ret
Delay2 ENDP



END main

