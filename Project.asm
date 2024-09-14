dosseg
.model small
.stack 100h
.data

;Messages to display the menu card
Message db '*****************************************************************'
Len equ $ - Message
Message1 db '------Welcome to our restaurant------'
Length1 equ $ - Message1
Message2 db '-----This is our restaurant menu-----'
Length2 equ $ - Message2
Message3 db '----Select from the below options----'
Length3 equ $ - Message3

;Items declared as string variable Item1
Item1 db '1) Fast Food '
Length4 equ $ - Item1

Item2 db '2) Pakistani Food '
Length5 equ $ - Item2

Item3 db '3) Chinese Food '
Length6 equ $ - Item3

Item4 db '4) Breakfast '
Length7 equ $ - Item4

Item5 db '5) Snacks '
Length8 equ $ - Item5

Item6 db '6) Sweets '
Length9 equ $ - Item6

Item7 db '7) Beverages '
Length10 equ $ - Item7

;breakfast  
Item41 db '  **           1.roti/nan                10/-                      **$'
Length41 equ $ - Item41
Item42 db '  **           2.egg/parata              10/-                      **$'
Length42 equ $ - Item42



;Pakistani
Item21 db '  **           1.birani(kabab+egg)       90/-                      **$' 
Length21 equ $ - Item21

Item22 db '  **           2.pulao(kabab+egg)        90/-                      **$' 
Length22 equ $ - Item22


;chinese
Item31 db '  **           1.manchurian              80/-                      **$' 
Length31 equ $ - Item31

Item32 db '  **           2.chicken shashlik        80/-                      **$' 
Length32 equ $ - Item32

;fastfood
Item11 db '  **           1.pizza                   90/-                      **$' 
Length11 equ $ - Item11

Item12 db '  **           2.burger                  70/-                      **$'  
Length12 equ $ - Item12


;snacks
Item51 db '  **           1.samosa                  20/-                      **$' 
Length51 equ $ - Item51

Item52 db '  **           2.patties                 40/-                      **$' 
Length52 equ $ - Item52


;Sweets
Item61 db '  **           1.falooda                 50/-                      **$' 
Length61 equ $ - Item61

Item62 db '  **           2.pudding                 50/-                      **$' 
Length62 equ $ - Item62

;Beverages
Item71 db '  **           1.soft drinks             10/-                      **$' 
Length71 equ $ - Item71

Item72 db '  **           2.tea                     10/-                      **$' 
Length72 equ $ - Item72

m1 db 'enter your order: $'
Lengthm1 equ $ - m1

m2 db 'quantity: $'
Lengthm2 equ $ - m2

m3 db 'total price: $'
Lengthm3 equ $ - m3

.code
main proc

mov ax, @data
mov ds, ax

mov cx, Len
mov si, offset Message

mov dl, 9
mov ah, 2
int 21h

;loop to print * representation
Loop1:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop1

;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h

;for printing one tab space
mov dl, 9
mov ah, 2
int 21h

;for character * printing
mov dl, '*'
mov ah, 2
int 21h

;for tab
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

mov cx, Length1
mov si, offset Message1

;loop to print msg1
Loop2:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop2

mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

;Printing a star
mov dl, '*'
mov ah, 2
int 21h

mov dl, 10
mov ah, 2
int 21h

mov dl, 13
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h

mov dl, '*'
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

mov cx, Length2
mov si, offset Message2

;loop to print msg2
Loop3:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop3

mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

;Printing a star
mov dl, '*'
mov ah, 2
int 21h

mov dl, 10
mov ah, 2
int 21h

mov dl, 13
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h

mov dl, '*'
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

mov cx, Length3
mov si, offset Message3

;loop to print msg3
Loop4:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop4

mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

;Printing a star
mov dl, '*'
mov ah, 2
int 21h

mov dl, 10
mov ah, 2
int 21h

mov dl, 13
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h

mov dl, '*'
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

mov cx, Length4
mov si, offset Item1

;loop for printing first item
Loop5:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop5

;for tab space 5 times
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

mov dl, '*'
mov ah, 2
int 21h

mov dl, 10
mov ah, 2
int 21h

mov dl, 13
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h

mov dl, '*'
mov ah, 2
int 21h

;tab space 2 times
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

mov cx, Length5
mov si, offset Item2

;loop for printing the item
Loop6:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop6

;for tab space 4 times
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

;Printing a star
mov dl, '*'
mov ah, 2
int 21h

mov dl, 10
mov ah, 2
int 21h

mov dl, 13
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h

mov dl, '*'
mov ah, 2
int 21h

;tab space 2 times
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

mov cx, Length6
mov si, offset Item3

;loop for printing the item
Loop7:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop7

;tab space 4 times
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

;Printing a star
mov dl, '*'
mov ah, 2
int 21h

mov dl, 10
mov ah, 2
int 21h

mov dl, 13
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h

mov dl, '*'
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

mov cx, Length7
mov si, offset Item4

;loop for printing the item
Loop8:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop8

;tab space 5 times
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

;Printing a star
mov dl, '*'
mov ah, 2
int 21h

mov dl, 10
mov ah, 2
int 21h

mov dl, 13
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h

mov dl, '*'
mov ah, 2
int 21h

;tab 2 times
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

mov cx, Length8
mov si, offset Item5

;loop for printing the item
Loop9:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop9

;tab 5 times
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

mov dl, '*'
mov ah, 2
int 21h

mov dl, 10
mov ah, 2
int 21h

mov dl, 13
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h

mov dl, '*'
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

mov cx, Length9
mov si, offset Item6

;loop for printing the item
Loop10:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop10

;tab 5 times
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

mov dl, '*'
mov ah, 2
int 21h

mov dl, 10
mov ah, 2
int 21h

mov dl, 13
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h

;Printing a star
mov dl, '*'
mov ah, 2
int 21h

mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

mov cx, Length10
mov si, offset Item7

;loop for printing the item
Loop11:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop11

;Printing 5 times tab 
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h
mov dl, 9
mov ah, 2
int 21h

;Printing a star
mov dl, '*'
mov ah, 2
int 21h

mov dl, 10
mov ah, 2
int 21h

mov dl, 13
mov ah, 2
int 21h

mov cx, Len
mov si, offset Message

mov dl, 9
mov ah, 2
int 21h

;loop for printing * pattern
Loop12:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop12



;goto by menu selct
mov ah,1
    int 21h
    mov bh,al
    sub bh,48
    
    ;cmp bh,1
    ;je ff
    
    ;cmp bh,2
    ;je pf
     
    ;cmp bh,3
    ;je cf
    
    
    cmp bh,4
    je bf
     
     
    ;cmp bh,5
    ;je sn
    
    ;cmp bh,6
    ;je sw
    
    ;cmp bh,7
    ;je bv



 bf:
   
    
;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item41
mov si, offset Length41

;loop to print msg1
Loop41:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop41  


;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item42
mov si, offset Length42

;loop to print msg2
Loop42:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop42  

    
    ;input order item
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
    
    cmp bl,1
    je ten
    
    cmp bl,2
    je ten
    
    
 



pf:    
;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item21
mov si, offset Length21

;loop to print msg1
Loop21:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop21  


;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item22
mov si, offset Length22

;loop to print msg2
Loop22:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop22  

    
    ;input order item
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
    
    cmp bl,1
    je ninety
    
    cmp bl,2
    je ninety






cf:    
;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item31
mov si, offset Length31

;loop to print msg1
Loop31:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop31  


;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item32
mov si, offset Length32

;loop to print msg2
Loop32:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop32  

    
    ;input order item
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
    
    cmp bl,1
    je eighty
    
    cmp bl,2
    je eighty
    
    
 
ff:    
;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item11
mov si, offset Length11

;loop to print msg1
Loop11:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop11  


;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item12
mov si, offset Length12

;loop to print msg2
Loop12:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop12  

    
    ;input order item
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
    
    cmp bl,1
    je ninety
    
    cmp bl,2
    je seventy



sn:    
;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item51
mov si, offset Length51

;loop to print msg1
Loop51:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop51  


;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item52
mov si, offset Length52

;loop to print msg2
Loop52:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop52  

    
    ;input order item
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
    
    cmp bl,1
    je twenty
    
    cmp bl,2
    je forty




sw:    
;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item61
mov si, offset Length61

;loop to print msg1
Loop61:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop61  


;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item62
mov si, offset Length62

;loop to print msg2
Loop62:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop62  

    
    ;input order item
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
    
    cmp bl,1
    je fifty
    
    cmp bl,2
    je fifty


bv:    
;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item71
mov si, offset Length71

;loop to print msg1
Loop71:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop71  


;for next line
mov dl, 10
mov ah, 2
int 21h

;for cariage return
mov dl, 13
mov ah, 2
int 21h


mov cx, Item72
mov si, offset Length72

;loop to print msg2
Loop72:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop Loop72  

    
    ;input order item
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
    
    cmp bl,1
    je ten
    
    cmp bl,2
    je ten



      
   ten:

   ;quantity
    mov bl,1
    int 21h
    
    
    
    mov ah,1
    int 21h
    sub al,48
     
    
    
    mul bl 
    aam 
 
    mov cx,ax 
    add ch,48
    add cl,48
    
    ;totalprice
    
    
    mov ah,2
    mov dl,ch
    int 21h
    
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    
    
    jmp exit
    
    
   
    
twenty:

   ;quantity
    mov bl,2
    int 21h
    
    
    mov ah,1
    int 21h
    sub al,48
     
    
    mul bl 
    aam 
 
    mov cx,ax 
    add ch,48
    add cl,48
    
    ;totalprice
    
    
    mov ah,2
    mov dl,ch
    int 21h
    
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    
    
    jmp exit
    

ninety:

   ;quantity
    mov bl,9
    int 21h
    
    
    
    mov ah,1
    int 21h
    sub al,48
     
    
    
    mul bl 
    aam 
 
    mov cx,ax 
    add ch,48
    add cl,48
    
    ;totalprice
    
    
    mov ah,2
    mov dl,ch
    int 21h
    
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    
    
    jmp exit



eighty:

   ;quantity
    mov bl,8
    int 21h
    
    
    
    mov ah,1
    int 21h
    sub al,48
     
    
    
    mul bl 
    aam 
 
    mov cx,ax 
    add ch,48
    add cl,48
    
    ;totalprice
    
    
    mov ah,2
    mov dl,ch
    int 21h
    
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    
    
    jmp exit



seventy:

   ;quantity
    mov bl,7
    int 21h
    
    
    
    mov ah,1
    int 21h
    sub al,48
     
    
    
    mul bl 
    aam 
 
    mov cx,ax 
    add ch,48
    add cl,48
    
    ;totalprice
    
    
    mov ah,2
    mov dl,ch
    int 21h
    
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    
    
    jmp exit



fifty:

   ;quantity
    mov bl,5
    int 21h
    
    
    
    mov ah,1
    int 21h
    sub al,48
     
    
    
    mul bl 
    aam 
 
    mov cx,ax 
    add ch,48
    add cl,48
    
    ;totalprice
    
    
    mov ah,2
    mov dl,ch
    int 21h
    
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    
    
    jmp exit



forty:

   ;quantity
    mov bl,4
    int 21h
    
    
    
    mov ah,1
    int 21h
    sub al,48
     
    
    
    mul bl 
    aam 
 
    mov cx,ax 
    add ch,48
    add cl,48
    
    ;totalprice
    
    
    mov ah,2
    mov dl,ch
    int 21h
    
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    
    
    jmp exit




 exit:
    
    mov ah,4ch
    int 21h
    main endp

    
end main