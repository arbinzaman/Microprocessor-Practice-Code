.model small       
             
.stack 200h            
             
.data     
             
     
    msg1 db 'Enter first number: ', '$'
    msg2 db 'Enter first number: ', '$'
    msg3 db 'The output is: ', '$'
    crlf db 0dh, 0ah, '$'
     
     
    num1digit1 db ?
    num1digit2 db ?            
    num2digit1 db ?        
    num2digit2 db ?     
           
.code       
.startup 
    
    mov ah, 9
    lea dx, msg1
    int 21h                                                       
     
    mov ah, 1
    int 21h
    mov num1digit1, al
    sub num1digit1, 30h                                                      
                        
    mov ah, 1
    int 21h
    mov num1digit2, al  
    
    sub num1digit2, 30h          
    mov ah, 9
    lea dx, crlf
    int 21h
         
    mov ah, 9
    lea dx, msg2
    int 21h
     
    mov ah, 1
    int 21h
    mov num2digit1, al
    sub num2digit1, 30h                                      
    
    mov ah, 1
    int 21h
    mov num2digit2, al
    sub num2digit2, 30h
              
    mov ah, 9
    lea dx, crlf
    int 21h
                 
    mov ah, 9
    lea dx, msg3
    int 21h     
     
    mov ah, 2
    mov cl, num1digit1
    sub cl, num2digit1
    mov dl, cl
    add dl, 30h    
    int 21h                             
    
    mov ah, 2
    mov cl, num1digit2
    sub cl, num2digit2
    mov dl, cl
    add dl, 30h
    int 21h  
     
                     
      
.exit