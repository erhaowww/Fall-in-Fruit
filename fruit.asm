.MODEL LARGE
.STACK 100
.DATA
;LOGIN VARIABLE--------------------------------------------------------------------------------------------------
	NL			DB 13, 10, "$"
	COUNT_ATTEMPT DB 3 DUP (0)
	STR_ATTEMPT DB 13,10,13,10,13,10,13,10,"                   SUMMARY OF THE TOTAL NUMBER OF ATTEMPT"
				DB 13,10,"                ______________________________________________$"
	STOCK_ATTEMPT DB 13,10,13,10,"                        STOCK FUNCTION		: $"
	PURCHASE_ATTEMPT DB 13,10,13,10,"                        PRUCHASE FUNCTION	: $"
	SUMMARY_ATTEMPT DB 13,10,13,10,"                        SUMMARY FUNCTION	: $"
	STR_TIMES DB " TIMES$"
	
	LOGINID		DB 13, 10, "		      Account ID	        : $"
	ENTERID 		LABEL BYTE
	MAXID			DB 10
	ACTID			DB ?
	ENTERIDDATA		DB 10 DUP ("$")
	ENTERPASSWORD 	DB 13, 10, "		     Please Enter your Password :$"
	WRONGPASSWORD	DB 13,10,"		  Invalid Password, Your Attempt Remainding - $"
	CARDGONE 		DB 13, 10, 13, 10, "	Your Account has been Suspended! Please Re-Run The Program! $"
	INPUT 			DB 8 DUP ("?")
	PASSWORD 		DB "ILOVEYOU"
	COUNT1			DB 3
	
	CORRECTPASSWORD DB 10,13,"            ___  _   _ _____ _   _ ___________ _____ _____ ___________ "
	DB 10,13,"	   / _ \| | | |_   _| | | |  _  | ___ \_   _/  ___|  ___|  _  \ "
	DB 10,13,"	  / /_\ \ | | | | | | |_| | | | | |_/ / | | \ `--.| |__ | | | |"
	DB 10,13,"	  |  _  | | | | | | |  _  | | | |    /  | |  `--. \  __|| | | |"
	DB 10,13,"	  | | | | |_| | | | | | | \ \_/ / |\ \ _| |_/\__/ / |___| |/ / "
	DB 10,13,"	  \_| |_/\___/  \_/ \_| |_/\___/\_| \_|\___/\____/\____/|___/  "
	DB 10,13,10,13,10,13,"		       YOUR ID HAS BEEN AUTHENTICATED "
	DB 10,13,"			  PRESS ANY KEY TO CONTINUE "
	DB 10,13,"			_____________________________$"

	
	
	;AFTER LOGIN LOGO
	LOGO1 DB 10,13, "		______                ______          _ _   "
		  DB 10,13,"		| ___ \               |  ___|        (_) |  "
		  DB 10,13,"		| |_/ / __ _  ___     | |_ _ __ _   _ _| |_ "
		  DB 10,13,"		| ___ \/ _` |/ _ \    |  _| '__| | | | | __|"
		  DB 10,13,"		| |_/ / (_| | (_) |   | | | |  | |_| | | |_ "
		  DB 10,13,"		\____/ \__,_|\___/    \_| |_|   \__,_|_|\__|$"
		
	LINE1 DB 10,13, 10,13,"           ----------------------------------------------------$"
	
	;MAINMENU
	MENUSELECTION DB 10,13,"		  1. Purchase"
				  DB 10,13, "		  2. Stock"
				  DB 10,13, "		  3. Summary"
				  DB 10,13, "		  4. Exit"
				  DB 10,13,10,13," Please Select One Function : $"
	INPUT_MENUSELECTION DB ?	
	
	;EXIT
	EXIT1 DB 10,13, "                ______________________________________________"
	DB 10,13,10,13,"		        THANKS FOR USING OUR SERVICE !$"

	
	EXITLOGO DB 10,13,"	   _______  __   __  _______  __    _  ___   _  _______   "
	DB 10,13,"	  |       ||  | |  ||   _   ||  |  | ||   | | ||       |  "
	DB 10,13,"	  |_     _||  |_|  ||  |_|  ||   |_| ||   |_| ||  _____|  "
	DB 10,13,"	    |   |  |       ||       ||       ||      _|| |_____   "
	DB 10,13,"	    |   |  |       ||       ||  _    ||     |_ |_____  |  "
	DB 10,13,"	    |   |  |   _   ||   _   || | |   ||    _  | _____| |  "
	DB 10,13,"	    |___|  |__| |__||__| |__||_|  |__||___| |_||_______|  $"

	
	
	
;-------------------------------------------------------------------------------------------------------------------------

;PRUCHASE VARIABLE--------------------------------------------------------------------------------------------------------
	;---STRING	  
	FRUITMENU DB 10,13,"	  		  __  __ ______ _   _ _    _ "
			  DB 10,13,"	 		 |  \/  |  ____| \ | | |  | |"
			  DB 10,13,"	 		 | \  / | |__  |  \| | |  | |"
			  DB 10,13,"	 		 | |\/| |  __| | . ` | |  | |"
			  DB 10,13,"	 		 | |  | | |____| |\  | |__| |"
			  DB 10,13,"	 		 |_|  |_|______|_| \_|\____/ "
			  DB 13,10,"			_____________________________"
			  DB 13,10,"			| 	  1.Grape   	    |"
			  DB 13,10,"			| 	  2.Citrus  	    |"
			  DB 13,10,"			|  	  3.Apple   	    |"
			  DB 13,10,"			|___________________________|"
		  	  DB 13,10,13,10,"Please select the fruit you want: $"

			  
    TYPE1 DB 13,10,13,10,"TYPE: Grape$"
	TYPE2 DB 13,10,13,10,"TYPE: Citrus$"
	TYPE3 DB 13,10,13,10,"TYPE: Apple$"
	  
    HEADER    DB 13,10
			  DB '***********************************************************************',13,10
		      DB '* NO *                     NAME                        *     PRICE    *',13,10
			  DB '***********************************************************************$' 
	 
	GRAPEMENU_LIST1 DB 13,10,"* 1. *   USA Stella Bella Green Grape                  *     RM $"
	
	GRAPEMENU_LIST2 DB 13,10,"* 2. *   Egypt Timco Red Grape                         *     RM $"

	CITRUSMENU_LIST1 DB 13,10,"* 1. *   South Africa Navel Orange (L)                 *     RM $"
	CITRUSMENU_LIST2 DB 13,10,"* 2. *   South Africa Lemon (M)                        *     RM $"
			  
	APPLEMENU_LIST1 DB 13,10,"* 1. *   New Zealand Pacific Queen Red Apple (M)       *     RM $"
	APPLEMENU_LIST2 DB 13,10,"* 2. *   China Red Apple Fuji (M)                      *     RM $"
	BEHIND DB '    *$'
	
	FOOTER	  DB 13,10,"***********************************************************************"
			  DB 13,10,13,10,"Please enter your choice: $"
	STRQTY DB 13,10,13,10,"Please enter quantity: $"
	STR_CONTINUE DB 13,10,13,10,"Add more fruits? (Y/N): $"
	STR_CONTINUE1 DB 13,10,13,10,"BACK TO MENU? (Y/N): $"
	DATE DB "DATE:$"
	TIME DB 13,10,"TIME:$"
	SPACE DB "			                   	     $"
	SPACEFEED DB "         $"
	SPACEFEED2 DB "       $"
	DOT DB '.'
	
	;---RECEIPT
	PAYMENTHEAD DB "                                  RECEIPT$"
	FRUIT0 DB "USA Stella Bella Green Grape                $"
	FRUIT1 DB "Egypt Timco Red Grape                       $"
	FRUIT2 DB "South Africa Navel Orange (L)               $"
	FRUIT3 DB "South Africa Lemon (M)                      $"
	FRUIT4 DB "New Zealand Pacific Queen Red Apple (M)     $"
	FRUIT5 DB "China Red Apple Fuji (M)                    $"
	PAYHEADER DB 13,10,"-------------------------------------------------------------------------------"
			  DB 13,10,"NO NAME                                     QUANTITY       PRICE      SUBTOTAL "
			  DB 13,10,"-------------------------------------------------------------------------------",13,10,"$"
	PAYMENTFOOT DB 13,10,"-------------------------------------------------------------------------------",13,10,"$"
	CONTROL_FRUIT_NAME DW 0
	COUNT_NO DB '1'
	AMOUNT_STR DB "AMOUNT: RM $"
	SST_STR DB 13,10,"SST: RM $"
	TOTAL_AMOUNT_STR DB 13,10,"TOTAL AMOUNT: RM $"
	
	;----DATA
	MENU_CHOICE DB ?
	FRUIT_CHOICE DW ?
	QTY DB ?
	
	;[0]=GRAPE1, [1]=GRAPE2, [2]=CITRUS1, [3]=CITRUS2, [4]=APPLE1, [5]=APPLE2, 
	TOTALQTY_FRUIT DB 0,0,0,0,0,0

	YESNO DB ?
	YESNO1 DB ?
	TOTAL_AMOUNT DW 0
	TOTAL_AMOUNT_DGT DB 0,0,0,0
	FINAL_AMOUNT DB 0,0,0,0
	SUBTOTAL DW 0,0,0,0,0,0
	SUBTOTAL_DGT DB 0,0,0,0
	
	FRUITQTY LABEL BYTE
	MAX DB 10
	ACT DB ?
	VALUE DB 10 DUP ("$")
	DP DW ?	;PASS REMAINDER
	DGTSST DW 0
	
	SST DW 5 ;5=5%
	SST_DIGIT DB 0,0,0,0
	SST_DECIMAL DB 0,0,0
	
	;---ERROR MESSAGE
	ICHOICE DB "CHOICE OUT OF RANGE. Please enter number of range 1 to 3 only.",13,10,"$"
	ICHOICE2 DB "CHOICE OUT OF RANGE. Please enter number of range 1 to 2 only.",13,10,"$"	
	IYESNO DB "<ERROR>Please enter 'Y' for Yes or 'N' for No.<ERROR>$"
	IQTYNUM DB "<ERROR>Please enter number only (0-9).<ERROR>$"
	IMAXQTY DB "<ERROR>Please enter MAXIMUM 2 digit only.<ERROR>$"
	INVALIDMSG1 DB 10,13, "<ERROR>PLEASE ENTER BETWEEN 1 - 3 ONLY <ERROR> $"
	INVALIDMSG2 DB 10,13, "<ERROR>PLEASE ENTER BETWEEN 1 - 4 ONLY <ERROR> $"
	SOLDOUT DB "<ERROR>THE FRUIT HAS BEEN SOLD OUT<ERROR> $"
	OUTOFSTOCK DB "<ERROR>PURCHASED QUANTITY MORE THAN STOCK NUMBER$"


;STOCK VARIABLE----------------------------------------------------------------------------------------------------------
	;STOCK HEADER
	STOCK_FUNCTION_HEADER 	DB '================================================================================'
							DB '                                 STOCK FUNCTION                                 '
							DB '================================================================================$'
	;PROMPT
	STOCK_PROMPT_STOCK_FUNCTION DB '+-----------------------------------+',0DH,0AH
								DB '|             FUNCTION              |',0DH,0AH
								DB '+-----------------------------------+',0DH,0AH
								DB '|          1.DISPLAY STOCK          |',0DH,0AH
								DB '|            2.ADD STOCK            |',0DH,0AH
								DB '|           3.MODIFY STOCK          |',0DH,0AH
								DB '+-----------------------------------+',0DH,0AH
								DB 'ENTER A NUMBER YOU WANT TO SELECT: $'
	STOCK_PROMPT_MODIFY_STOCK_FUNCTION 	DB '+-----------------------------------+',0DH,0AH
										DB '|          MODIFY FUNCTION          |',0DH,0AH
										DB '+-----------------------------------+',0DH,0AH
										DB '|              1.STOCK              |',0DH,0AH
										DB '|              2.PRICE              |',0DH,0AH
										DB '+-----------------------------------+',0DH,0AH
										DB 'ENTER A NUMBER YOU WANT TO SELECT: $'
	STOCK_PROMPT_LINE_STOCK_FUNCTION DB 'ENTER THE LINE YOU WANT: $'
	STOCK_PROMPT_STOCK_NUMBER DB 'ENTER NUMBER(MAX 4-DIGIT): $'
	STOCK_PROMPT_STOCK_PRICE DB 'ENTER NUMBER(MAX 2-DIGIT): $'
	STOCK_PROMPT_REPEAT DB 13,10,'YOU WANT TO REPEAT AGAIN?(Y/N)$'
	;DISPLAY CONTENT
	STOCK_NAME_HEADER 	DB 0DH,0AH
						DB '--------------------------------------------------------------------------------'
						DB 'NO.NAME						TYPE	QUANTITY	PRICE',0DH,0AH
						DB '--------------------------------------------------------------------------------$'
	STOCK_NUM DB '1'
	RM DB '		RM$'
	STOCK_NAME_LIST DB 'USA Stella Bella Green Grape			Egypt Timco Red Grape				South Africa Navel Orange (L)			South Africa Lemon (M)			New Zealand Pacific Queen Red Apple (M)	China Red Apple Fuji (M)			'
	STOCK_NAME_LENGTH DB 31,25,32,25,40,27
	STOCK_TYPE_LIST DB 'GRAPES	GRAPES	CITRUS	CITRUS	APPLE	APPLE	'
	STOCK_TYPE_LENGTH DB 7,7,7,7,6,6
	STOCK_QTY_LIST DW 1050,983,1100,2100,3120,1590
	STOCK_PRICE_LIST DB 35,12,15,8,9,8
	STOCK_NAME_FOOTER DB '================================================================================$'
	
	;USER INPUT
	STOCK_USER_SELECT_FUNCTION DB ?
	STOCK_USER_INPUT_STOCK LABEL BYTE
	STOCK_MAXN DB 5
	STOCK_ACTN DB ?
	STOCK_USER_INPUT_STOCK_NUMBER DB 5 DUP ('$')
	STOCK_USER_INPUT_PRICE LABEL BYTE
	STOCK_MAXNUM DB 3
	STOCK_ACTNUM DB ?
	STOCK_USER_INPUT_PRICE_NUMBER DB 3 DUP ('$')
	
	;ERROR MESSAGE
	STOCK_INPUT_ERROR_MSG_FUNCTION DB '<ERROR>PLEASE ENTER (1-3) ONLY<ERROR>',0DH,0AH,'$'
	STOCK_INPUT_ERROR_MSG_STOCK DB '<ERROR>PLEASE ENTER MAX 4-DIGIT NUMBER<ERROR>',0DH,0AH,'$'
	STOCK_INPUT_ERROR_MSG_PRICE DB '<ERROR>PLEASE ENTER MAX 2-DIGIT NUMBER<ERROR>',0DH,0AH,'$'
	STOCK_INPUT_ERROR_MSG_YES_NO DB '<ERROR>PLEASE ENTER Y OR N ONLY!!(Y=YES/N=NO)<ERROR>',0DH,0AH,'$'
	STOCK_INPUT_ERROR_MSG_CHOOSE DB '<ERROR>PLEASE ENTER 1 AND 2 ONLY<ERROR>',0DH,0AH,'$'
	STOCK_INPUT_ERROR_MSG_CHOOSE_LINE DB '<ERROR>PLEASE ENTER 1-6 ONLY<ERROR>',0DH,0AH,'$'
	;OTHER
	STOCK_STOP_NAME DW 0
	STOCK_STOP_TYPE DW 0
	STOCK_TOTAL DW ?
	STOCK_USER_SET_PRICE DB ?
	STOCK_LINE_CHOSEN DW ?
	STOCK_CHOOSE_PRICE DB 0
	STOCK_EXCEED_MSG DB 'THE QUANTITY OF STOCK IS EXCEED$'
	
	;NUMBER
	TWO DW 2
	TWO1B DB 2
	NUM_2B DW 1,10,100,1000,10000
	NUM DB 1,10,100
	
;------------------------------------------------------------------------------------------------------------------------






;SUMMARY VARIABLE---------------------------------------------------------------------------------------------------------
	SUMMARY_LOGO    			DB 10,13, "		 ___  __  __  __  __  __  __    __    ____  _  _ "
								DB 10,13, "		/ __)(  )(  )(  \/  )(  \/  )  /__\  (  _ \( \/ )"
								DB 10,13, "		\__ \ )(__)(  )    (  )    (  /(__)\  )   / \  / "
								DB 10,13, "		(___/(______)(_/\/\_)(_/\/\_)(__)(__)(_)\_) (__) $"
	
	SUMMARY_FUNCTION_HEADER 	DB 10,13, '==============================================================================='
								DB 10,13, '|                               SUMMARY FUNCTION                              |'
								DB 10,13, '===============================================================================$'
								
	SUMMARY_OPTIONS				DB 10,13,'				1.PRICE',10,13
								DB '				2.STOCK QUANTITY',10,13
								DB '				3.BACK TO MAIN',10,13
								DB '		    ENTER NUMBER TO CHOOSE YOUR OPTION: $'
								
	S_OPTIONS DB ?
								
	NEXT_PAGE					DB 10,13, '===============================================================================$'
	
	STOCK_TOP1					DB 10,13, "==============================================================================="
								DB 10,13, "|FRUITS TYPES 								 PRICE|"
								DB 10,13, "===============================================================================$"
	
	STOCK_GRAPE11 				DB 10,13, "*.USA Stella Bella Green Grape						   RM$"
	STOCK_GRAPE22				DB 10,13, "*.Egypt Timco Red Grape							   RM$"
	
	STOCK_ORANGE11				DB 10,13, "*.South Africa Navel Orange (L)						   RM$"
	STOCK_ORANGE22				DB 10,13, "*.South Africa Lemon (M)						   RM$"
	
	STOCK_APPLE11				DB 10,13, "*.New Zealand Pacific Queen Red Apple (M))				   RM$"
	STOCK_APPLE22				DB 10,13, "*.China Red Apple Fuji (M)						   RM$"
	
	PRICE_OPTION DB ?
	
	TOTAL_OF					DB 10,13, "TOTAL OF $"
	FRUIT						DB " FRUITS$"
	
	STOCK_SUMMARY_OPTIONS		DB 10,13, "1.Grape"
								DB 10,13, "2.Orange"
								DB 10,13, "3.Apple"
								DB 10,13, "SELECT THE FRUIT WITH NUMBER:$"
	FRUIT_OPTIONS DB ?
	
	STOCK_TOP2					DB 10,13, "==============================================================================="
								DB 10,13, "|FRUITS TYPES 								AMOUNT|"
								DB 10,13, "===============================================================================$"
	
	STOCK_GRAPE1 				DB 10,13, "*.USA Stella Bella Green Grape						  $"
	STOCK_GRAPE2				DB 10,13, "*.Egypt Timco Red Grape							  $"
	TOTAL_GRAPE					DB 10,13,"*.Total									  $"
	ALL_GRAPE DW ?
								
	STOCK_ORANGE1				DB 10,13, "*.South Africa Navel Orange (L)						  $"
	STOCK_ORANGE2				DB 10,13, "*.South Africa Lemon (M)						  $"
	TOTAL_ORANGE				DB 10,13,"*.Total									  $"
	ALL_ORANGE DW ?
								
	STOCK_APPLE1				DB 10,13, "*.New Zealand Pacific Queen Red Apple (M))				  $"
	STOCK_APPLE2				DB 10,13, "*.China Red Apple Fuji (M)						  $"
	TOTAL_APPLE					DB 10,13,"*.Total									  $"
	ALL_APPLE DW ?
	
	TOTAL_LINE               	DB "										======$"
	
	ERROR_MASSAGE DB "ERROR INPUT! (PLEASE ENTER NUMBER TO SELECT)$"
	TOTAL_STOCK DW ?
	TEN DB 10
	HUNDRED DW 100
	THOUSAND DW 1000
	
	ASK_FOR_CON DB 10,13,10,13,"DID YOU WANT TO CONTINUE (Y/N):$"
	CON_OPTION1 DB ?
	CON_OPTION2 DB ?
	CON_OPTION3 DB ?
	CON_OPTION4 DB ?
	CON_OPTION5 DB ?
	CON_OPTION6 DB ?


;-------------------------------------------------------------------------------------------------------------------------



.CODE
MAIN PROC FAR
        MOV AX,@DATA
        MOV DS,AX
		
;LOGIN----------------------------------------------------------		
	MOV AH,02H
	MOV BH,00
	MOV DX,080FH
	INT 10H
	
	MOV AX,0600H
	MOV BH,70H
	MOV CX,0000H
	MOV DX,184FH
	INT 10H
	
	;--- Account ID
	MOV AH, 09H
	LEA DX, LOGINID
	INT 21H

	;--- EnterID
	MOV AH, 0AH
	LEA DX, ENTERID
	INT 21H

START:
	;--- Please Enter Password
	MOV AH, 09H	
	LEA DX, ENTERPASSWORD
	INT 21H

	MOV CX, 8
	MOV SI, 0

ENTERPASS:
	;--- Enter Password
	MOV AH, 07H							;--- Hidden the Password
	INT 21H
	MOV INPUT[SI], AL

	
	;^^^^^ additional features **
	MOV AH,02H
	MOV DL,"*"
	INT 21H
	
	INC SI
	
	CMP SI, 8
	JNE ENTERPASS
	
	;--- Checking Existing ID
	MOV SI, 0
CHECKING1:
	MOV BL,PASSWORD[SI]
	
	CMP INPUT[SI], BL
	JE CHECKING2
	JNE ERROR

CHECKING2:
	INC SI
	
	CMP SI, 8
	JE MATCHED
	JNE CHECKING1	
	
ERROR:


	;--- Invalid Password
	MOV AH,09H
	LEA DX, WRONGPASSWORD
	INT 21H

	;--- Count ?
	MOV AH, 02H
	MOV DL, COUNT1
	ADD DL,30H
	INT 21H
	
	DEC COUNT1
	
	CMP COUNT1, 0
	JE SUSPENDED
	JNE START
	
MATCHED:
	;--- Clear Screen
	MOV AX, 03H
	INT 10H
	


    MOV AX,0600H
    MOV BH,60H
    MOV CX,0000H
    MOV DX,075FH
    INT 10H
	
	MOV AH,09H
	;--- Correct Password
	MOV AH,09H
	LEA DX, CORRECTPASSWORD
	INT 21H
	
	MOV AH,09H
	LEA DX,NL
	INT 21H
	
	LEA DX,NL
	INT 21H

	
	;--- System Pause
	MOV	AH, 08H
    INT 21H
	
	;--- Clear Screen
	MOV AX, 03H
	INT 10H

	JMP MAINMENU
	
SUSPENDED:
	MOV AH, 09H
	LEA DX, CARDGONE
	INT 21H
	
	;--- System Pause
	MOV	AH, 08H
    INT 21H
	
	JMP EXIT
	
MAINMENU:

	MOV AH,02H
	MOV BH,03
	MOV DX,080FH
	INT 10H
	
	MOV AX,0600H
	MOV BH,70H
	MOV CX,0000H
	MOV DX,184FH
	INT 10H
		
MAINMENU2:	

	MOV AH,02H
    MOV BH,00
    MOV DX,080FH
    INT 10H

    MOV AX,0600H
    MOV BH,70H
    MOV CX,0000H
    MOV DX,184FH
    INT 10H
	
	MOV AH,09H
	LEA DX,LOGO1
	INT 21H
	
	LEA DX,LINE1
	INT 21H
	
	LEA DX,MENUSELECTION
	INT 21H
	
	MOV AH,01H
	INT 21H
	SUB AL,30H
	MOV INPUT_MENUSELECTION,AL
	
	CMP INPUT_MENUSELECTION,1
	JE PURCHASE_LABEL
	JL ERRORMSG_LABEL_JUMP
	CMP INPUT_MENUSELECTION,2
	JE STOCK_LABEL_JUMP
	CMP INPUT_MENUSELECTION,3
	JE SUMMARY_LABEL_JUMP
	CMP INPUT_MENUSELECTION,4
	JE EXIT_JUMP
	JG ERRORMSG_LABEL_JUMP
	
SUMMARY_LABEL_JUMP:
	JMP SUMMARY

EXIT_JUMP:
	JMP EXIT
	
STOCK_LABEL_JUMP:
	JMP STOCK_LABEL

ERRORMSG_LABEL_JUMP:
	JMP ERRORMSG_LABEL
		
PURCHASE_LABEL:

	;--- Clear Screen
	MOV AX, 03H
	INT 10H
	;---SELECT FRUIT
				
		FRUIT_MENU:	
			MOV AH,09H
			LEA DX,FRUITMENU
			INT 21H
	
			MOV AH,01H
			INT 21H
			SUB AL,30H
			MOV MENU_CHOICE,AL
			
			CMP MENU_CHOICE,1
			JL MENU_CHOICE_ERROR
			CMP MENU_CHOICE,3
			JG MENU_CHOICE_ERROR
			JMP FRUIT_TYPE
	
;---------------------VALIDATION
		MENU_CHOICE_ERROR:
			MOV BH,0	;CLEAR BH PREVENT COLOR NO CHANGE
			MOV AH,09H	;OUTPUT STR
			LEA DX,NL	;NEWLINE
			INT 21H
			MOV BL,04H	;RED COLOR
			MOV CX,62	;COLUMN NUM
			INT 10H
			LEA DX,ICHOICE
			INT 21H
			JMP FRUIT_MENU
		;----------------------
			
			;---GO TO SPECIFIC FRUIT TYPE MENU
		FRUIT_TYPE:
			CMP MENU_CHOICE, 1
			JE GRAPE_MENU
			CMP MENU_CHOICE, 2
			JE CITRUS_MENU
			JMP APPLE_MENU
			
		GRAPE_MENU:
			MOV AH,09H
			LEA DX,TYPE1
			INT 21H
			LEA DX,HEADER
			INT 21H
			LEA DX,GRAPEMENU_LIST1
			INT 21H
			
			MOV AH,0
			MOV AL,STOCK_PRICE_LIST[0]
			DIV NUM[1]
			MOV BX,AX
			;PRINT TEN
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			;PRINT DIGIT
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			MOV AH,09H
			LEA DX,BEHIND
			INT 21H
			MOV AH,09H
			LEA DX,NL
			INT 21H
			
			MOV AH,09H
			LEA DX,GRAPEMENU_LIST2
			INT 21H
			MOV AH,0
			MOV AL,STOCK_PRICE_LIST[1]
			DIV NUM[1]
			MOV BX,AX
			;PRINT TEN
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			;PRINT DIGIT
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			MOV AH,09H
			LEA DX,BEHIND
			INT 21H
			MOV AH,09H
			LEA DX,NL
			INT 21H
			
			JMP FOOTER_FRUIT_CHOICE

		CITRUS_MENU:
			MOV AH,09H
			LEA DX,TYPE2
			INT 21H
			LEA DX,HEADER
			INT 21H
			LEA DX,CITRUSMENU_LIST1
			INT 21H
			MOV AH,0
			MOV AL,STOCK_PRICE_LIST[2]
			DIV NUM[1]
			MOV BX,AX
			;PRINT TEN
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			;PRINT DIGIT
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			MOV AH,09H
			LEA DX,BEHIND
			INT 21H
			MOV AH,09H
			LEA DX,NL
			INT 21H
			
			MOV AH,09H
			LEA DX,CITRUSMENU_LIST2
			INT 21H
			MOV AH,0
			MOV AL,STOCK_PRICE_LIST[3]
			DIV NUM[1]
			MOV BX,AX
			;PRINT TEN
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			;PRINT DIGIT
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			MOV AH,09H
			LEA DX,BEHIND
			INT 21H
			MOV AH,09H
			LEA DX,NL
			INT 21H
			JMP FOOTER_FRUIT_CHOICE
			
		APPLE_MENU:
			MOV AH,09H
			LEA DX,TYPE3
			INT 21H
			LEA DX,HEADER
			INT 21H
			LEA DX,APPLEMENU_LIST1
			INT 21H
			MOV AH,0
			MOV AL,STOCK_PRICE_LIST[4]
			DIV NUM[1] ;10
			MOV BX,AX
			;PRINT TEN
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			;PRINT DIGIT
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			MOV AH,09H
			LEA DX,BEHIND
			INT 21H
			MOV AH,09H
			LEA DX,NL
			INT 21H
			
			MOV AH,09H
			LEA DX,APPLEMENU_LIST2
			INT 21H
			MOV AH,0
			MOV AL,STOCK_PRICE_LIST[5]
			DIV NUM[1]
			MOV BX,AX
			;PRINT TEN
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			;PRINT DIGIT
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			MOV AH,09H
			LEA DX,BEHIND
			INT 21H
			MOV AH,09H
			LEA DX,NL
			INT 21H
			
		FOOTER_FRUIT_CHOICE:
			MOV AH,09H
			LEA DX,FOOTER
			INT 21H
			
			MOV AH,01H
			INT 21H
			SUB AL,30H
			MOV AH,0
			MOV FRUIT_CHOICE,AX

		;----------------------VALIDATION
			CMP FRUIT_CHOICE,1
			JL FRUIT_CHOICE_ERROR
			CMP FRUIT_CHOICE,2
			JG FRUIT_CHOICE_ERROR
			JMP INPQTY
		;-------------------------

		FRUIT_CHOICE_ERROR:
			MOV BH,0
			MOV AH,09H
			LEA DX,NL	;NEWLINE
			INT 21H
			MOV BL,04H	;RED COLOR
			MOV CX,62	;COLUMN NUM
			INT 10H
			LEA DX,ICHOICE2
			INT 21H
			JMP FRUIT_TYPE

			;---INPUT QUANTITY
		INPQTY:
			MOV AH,09H
			LEA DX,STRQTY
			INT 21H

			MOV AH,0AH
			LEA DX,FRUITQTY
			INT 21H
			
			MOV SI,0
			MOV CH,0
			MOV CL,ACT
			CMP ACT,3
			JGE IMAXQTYNUM
			CHECKQTY:
				CMP VALUE[SI],'0'
				JL IQTY
				CMP VALUE[SI],'9'
				JG IQTY
				INC SI
			LOOP CHECKQTY
			
			CMP VALUE[1],'0'	
			JGE TWODGT
			MOV AL,VALUE[0]	;1 DIGIT QTY NUM
			SUB AL,30H
			MOV QTY,AL
			JMP STORE_VALUE
			TWODGT:
			MOV AL,VALUE[0]	;2 DIGIT QTY NUM
			SUB AL,30H
			MUL NUM[1]
			MOV BL,VALUE[1]
			SUB BL,30H
			ADD AL,BL	;QTY SAVED IN AL
			MOV QTY,AL
			JMP STORE_VALUE

		;------------------------VALIDATION
		IMAXQTYNUM:
			MOV BH,0
			MOV AH,09H
			LEA DX,NL	;NEWLINE
			INT 21H
			MOV BL,04H	;RED COLOR
			MOV CX,48
			INT 10H
			LEA DX,IMAXQTY	;ERROR MSG
			INT 21H
			JMP INPQTY	;JMP BACK TO INPUT 
			

		IQTY:
			MOV BH,0
			MOV AH,09H
			LEA DX,NL
			INT 21H
			MOV BL,04H
			MOV CX,45
			INT 10H
			LEA DX,IQTYNUM
			INT 21H
			JMP INPQTY
		;----------------------------------
			
		STORE_VALUE:
			MOV AH,0	;CLEAR AH
			MOV SI,FRUIT_CHOICE		;FIND INDEX 
			DEC SI	;0 / 1

	
			CMP MENU_CHOICE,1
			JE CALC_GRAPE
			CMP MENU_CHOICE,2
			JE GOTO_CALC_CITRUS
			JMP GOTO_CALC_APPLE
	
			;---GRAPE
		CALC_GRAPE:
			MOV AX,SI	;0 / 1 [INDEX]
			MUL TWO1B
			MOV DI,AX	;CAUSE 1BYTE INDEX = 0,1,2,3,4 ,2BYTE INDEX= 0,2,4,6,8
			
			CMP STOCK_QTY_LIST[DI],0	;CMP IF STOCK QTY = 0
			JE GRAPE_SOLDOUT
			MOV CH,0
			MOV CL,QTY
			CMP CX,STOCK_QTY_LIST[DI]	;CMP IF QTY PURCHASE MORE THAN STOCK QTY
			JG GRAPE_OUTOFSTOCK
			
			MOV AH,0
			MOV AL,QTY
			SUB STOCK_QTY_LIST[DI],AX	;MINUS QTY PURCHASE
			MOV AH,0
			MOV AL,QTY
			ADD TOTALQTY_FRUIT[SI],AL	;AL = QTY
			MUL STOCK_PRICE_LIST[SI]			;AX = AL * PRICE_FRUIT[0]
			ADD SUBTOTAL[DI],AX
			JMP CALC_TOTAL_AMOUNT
			
			GRAPE_SOLDOUT:
				MOV BH,0
				MOV AH,09H
				LEA DX,NL	;NEWLINE
				INT 21H
				MOV BL,04H	;RED COLOR
				MOV CX,41	;COLUMN NUM
				INT 10H
				LEA DX,SOLDOUT
				INT 21H
				JMP FRUIT_MENU
				
	GOTO_CALC_CITRUS:
		JMP CALC_CITRUS	
		
			GRAPE_OUTOFSTOCK:
				MOV BH,0
				MOV AH,09H
				LEA DX,NL	;NEWLINE
				INT 21H
				MOV BL,04H	;RED COLOR
				MOV CX,52	;COLUMN NUM
				INT 10H
				LEA DX,OUTOFSTOCK
				INT 21H
				;DISPLAY STOCK NUMBER
				MOV AX,STOCK_QTY_LIST[DI]
				DIV NUM[1]	;NUM[1] = 10(1BYTE)
				MOV CX,AX
				MOV AH,02H
				MOV DL,'('
				INT 21H
				MOV DL,CL
				ADD DL,30H
				INT 21H
				MOV DL,CH
				ADD DL,30H
				INT 21H
				MOV DL,')'
				INT 21H
				JMP INPQTY
				

		


			;---CITRUS
		CALC_CITRUS:
			ADD SI,2
			MOV AX,SI
			MUL TWO1B
			MOV DI,AX
			
			CMP STOCK_QTY_LIST[DI],0	;CMP IF STOCK QTY = 0
			JE CITRUS_SOLDOUT
			MOV CH,0
			MOV CL,QTY
			CMP CX,STOCK_QTY_LIST[DI]	;CMP IF QTY PURCHASE MORE THAN STOCK QTY
			JG CITRUS_OUTOFSTOCK
			
			MOV AH,0
			MOV AL,QTY
			SUB STOCK_QTY_LIST[DI],AX	;MINUS QTY PURCHASE
			MOV AH,0
			MOV AL,QTY
			ADD TOTALQTY_FRUIT[SI],AL
			MUL STOCK_PRICE_LIST[SI]
			ADD SUBTOTAL[DI],AX
			JMP CALC_TOTAL_AMOUNT
			
			CITRUS_SOLDOUT:
				MOV BH,0
				MOV AH,09H
				LEA DX,NL	;NEWLINE
				INT 21H
				MOV BL,04H	;RED COLOR
				MOV CX,41	;COLUMN NUM
				INT 10H
				LEA DX,SOLDOUT
				INT 21H
				JMP FRUIT_MENU
				
	GOTO_CALC_APPLE:
		JMP CALC_APPLE
		
			CITRUS_OUTOFSTOCK:
				MOV BH,0
				MOV AH,09H
				LEA DX,NL	;NEWLINE
				INT 21H
				MOV BL,04H	;RED COLOR
				MOV CX,52	;COLUMN NUM
				INT 10H
				LEA DX,OUTOFSTOCK
				INT 21H
				;DISPLAY STOCK NUMBER
				MOV AX,STOCK_QTY_LIST[DI]
				DIV NUM[1]	;NUM[1] = 10(1BYTE)
				MOV CX,AX
				MOV AH,02H
				MOV DL,'('
				INT 21H
				MOV DL,CL
				ADD DL,30H
				INT 21H
				MOV DL,CH
				ADD DL,30H
				INT 21H
				MOV DL,')'
				INT 21H
				JMP INPQTY
			
			
			;---APPLE
		CALC_APPLE:
			ADD SI,4
			MOV AX,SI
			MUL TWO1B
			MOV DI,AX
			
			CMP STOCK_QTY_LIST[DI],0	;CMP IF STOCK QTY = 0
			JE APPLE_SOLDOUT
			MOV CH,0
			MOV CL,QTY
			CMP CX,STOCK_QTY_LIST[DI]	;CMP IF QTY PURCHASE MORE THAN STOCK QTY
			JG APPLE_OUTOFSTOCK
			
			MOV AH,0
			MOV AL,QTY
			SUB STOCK_QTY_LIST[DI],AX	;MINUS QTY PURCHASE
			MOV AH,0
			MOV AL,QTY
			ADD TOTALQTY_FRUIT[SI],AL
			MUL STOCK_PRICE_LIST[SI]
			ADD SUBTOTAL[DI],AX
			JMP CALC_TOTAL_AMOUNT
			
			APPLE_SOLDOUT:
				MOV BH,0
				MOV AH,09H
				LEA DX,NL	;NEWLINE
				INT 21H
				MOV BL,04H	;RED COLOR
				MOV CX,41	;COLUMN NUM
				INT 10H
				LEA DX,SOLDOUT
				INT 21H
				JMP FRUIT_MENU
				
			APPLE_OUTOFSTOCK:
				MOV BH,0
				MOV AH,09H
				LEA DX,NL	;NEWLINE
				INT 21H
				MOV BL,04H	;RED COLOR
				MOV CX,52	;COLUMN NUM
				INT 10H
				LEA DX,OUTOFSTOCK
				INT 21H
				;DISPLAY STOCK NUMBER
				MOV AX,STOCK_QTY_LIST[DI]
				DIV NUM[1]	;NUM[1] = 10(1BYTE)
				MOV CX,AX
				MOV AH,02H
				MOV DL,'('
				INT 21H
				MOV DL,CL
				ADD DL,30H
				INT 21H
				MOV DL,CH
				ADD DL,30H
				INT 21H
				MOV DL,')'
				INT 21H
				JMP INPQTY
			
			
		CALC_TOTAL_AMOUNT:
			ADD TOTAL_AMOUNT,AX
			

		CONTINUE_LABEL:
			MOV AH,09H
			LEA DX,STR_CONTINUE
			INT 21H
			
			MOV AL,0
			MOV AH,01H
			INT 21H
			MOV YESNO,AL
			
			CMP YESNO,'Y'
			JE CONTINUE
			CMP YESNO,'N'
			JE PAYMENT
			CMP YESNO,'y'
			JE CONTINUE
			CMP YESNO,'n'
			JE PAYMENT
			JMP CONTINUE_ERROR
			
			
			
		CONTINUE:
			JMP FRUIT_MENU
			
		CONTINUE_ERROR:
			MOV BH,0
			MOV AH,09H
			LEA DX,NL	;NEWLINE
			INT 21H
			MOV BL,04H	;RED COLOR
			MOV CX,53	;COLUMN NUM
			INT 10H
			LEA DX,IYESNO
			INT 21H
			JMP CONTINUE_LABEL


		;--------------------------PAYMENT PAGE--------------------------------
		PAYMENT:
			;---4 DIGIT TOTAL AMOUNT
			MOV DX,TOTAL_AMOUNT
			MOV SI,0
			MOV CX,4	
			FIND_TOTAL_AMOUNT_DGT:
				MOV AX,DX
				MOV DX,0	;CLEAR DX
				MUL NUM_2B[2]	;[x10(2byte)]
				DIV NUM_2B[8]	;[ /10000(2byte)]
				MOV TOTAL_AMOUNT_DGT[SI],AL
				INC SI
			LOOP FIND_TOTAL_AMOUNT_DGT
			;----------------------------

			;---COUNT SST (x5)
			MOV AX,TOTAL_AMOUNT 
			MUL SST ;SST = 5%
			
			;-----COUNT SST ( /100 )
			DIV NUM_2B[4]	;AX=QUOTIENT, DX=REMAINDER
			MOV DGTSST,AX
			MOV DP,DX
			
			;----SST_4 DIGIT
			MOV DX,DGTSST
			MOV SI,0
			MOV CX,4	
			FIND_SST_DGT:
				MOV AX,DX
				MOV DX,0	;CLEAR DX
				MUL NUM_2B[2]
				DIV NUM_2B[8]
				MOV SST_DIGIT[SI],AL
				INC SI
			LOOP FIND_SST_DGT
			

			;---3 decimal place for sst
			MOV DX,DP
			MOV SI,0
			MOV CX,3	;LOOP 3 TIMES TO GET 3DP
			FIND_DECIMAL:
				MOV AX,DX
				MOV DX,0	;CLEAR DX
				MUL NUM[1]
				DIV NUM_2B[4]
				MOV SST_DECIMAL[SI],AL
				INC SI
			LOOP FIND_DECIMAL
			;-----------------------------
			

			;---COUNT FINAL AMOUNT
			;-- add digit
			MOV DX,DGTSST
			ADD TOTAL_AMOUNT,DX
			
			
			;----FINAL_AMOUNT_4 DGT
			MOV DX,TOTAL_AMOUNT
			MOV SI,0
			MOV CX,4	
			FIND_FINAL_AMOUNT:
				MOV AX,DX
				MOV DX,0	;CLEAR DX
				MUL NUM_2B[2]
				DIV NUM_2B[8]
				MOV FINAL_AMOUNT[SI],AL
				INC SI
			LOOP FIND_FINAL_AMOUNT
			
			;CLEAR SCR
			MOV AX,03H
			INT 10H

			
		;---------------------------------DISPLAY TIME AND DATE
				MOV AH,09H
				LEA DX,NL
				INT 21H
				MOV AH,09H
				
				LEA DX,TIME
				INT 21H
				
				MOV AH, 2CH     ; TO GET SYSTEM TIME [HH IN CH, MM IN CL, SS IN DH]
				INT 21H         ; DOS INTERRUPT TO GET TIME

				MOV AL, CH      ; HOUR IN CH
				  AAM           ; ASCII ADJUST AFTER MULTIPLICATION [AX REGISTER]
				  MOV BX, AX    ; LOADING ADJUSTED VALUE TO BX
				  ADD BX, 3030H ; ADD 3030 TO PROPERLY PRINT THE DATA

				  MOV DL, BH    ; TO PRINT FIRST DIGIT OF DATA
				  MOV AH, 02H
				  INT 21H
				  MOV DL, BL    ; TO PRINT SECOND DIGIT OF DATA
				  MOV AH, 02H
				  INT 21H

				MOV DL, ':'     ; COPY : TO DL TO PRINT
				MOV AH, 02H     ; COPY 02 TO AH
				INT 21H         ; DOS INTERRUPT TO DISPLAY CONTENT IN DL I.E. : 

				MOV AL, CL      ; MINUTES IN CL
				  AAM           ; ASCII ADJUST AFTER MULTIPLICATION [AX REGISTER]
				  MOV BX, AX    ; LOADING ADJUSTED VALUE TO BX
				  ADD BX, 3030H ; ADD 3030 TO PROPERLY PRINT THE DATA

				  MOV DL, BH    ; TO PRINT FIRST DIGIT OF DATA
				  MOV AH, 02H
				  INT 21H
				  MOV DL, BL    ; TO PRINT SECOND DIGIT OF DATA
				  MOV AH, 02H
				  INT 21H

				MOV DL, ':'     ; TO PRINT : AS ABOVE
				MOV AH, 02H     
				INT 21H         

				MOV AL, DH      ; SECONDS IN DH AS SS
				  AAM           ; ASCII ADJUST AFTER MULTIPLICATION [AX REGISTER]
				  MOV BX, AX    ; LOADING ADJUSTED VALUE TO BX
				  ADD BX, 3030H ; ADD 3030 TO PROPERLY PRINT THE DATA

				  MOV DL, BH    ; TO PRINT FIRST DIGIT OF DATA
				  MOV AH, 02H
				  INT 21H
				  MOV DL, BL    ; TO PRINT SECOND DIGIT OF DATA
				  MOV AH, 02H
				  INT 21H

				MOV AH,09H
				LEA DX,SPACE
				INT 21H
				
				MOV AH,09H
				LEA DX,DATE
				INT 21H

				MOV AH, 2AH     ; TO GET SYSTEM DATE [DD IN DL , MM IN DH, YYYY IN CX]
				INT 21H         ; DOS INTERRUPT TO GET DATE

				MOV AL, DL      ; DAY IN DL
				  AAM           ; ASCII ADJUST AFTER MULTIPLICATION [AX REGISTER]
				  MOV BX, AX    ; LOADING ADJUSTED VALUE TO BX
				  ADD BX, 3030H ; ADD 3030 TO PROPERLY PRINT THE DATA

				  MOV DL, BH    ; TO PRINT FIRST DIGIT OF DATA
				  MOV AH, 02H
				  INT 21H
				  MOV DL, BL    ; TO PRINT SECOND DIGIT OF DATA
				  MOV AH, 02H
				  INT 21H
				MOV DL, '/'     ; TO PRINT /
				MOV AH, 02H
				INT 21H

				MOV AL, DH      ; MONTH IN DH
				  AAM           ; ASCII ADJUST AFTER MULTIPLICATION [AX REGISTER]
				  MOV BX, AX    ; LOADING ADJUSTED VALUE TO BX
				  ADD BX, 3030H ; ADD 3030 TO PROPERLY PRINT THE DATA

				  MOV DL, BH    ; TO PRINT FIRST DIGIT OF DATA
				  MOV AH, 02H
				  INT 21H
				  MOV DL, BL    ; TO PRINT SECOND DIGIT OF DATA
				  MOV AH, 02H
				  INT 21H
				MOV DL, '/'     ; TO PRINT /
				MOV AH, 02H
				INT 21H

				ADD CX, 0F830H  ; ADD 0F830 TO ADJUST HEXADECIMAL EFFECTS ON YEAR
				MOV AX, CX      ; YEAR IN AX 
				  AAM           ; ASCII ADJUST AFTER MULTIPLICATION [AX REGISTER]
				  MOV BX, AX    ; LOADING ADJUSTED VALUE TO BX
				  ADD BX, 3030H ; ADD 3030 TO PROPERLY PRINT THE DATA

				  MOV DL, BH    ; TO PRINT FIRST DIGIT OF DATA
				  MOV AH, 02H
				  INT 21H
				  MOV DL, BL    ; TO PRINT SECOND DIGIT OF DATA
				  MOV AH, 02H
				  INT 21H

				MOV DL, 0DH     ; TO PRINT 0D [\R]
				MOV AH, 02H
				INT 21H

				MOV DL, 0AH     ; TO PRINT 0A [\N]
				MOV AH, 02H
				INT 21H
			;-----------------------------------------------------
			
			MOV AH,09H
			LEA DX,PAYMENTHEAD
			INT 21H
			LEA DX,PAYHEADER
			INT 21H
				
			MOV SI,0
		PRINT_PAYMENT:
			CMP TOTALQTY_FRUIT[SI],0
			JE SKIP_FRUIT_NEXT	;SKIP FRUIT IF QTY = 0
			MOV AH,02H
			MOV DL,COUNT_NO	;NO COUNT
			INT 21H
			INC COUNT_NO
			MOV AH,02H
			MOV DL,DOT
			INT 21H
			MOV AH,02H
			MOV DL,20H	;SPACE
			INT 21H
			
			CMP SI,0
			JE PRINT_FRUIT0
			CMP SI,1
			JE PRINT_FRUIT1
			CMP SI,2
			JE PRINT_FRUIT2
			CMP SI,3
			JE PRINT_FRUIT3
			CMP SI,4
			JE PRINT_FRUIT4
			MOV AH,09H
			LEA DX,FRUIT5
			INT 21H
			JMP PRINT_TOTAL_QTY_FRUIT
			
		PRINT_FRUIT0:
			MOV AH,09H
			LEA DX,FRUIT0
			INT 21H
			JMP PRINT_TOTAL_QTY_FRUIT
		PRINT_FRUIT1:
			MOV AH,09H
			LEA DX,FRUIT1
			INT 21H
			JMP PRINT_TOTAL_QTY_FRUIT
		PRINT_FRUIT2:
			MOV AH,09H
			LEA DX,FRUIT2
			INT 21H
			JMP PRINT_TOTAL_QTY_FRUIT
		PRINT_FRUIT3:
			MOV AH,09H
			LEA DX,FRUIT3
			INT 21H
			JMP PRINT_TOTAL_QTY_FRUIT
		PRINT_FRUIT4:
			MOV AH,09H
			LEA DX,FRUIT4
			INT 21H
			JMP PRINT_TOTAL_QTY_FRUIT

		SKIP_FRUIT_NEXT:	;PREVENT JUMP OUT OF RANGE
			JMP SKIP_FRUIT	
			
		PRINT_TOTAL_QTY_FRUIT:
			MOV AH,0		;3DGT TOTAL QTY
			MOV AL,TOTALQTY_FRUIT[SI]
			DIV NUM[2] ;AH=34 AL=2
			MOV BX,AX
			MOV AH,0
			MOV AL,BH
			DIV NUM[1] ;AH=4 AL=3
			MOV CX,AX
			MOV AH,02H	;PRINT 1ST DGT
			MOV DL,BL
			ADD DL,30H
			INT 21H     
			MOV DL,CL
			ADD DL,30H	;;PRINT 2ND DGT
			INT 21H
			MOV DL,CH	;PRINT 3RD DGT
			ADD DL,30H
			INT 21H
			

		PRINT_PRICE_FRUIT:
			CMP STOCK_PRICE_LIST[SI],10
			JL DGT1_PRICE_FRUIT
			MOV AH,0
			MOV AL,STOCK_PRICE_LIST[SI]	
			DIV NUM[1]
			MOV BX,AX
			MOV AH,09H
			LEA DX,SPACEFEED		;TAB
			INT 21H
			MOV AH,02H
			MOV DL,'R'
			INT 21H
			MOV DL,'M'
			INT 21H
			MOV AH,02H
			MOV DL,20H	;SPACE
			INT 21H
			MOV DL,BL		;DISPLAY PRICE FRUIT
			ADD DL,30H
			INT 21H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			MOV AH,09H
			LEA DX,SPACEFEED2
			INT 21H
			MOV AH,02H
			MOV DL,'R'
			INT 21H
			MOV DL,'M'
			INT 21H
			JMP CALC_SUBTOTAL
			
		DGT1_PRICE_FRUIT:
			MOV AH,09H
			LEA DX,SPACEFEED		;TAB
			INT 21H
			MOV AH,02H
			MOV DL,'R'
			INT 21H
			MOV DL,'M'
			INT 21H
			MOV AH,02H
			MOV DL,20H	;SPACE
			INT 21H
			MOV DL,20H	;SPACE
			INT 21H
			MOV AH,02H
			MOV DL,STOCK_PRICE_LIST[SI]
			ADD DL,30H
			INT 21H
			MOV AH,09H
			LEA DX,SPACEFEED2
			INT 21H
			MOV AH,02H
			MOV DL,'R'
			INT 21H
			MOV DL,'M'
			INT 21H
			
		CALC_SUBTOTAL:
			MOV AX,SI
			MUL TWO1B		;CAUSE 2BYTE INDEX = 0,2,4,6,8
			MOV DI,AX
			MOV AX,0
			
			;---CALC 4 DIGIT for SUBTOTAL
			MOV DX,SUBTOTAL[DI]
			MOV DI,0
			MOV CX,4	
			FIND_SUBTOTAL_AMOUNT:
				MOV AX,DX
				MOV DX,0	;CLEAR DX
				MUL NUM_2B[2]
				DIV NUM_2B[8]
				MOV SUBTOTAL_DGT[DI],AL
				INC DI
			LOOP FIND_SUBTOTAL_AMOUNT
			
		;------------PRINT SUBTOTAL-----------------
			CMP SUBTOTAL_DGT[0],0
			JE DGT3_SUBTOTAL
			MOV DI,0	;VALUE LIKE 4000 WILL NOT IGNORE ZERO VALUE
			MOV CX,4
			MOV AH,02H
			MOV DL,20H	;SPACE
			INT 21H
			PRINT_SUBTOTAL_DGT:
				MOV DL,SUBTOTAL_DGT[DI]
				ADD DL,30H
				INT 21H
				INC DI
			LOOP PRINT_SUBTOTAL_DGT
			JMP CLEAR_VALUE_SUBTOTAL
			
		DGT3_SUBTOTAL:
			CMP SUBTOTAL_DGT[1],0
			JE DGT2_SUBTOTAL
			MOV DI,1	;VALUE LIKE 0400 WILL NOT IGNORE ZERO VALUE
			MOV CX,3
			MOV AH,02H
			MOV DL,20H	;SPACE
			INT 21H
			MOV DL,20H	;SPACE
			INT 21H
			PRINT_SUBTOTAL_DGT2:
				MOV DL,SUBTOTAL_DGT[DI]
				ADD DL,30H
				INT 21H
				INC DI
			LOOP PRINT_SUBTOTAL_DGT2
			JMP CLEAR_VALUE_SUBTOTAL	
			
		PRINT_PAYMENT_UP:	;PREVENT JUMP OUT OF RANGE
			JMP PRINT_PAYMENT
			
		DGT2_SUBTOTAL:
			CMP SUBTOTAL_DGT[2],0
			JE DGT1_SUBTOTAL
			MOV CX,3
			SPACELOOP2:
				MOV AH,02H
				MOV DL,20H	;SPACE
				INT 21H
			LOOP SPACELOOP2
			MOV AH,02H	;VALUE LIKE 0040 WILL NOT IGNORE ZERO VALUE
			MOV DL,SUBTOTAL_DGT[2]
			ADD DL,30H
			INT 21H
			MOV DL,SUBTOTAL_DGT[3]
			ADD DL,30H
			INT 21H
			JMP CLEAR_VALUE_SUBTOTAL
			
		DGT1_SUBTOTAL:
			MOV CX,4
			SPACELOOP3:
				MOV AH,02H
				MOV DL,20H	;SPACE
				INT 21H
			LOOP SPACELOOP3
			MOV AH,02H	;VALUE LIKE 0004 WILL NOT IGNORE ZERO VALUE 
			MOV DL,SUBTOTAL_DGT[3]
			ADD DL,30H
			INT 21H
			
		CLEAR_VALUE_SUBTOTAL:
			MOV AH,09H
			LEA DX,NL
			INT 21H
			
			SKIP_FRUIT:
				INC SI
			CMP SI,5
			JLE PRINT_PAYMENT_UP

			MOV AH,09H
			LEA DX,PAYMENTFOOT
			INT 21H
			;--------------------------------------------
			
			MOV AH,09H
			LEA DX,AMOUNT_STR
			INT 21H
			
			;------------------------PRINT AMOUNT
			CMP TOTAL_AMOUNT_DGT[0],0
			JE APPROACH2
			MOV SI,0	;VALUE LIKE 4000 WILL NOT IGNORE ZERO VALUE
			MOV CX,3
			MOV AH,02H
			PRINT_TOTAL_AMT:
				MOV DL,TOTAL_AMOUNT_DGT[SI]
				ADD DL,30H
				INT 21H 
				INC SI
			LOOP PRINT_TOTAL_AMT
			JMP LASTDGTP

		APPROACH2:
			CMP TOTAL_AMOUNT_DGT[1],0
			JE APPROACH3
			MOV SI,1	;VALUE LIKE 0400 WILL NOT IGNORE ZERO VALUE
			MOV CX,2
			MOV AH,02H
			PRINT_TOTAL_AMT2:
				MOV DL,TOTAL_AMOUNT_DGT[SI]
				ADD DL,30H
				INT 21H 
				INC SI
			LOOP PRINT_TOTAL_AMT2
			JMP LASTDGTP
			
		APPROACH3:
			CMP TOTAL_AMOUNT_DGT[2],0
			JE LASTDGTP
			MOV AH,02H	;VALUE LIKE 0040 WILL NOT IGNORE ZERO VALUE
			MOV DL,TOTAL_AMOUNT_DGT[2]
			ADD DL,30H
			INT 21H 
			

		LASTDGTP:
			MOV AH,02H 	;VALUE LIKE 0004 WILL NOT IGNORE ZERO VALUE
			MOV DL,TOTAL_AMOUNT_DGT[3]
			ADD DL,30H
			INT 21H
			
			MOV AH,09H
			LEA DX,SST_STR
			INT 21H
			
			;----------------------PRINT AMOUNT SST
			CMP SST_DIGIT[0],0
			JE METHOD2
			MOV SI,0	;VALUE LIKE 4000 WILL NOT IGNORE ZERO VALUE
			MOV CX,3
			MOV AH,02H
			PRINT_SST_DGT:
				MOV DL,SST_DIGIT[SI]
				ADD DL,30H
				INT 21H
				INC SI
			LOOP PRINT_SST_DGT
			JMP CONTINUEP
			
		METHOD2:
			CMP SST_DIGIT[1],0
			JE METHOD3
			MOV SI,1	;VALUE LIKE 0400 WILL NOT IGNORE ZERO VALUE
			MOV CX,2
			MOV AH,02H
			PRINT_SST_DGT2:
				MOV DL,SST_DIGIT[SI]
				ADD DL,30H
				INT 21H
				INC SI
			LOOP PRINT_SST_DGT2
			JMP CONTINUEP	
			
			
		METHOD3:
			CMP SST_DIGIT[2],0
			JE CONTINUEP
			MOV AH,02H	;VALUE LIKE 0040 WILL NOT IGNORE ZERO VALUE
			MOV DL,SST_DIGIT[2]
			ADD DL,30H
			INT 21H
			
		CONTINUEP:
			MOV AH,02H	;VALUE LIKE 0004 WILL NOT IGNORE ZERO VALUE 
			MOV DL,SST_DIGIT[3]
			ADD DL,30H
			INT 21H
			MOV DL,DOT
			INT 21H
			
			MOV SI,0
			MOV CX,3
		PRINT_DECIMAL:
			MOV DL,SST_DECIMAL[SI]
			ADD DL,30H
			INT 21H	
			INC SI
			LOOP PRINT_DECIMAL


			MOV AH,09H
			LEA DX,TOTAL_AMOUNT_STR
			INT 21H
			
			;-------------------------PRINT FINAL AMOUNT
			CMP FINAL_AMOUNT[0],0
			JE SOLUTION2
			MOV SI,0	;VALUE LIKE 4000 WILL NOT IGNORE ZERO VALUE
			MOV CX,3
			MOV AH,02H
			PRINT_FINAL_AMT:
				MOV DL,FINAL_AMOUNT[SI]
				ADD DL,30H
				INT 21H 
				INC SI
			LOOP PRINT_FINAL_AMT
			JMP CONTINUEDGT

		SOLUTION2:
			CMP FINAL_AMOUNT[1],0
			JE SOLUTION3
			MOV SI,1	;VALUE LIKE 0400 WILL NOT IGNORE ZERO VALUE
			MOV CX,2
			MOV AH,02H
			PRINT_FINAL_AMT2:
				MOV DL,FINAL_AMOUNT[SI]
				ADD DL,30H
				INT 21H 
				INC SI
			LOOP PRINT_FINAL_AMT2
			JMP CONTINUEDGT
			
		SOLUTION3:
			CMP FINAL_AMOUNT[2],0
			JE CONTINUEDGT
			MOV AH,02H	;VALUE LIKE 0040 WILL NOT IGNORE ZERO VALUE
			MOV DL,FINAL_AMOUNT[2]
			ADD DL,30H
			INT 21H 
			

		CONTINUEDGT:
			MOV AH,02H 	;VALUE LIKE 0004 WILL NOT IGNORE ZERO VALUE
			MOV DL,FINAL_AMOUNT[3]
			ADD DL,30H
			INT 21H
			MOV DL,DOT
			INT 21H
			
			MOV SI,0
			MOV CX,3
		PRINT_AMT_DECIMAL:
			MOV DL,SST_DECIMAL[SI]
			ADD DL,30H
			INT 21H	
			INC SI
			LOOP PRINT_AMT_DECIMAL
			
	;------------------------------UPDATE AND RESET TOTALQTY,AMOUNT,SST,SUBTOTAL,COUNT_ATTEMPT------------------------
		INC COUNT_ATTEMPT[0]
		MOV COUNT_NO,'1'
	
		MOV SI,0
		MOV CX,6
		TO0_TOTALQTY:	;RESET QTY PURCHASE
			MOV TOTALQTY_FRUIT[SI],0
			INC SI
		LOOP TO0_TOTALQTY
		
		MOV TOTAL_AMOUNT,0	;RESET AMOUNT
		
		MOV SI,0
		MOV CX,4
		TO0_TOTAL_AMOUNTDGT:	
			MOV TOTAL_AMOUNT_DGT[SI],0
			INC SI
		LOOP TO0_TOTAL_AMOUNTDGT
		
		MOV SI,0
		MOV CX,4
		TO0_FAMOUNT: ;RESET FINAL AMOUNT
			MOV FINAL_AMOUNT[SI],0
			INC SI
		LOOP TO0_FAMOUNT
		
		MOV SI,0
		MOV CX,4
		TO0_SST_DGT: ;RESET SST DGT
			MOV SST_DIGIT[SI],0
			INC SI
		LOOP TO0_SST_DGT
		
		MOV SI,0
		MOV CX,3
		TO0_SST_DP: ;RESET SST DP
			MOV SST_DECIMAL[SI],0
			INC SI
		LOOP TO0_SST_DP
		
		MOV SI,0
		MOV CX,6
		TO0_SUBTOTAL: ;RESET SUBTOTAL
			MOV SUBTOTAL[SI],0
			ADD SI,2
		LOOP TO0_SUBTOTAL
		
		MOV SI,0
		MOV CX,4
		TO0_SUBTOTAL_DGT: ;RESET SUBTOTAL DGT
			MOV SUBTOTAL_DGT[SI],0
			INC SI
		LOOP TO0_SUBTOTAL_DGT

	;----------------------------------------------------------------------	
			
		CONTINUE_LABEL1:
			MOV AH,09H
			LEA DX,STR_CONTINUE1
			INT 21H
			
			
			MOV AH,01H
			INT 21H
			MOV YESNO1,AL
			
			CMP YESNO1,'Y'
			JE MAINMENU_LABEL
			CMP YESNO1,'N'
			JE EXIT_LABEL
			CMP YESNO1,'y'
			JE MAINMENU_LABEL
			CMP YESNO1,'n'
			JE EXIT_LABEL
			JMP CONTINUE_ERROR1
		
		MAINMENU_LABEL:
			JMP MAINMENU2
			
		EXIT_LABEL:
			JMP EXIT
			
		CONTINUE_ERROR1:
			MOV BH,0
			MOV AH,09H
			LEA DX,NL	;NEWLINE
			INT 21H
			MOV BL,04H	;RED COLOR
			MOV CX,53	;COLUMN NUM
			INT 10H
			LEA DX,IYESNO
			INT 21H
			JMP CONTINUE_LABEL1
			
;---------------------------end of purchase and payment page----------------------------

			
STOCK_LABEL:

	;--- Clear Screen
	MOV AX, 03H
	INT 10H
	
	MOV BH,0
	
	;MAIN FUNCTION MENU
	;FUNCTION HEADER
	MOV AH,09H
	LEA DX,STOCK_FUNCTION_HEADER
	INT 21H
	
STOCK_FUNCTION:
	;PROMPT STOCK FUNCTION
	MOV AH,09H
	LEA DX,STOCK_PROMPT_STOCK_FUNCTION
	INT 21H
	
	MOV AH,01H
	INT 21H
	MOV STOCK_USER_SELECT_FUNCTION,AL
	MOV AH,09H
	LEA DX,NL
	INT 21H
	
	;IF USER INPUT = 1
	CMP STOCK_USER_SELECT_FUNCTION,'1'
	JE STOCK_DISPLAY
	;IF USER INPUT = 2
	CMP STOCK_USER_SELECT_FUNCTION,'2'
	JE STOCK_DISPLAY
	;IF USER INPUT = 3
	CMP STOCK_USER_SELECT_FUNCTION,'3'
	JE STOCK_DISPLAY
	;ELSE
	;DISPLAY ERROR MESSAGE
	MOV BH,0
	MOV AH,09H
	MOV BL,04H	;RED COLOR
	MOV CX,37	;COLUMN NUM
	INT 10H
	LEA DX,STOCK_INPUT_ERROR_MSG_FUNCTION
	INT 21H
	JMP STOCK_FUNCTION
	
STOCK_REPEAT:
	;PROMPT REPEAT MESSAGE
	MOV AH,09H
	LEA DX,STOCK_PROMPT_REPEAT
	INT 21H
	
	MOV AH,01H
	INT 21H
	MOV AH,09H
	LEA DX,NL
	INT 21H
	
	CMP AL,'Y'
	JE STOCK_FUNCTION
	CMP AL,'y'
	JE STOCK_FUNCTION
	CMP AL,'N'
	JE STOCK_END_TEMP
	CMP AL,'n'
	JE STOCK_END_TEMP
	
	;ERROR MESSAGE
	MOV BH,0
	MOV AH,09H
	MOV BL,04H	;RED COLOR
	MOV CX,52	;COLUMN NUM
	INT 10H
	LEA DX,STOCK_INPUT_ERROR_MSG_YES_NO
	INT 21H
	JMP STOCK_REPEAT
	
;OUTOFRANGE---------------------------------------------
STOCK_END_TEMP:
	INC COUNT_ATTEMPT[1]
	JMP CONTINUE_LABEL2
;-------------------------------------------------------
;DISPLAY FUNCTION
STOCK_DISPLAY:
	;HEADER
	MOV AH,09H
	LEA DX,STOCK_NAME_HEADER
	INT 21H
	
	;RESET
	MOV STOCK_STOP_NAME,0
	MOV STOCK_STOP_TYPE,0
	MOV SI,0
	MOV STOCK_NUM,'1'
	
	;NO.
STOCK_LOOP:
	MOV AH,02H
	MOV DL,STOCK_NUM
	INC STOCK_NUM
	INT 21H
	MOV AH,02H
	MOV DL,DOT
	INT 21H
	
	;STOCK NAME
	;CONTINUE THE STRING THAT STOP LAST LOOP
	MOV DI,STOCK_STOP_NAME
	MOV CH,0
	;CONTROL TIME TO PRINT STRING
	MOV CL,STOCK_NAME_LENGTH[SI]
STOCK_LOOP_NAME:
	MOV AH,02H
	MOV DL,STOCK_NAME_LIST[DI]
	INC DI
	INT 21H
	LOOP STOCK_LOOP_NAME
	;STORE THE ARRAY OF CURRENT STRING
	MOV STOCK_STOP_NAME,DI
	
	;STOCK TYPE
	MOV DI,STOCK_STOP_TYPE
	MOV CH,0
	MOV CL,STOCK_TYPE_LENGTH[SI]
STOCK_LOOP_TYPE:
	MOV AH,02H
	MOV DL,STOCK_TYPE_LIST[DI]
	INC DI
	INT 21H
	LOOP STOCK_LOOP_TYPE
	MOV STOCK_STOP_TYPE,DI
	
	;STOCK QUANTITY
	;DW = +2
	MOV AX,SI
	MUL TWO
	MOV DI,AX
	MOV BX,6
	MOV CX,4
STOCK_NUMBER:
	MOV DX,0
	MOV AX,STOCK_QTY_LIST[DI]
	DIV NUM_2B[BX]
	MOV DX,0
	DIV NUM_2B[2];10
	;PRINT
	ADD DX,30H
	MOV AH,02H
	INT 21H
	SUB BX,2
	LOOP STOCK_NUMBER
	
	;STOCK PRICE
	MOV AH,09H
	LEA DX,RM
	INT 21H
	
	MOV AH,0
	MOV AL,STOCK_PRICE_LIST[SI]
	DIV NUM[1]
	MOV BX,AX
	;PRINT TEN
	MOV AH,02H
	MOV DL,BL
	ADD DL,30H
	INT 21H
	;PRINT DIGIT
	MOV AH,02H
	MOV DL,BH
	ADD DL,30H
	INT 21H
	MOV AH,09H
	LEA DX,NL
	INT 21H
	
	INC SI
	;NUMBER OF PRODUCT IS 6
	CMP SI,6
	JL STOCK_LOOP_TEMP
	;FOOTER
	MOV AH,09H
	LEA DX,STOCK_NAME_FOOTER
	INT 21H
	
	CMP STOCK_USER_SELECT_FUNCTION,'2'
	JE STOCK_CHOOSE_LINE_FUNCTION
	CMP STOCK_USER_SELECT_FUNCTION,'3'
	JE STOCK_MODIFY_MENU
	;IF USER INPUT IN MAIN FUNCTION MENU = 1
	JMP STOCK_REPEAT
;MODIFY FUNCTION MENU
STOCK_MODIFY_MENU:
	;PROMPT MODIFY FUNCTION
	MOV AH,09H
	LEA DX,STOCK_PROMPT_MODIFY_STOCK_FUNCTION
	INT 21H
	MOV AH,01H
	INT 21H
	MOV AH,09H
	LEA DX,NL
	INT 21H
	
	CMP AL,'1'
	JE STOCK_CHOOSE_LINE_FUNCTION
	;JMP TO (STOCK_CHOOSE_LINE_FUNCTION) WILL GO TO SET_PRICE FUNCTION
	MOV STOCK_CHOOSE_PRICE,1
	CMP AL,'2'
	JE STOCK_CHOOSE_LINE_FUNCTION
	;RESET IF USER INPUT IS ERROR
	MOV STOCK_CHOOSE_PRICE,0
	MOV BH,0
	MOV AH,09H
	MOV BL,04H	;RED COLOR
	MOV CX,39	;COLUMN NUM
	INT 10H
	LEA DX,STOCK_INPUT_ERROR_MSG_CHOOSE
	INT 21H
	JMP STOCK_MODIFY_MENU
;OUTOFRANGE---------------------------------------------
STOCK_LOOP_TEMP:
	JMP STOCK_LOOP
STOCK_SET_PRICE_TEMP:
	JMP STOCK_SET_PRICE
STOCK_USER_INPUT_ERROR_TEMP:
	JMP STOCK_USER_INPUT_ERROR
;-------------------------------------------------------
STOCK_USER_CHOOSE_LINE_ERROR:
	;ERROR MESSAGE
	MOV BH,0
	MOV AH,09H
	MOV BL,04H	;RED COLOR
	MOV CX,35	;COLUMN NUM
	INT 10H
	LEA DX,STOCK_INPUT_ERROR_MSG_CHOOSE_LINE
	INT 21H
STOCK_CHOOSE_LINE_FUNCTION:
	;PROMPT LINE
	MOV AH,09H
	LEA DX,STOCK_PROMPT_LINE_STOCK_FUNCTION
	INT 21H
STOCK_USER_INPUT:
	;USER INPUT LINE
	MOV AH,01H
	INT 21H
	MOV AH,0
	MOV STOCK_LINE_CHOSEN,AX
	MOV AH,09H
	LEA DX,NL
	INT 21H
	;<1 OR >6 = ERROR
	CMP AL,'1'
	JL STOCK_USER_CHOOSE_LINE_ERROR
	CMP AL,'6'
	JG STOCK_USER_CHOOSE_LINE_ERROR
	
	;DEC 1
	SUB STOCK_LINE_CHOSEN,31H
	;IF USER CHOOSE SET PRICE WILL GO TO STOCK_SET_PRICE (MODIFY)
	CMP STOCK_CHOOSE_PRICE,1
	JE STOCK_SET_PRICE_TEMP
STOCK_INPUT_NUMBER:
	;PROMPT NUMBER OF ADD STOCK
	MOV AH,09H
	LEA DX,STOCK_PROMPT_STOCK_NUMBER
	INT 21H
	;USER ENTER A NUMBER
	MOV AH,0AH
	LEA DX,STOCK_USER_INPUT_STOCK
	INT 21H
	MOV AH,09H
	LEA DX,NL
	INT 21H
	
	;RESET
	MOV STOCK_TOTAL,0
	
	MOV SI,0
	MOV CH,0
	MOV CL,STOCK_ACTN
	MOV AX,CX
	DEC AX
	MUL TWO
	MOV DI,AX
STOCK_LOOP_USER_INPUT:
	;GET NUMBER
	CMP STOCK_USER_INPUT_STOCK_NUMBER[SI],'0'
	JL STOCK_USER_INPUT_ERROR_TEMP
	CMP STOCK_USER_INPUT_STOCK_NUMBER[SI],'9'
	JG STOCK_USER_INPUT_ERROR_TEMP
	SUB STOCK_USER_INPUT_STOCK_NUMBER[SI],30H
	
	;READ AND STORE DIGIT
	MOV AH,0
	MOV AL,STOCK_USER_INPUT_STOCK_NUMBER[SI]
	MUL NUM_2B[DI]
	ADD STOCK_TOTAL,AX
	
	INC SI
	SUB DI,2
	LOOP STOCK_LOOP_USER_INPUT
	
	;DW = +2
	MOV AX,STOCK_LINE_CHOSEN
	MUL TWO
	MOV SI,AX
	MOV CX,STOCK_TOTAL
	
	CMP STOCK_USER_SELECT_FUNCTION,'3'
	JE STOCK_MODIFY_FUNCTION
	
STOCK_ADD_FUNCTION:
	;ADD QUANTITY OF PRODUCT
	ADD STOCK_QTY_LIST[SI],CX
	CMP STOCK_QTY_LIST[SI],9999
	JG STOCK_EXCEED
	JMP STOCK_REPEAT
STOCK_EXCEED:
	MOV STOCK_QTY_LIST[SI],9999
	MOV AH,09H
	LEA DX,STOCK_EXCEED_MSG
	INT 21H
	JMP STOCK_REPEAT
STOCK_MODIFY_FUNCTION:
	;SET QUANTITY OF PRODUCT
	MOV STOCK_QTY_LIST[SI],CX
	JMP STOCK_REPEAT
	
STOCK_USER_INPUT_ERROR:
	;ERROR MESSAGE
	MOV BH,0
	MOV AH,09H
	MOV BL,04H	;RED COLOR
	MOV CX,45	;COLUMN NUM
	INT 10H
	LEA DX,STOCK_INPUT_ERROR_MSG_STOCK
	INT 21H
	JMP STOCK_INPUT_NUMBER

STOCK_SET_PRICE:
	;PROMPT PRICE
	MOV AH,09H
	LEA DX,STOCK_PROMPT_STOCK_PRICE
	INT 21H
	MOV AH,0AH
	LEA DX,STOCK_USER_INPUT_PRICE
	INT 21H
	MOV AH,09H
	LEA DX,NL
	INT 21H
	MOV STOCK_USER_SET_PRICE,0
	
	MOV SI,0
	MOV CH,0
	MOV CL,STOCK_ACTNUM
	MOV AX,CX
	DEC AX
	MUL TWO
	MOV DI,AX
STOCK_LOOP_USER_INPUT_PRICE:
	;GET NUMBER
	CMP STOCK_USER_INPUT_PRICE_NUMBER[SI],'0'
	JL STOCK_USER_INPUT_PRICE_ERROR
	CMP STOCK_USER_INPUT_PRICE_NUMBER[SI],'9'
	JG STOCK_USER_INPUT_PRICE_ERROR
	SUB STOCK_USER_INPUT_PRICE_NUMBER[SI],30H
	;READ AND STORE DIGIT
	MOV AH,0
	MOV AL,STOCK_USER_INPUT_PRICE_NUMBER[SI]
	MUL NUM_2B[DI]
	ADD STOCK_USER_SET_PRICE,AL
	
	INC SI
	SUB DI,2
	LOOP STOCK_LOOP_USER_INPUT_PRICE
	
	;SET PRICE
	MOV SI,STOCK_LINE_CHOSEN
	MOV CL,STOCK_USER_SET_PRICE
	MOV STOCK_PRICE_LIST[SI],CL
	
	;RESET
	MOV STOCK_CHOOSE_PRICE,0
	
	JMP STOCK_REPEAT
STOCK_USER_INPUT_PRICE_ERROR:
	;DISPLAY ERROR MESSAGE
	MOV BH,0
	MOV AH,09H
	MOV BL,04H	;RED COLOR
	MOV CX,45	;COLUMN NUM
	INT 10H
	LEA DX,STOCK_INPUT_ERROR_MSG_PRICE
	INT 21H
	JMP STOCK_SET_PRICE

		
		CONTINUE_LABEL2:	;ASK USER BACK TO MENU
			MOV AH,09H
			LEA DX,STR_CONTINUE1
			INT 21H
			
			
			MOV AH,01H
			INT 21H
			MOV YESNO1,AL
			
			CMP YESNO1,'Y'
			JE MAINMENU_LABEL2
			CMP YESNO1,'N'
			JE EXIT_LABEL2
			CMP YESNO1,'y'
			JE MAINMENU_LABEL2
			CMP YESNO1,'n'
			JE EXIT_LABEL2
			JMP CONTINUE_ERROR2
		
		MAINMENU_LABEL2:
			JMP MAINMENU2
			
		EXIT_LABEL2:
			JMP EXIT
			
		CONTINUE_ERROR2:
			MOV BH,0
			MOV AH,09H
			LEA DX,NL	;NEWLINE
			INT 21H
			MOV BL,04H	;RED COLOR
			MOV CX,53	;COLUMN NUM
			INT 10H
			LEA DX,IYESNO
			INT 21H
			JMP CONTINUE_LABEL2
		
ERRORMSG_LABEL:	;USED TO JUMP BACK TO MENU IF USER KEY IN NUMBER OUT OF RANGE
	MOV BH,00H
	MOV CX,0000H
	MOV DX,184FH
	INT 10H
	
	MOV AH,09H
	LEA DX,INVALIDMSG2
	INT 21H
	JMP MAINMENU2
	
	;---------------------------SUMMARY PAGE--------------------------
SUMMARY:
	;--- Clear Screen
	MOV AX, 03H
	INT 10H
			MOV AH,09H
		LEA DX,SUMMARY_LOGO
		INT 21H
		
	SUMMARY_START:
		;SUMMARY HEADER
		MOV AH,09H
		LEA DX,SUMMARY_FUNCTION_HEADER
		INT 21H
		
		;SUMAMRY OPTION
		MOV AH,09H
		LEA DX,SUMMARY_OPTIONS
		INT 21H
		
		;SCAN USER INPUT
		MOV AH,01H
		INT 21H
		SUB AL,30H
		MOV S_OPTIONS,AL
		
		;IF USER ENTER 2
		CMP S_OPTIONS,1
		JE SUMMARY_PRICE_FUNCTION
		;IF USER ENTER 2
		CMP S_OPTIONS,2
		JE X
		;IF USER ENTER 3
		CMP S_OPTIONS,3
		JE Y
		
		;IF USER ENTER SHIT PRINT ERROR MESSAGE
		MOV BH,0
		MOV AH,09H
		LEA DX,NL
		INT 21H
		MOV BL,04H;RED
		MOV CX,44;ERROR MESSAGE NUMBER
		INT 10H
		LEA DX,ERROR_MASSAGE
		INT 21H
		JMP SUMMARY_START
		
		X:
		JMP SUMMARY_STOCK_QUANTITY_FUNCTION
		
		Y:
		INC COUNT_ATTEMPT[2]
		JMP MAINMENU
	;SUMMARY DATE FUNCTION
	SUMMARY_PRICE_FUNCTION:
			
			MOV AH,09H;=====
			LEA DX,NEXT_PAGE
			INT 21H
			
			;PROMPT TO ASK FOR SELECTION OF FRUIT
			MOV AH,09H
			LEA DX,STOCK_SUMMARY_OPTIONS
			INT 21H
			
			MOV AH,01H
			INT 21H
			SUB AL,30H
			MOV PRICE_OPTION,AL
			
			CMP PRICE_OPTION,1
			JE GRAPE11
			CMP PRICE_OPTION,2
			JE JUMP2
			CMP PRICE_OPTION,3
			JE JUMP3
			
			;ERROR MESSAGE
			MOV BH,0
			MOV AH,09H
			LEA DX,NL
			INT 21H
			MOV BL,04H;RED
			MOV CX,44;ERROR MESSAGE NUMBER
			INT 10H
			LEA DX,ERROR_MASSAGE
			INT 21H
			JMP SUMMARY_PRICE_FUNCTION
			
			GRAPE11:
				MOV AH,09H;=====
				LEA DX,NEXT_PAGE
				INT 21H
				
				MOV AH,09H;TOP1
				LEA DX,STOCK_TOP1
				INT 21H
			
				;SHOW THE GRAPE TPE OPTION
				MOV AH,09H
				LEA DX,STOCK_GRAPE11
				INT 21H
				
				MOV AH,0H
				MOV AL,STOCK_PRICE_LIST[0]
				DIV TEN
				MOV BX,AX
		
				MOV AH,02H;DISPLAY FIRST NUM
				MOV DL,BL
				ADD DL,30H
				INT 21H
				JMP LINK4
				
				LINK3:
				JMP SUMMARY_PRICE_FUNCTION
				
				LINK4:
				MOV AH,02H; DISPLAY SECOND NUM
				MOV DL,BH
				ADD DL,30H
				INT 21H
				
				MOV AH,09H
				LEA DX,STOCK_GRAPE22
				INT 21H
				JMP LINK1
				
				JUMP2:
				JMP ORANGE11
				
				LINK1:
				MOV AH,0H
				MOV AL,STOCK_PRICE_LIST[1]
				DIV TEN
				MOV BX,AX
		
				MOV AH,02H;DISPLAY FIRST NUM
				MOV DL,BL
				ADD DL,30H
				INT 21H		
				JMP LINK2
				
				JUMP3:
				JMP APPLE11
				
				LINK2:
				MOV AH,02H; DISPLAY SECOND NUM
				MOV DL,BH
				ADD DL,30H
				INT 21H
				
				CONTINEW1:
				MOV AH,09H
				LEA DX,ASK_FOR_CON
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV CON_OPTION1,AL
				CMP CON_OPTION1,'Y'
				JE LINK3
				CMP CON_OPTION1,'y'
				JE LINK3
				CMP CON_OPTION1,'N'
				JE NO
				CMP CON_OPTION1,'n'
				JE NO
				
				;ERROR MESSAGE
				MOV BH,0
				MOV AH,09H
				LEA DX,NL
				INT 21H
				MOV BL,04H;RED
				MOV CX,44;ERROR MESSAGE NUMBER
				INT 10H
				LEA DX,ERROR_MASSAGE
				INT 21H
				
				JMP CONTINEW1
				
				NO: 
				JMP SUMMARY_START
				
			ORANGE11:
				MOV AH,09H;=====
				LEA DX,NEXT_PAGE
				INT 21H
				
				MOV AH,09H;TOP1
				LEA DX,STOCK_TOP1
				INT 21H
				JMP LINK6
				
				LINK5:
				JMP SUMMARY_PRICE_FUNCTION
				
				LINK6:
				;SHOW THE ORANGE TPE OPTION
				MOV AH,09H
				LEA DX,STOCK_ORANGE11
				INT 21H
				JMP LINK8
				
				LINK7:
				JMP NO
				
				LINK8:
				MOV AH,0H
				MOV AL,STOCK_PRICE_LIST[2]
				DIV TEN
				MOV BX,AX
		
				MOV AH,02H;DISPLAY FIRST NUM
				MOV DL,BL
				ADD DL,30H
				INT 21H
		
				MOV AH,02H; DISPLAY SECOND NUM
				MOV DL,BH
				ADD DL,30H
				INT 21H
				
				MOV AH,09H
				LEA DX,STOCK_ORANGE22
				INT 21H
				
				MOV AH,0H
				MOV AL,STOCK_PRICE_LIST[3]
				DIV TEN
				MOV BX,AX
		
				MOV AH,02H;DISPLAY FIRST NUM
				MOV DL,BL
				ADD DL,30H
				INT 21H
		
				MOV AH,02H; DISPLAY SECOND NUM
				MOV DL,BH
				ADD DL,30H
				INT 21H
				
				CONTINEW2:
				MOV AH,09H
				LEA DX,ASK_FOR_CON
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV CON_OPTION2,AL
				CMP CON_OPTION2,'Y'
				JE LINK5
				CMP CON_OPTION2,'y'
				JE LINK5
				CMP CON_OPTION2,'N'
				JE LINK7
				CMP CON_OPTION2,'n'
				JE LINK7
				
				;ERROR MESSAGE
				MOV BH,0
				MOV AH,09H
				LEA DX,NL
				INT 21H
				MOV BL,04H;RED
				MOV CX,44;ERROR MESSAGE NUMBER
				INT 10H
				LEA DX,ERROR_MASSAGE
				INT 21H
				
				JMP CONTINEW2
			
			APPLE11:
				MOV AH,09H;=====
				LEA DX,NEXT_PAGE
				INT 21H
				
				MOV AH,09H;TOP1
				LEA DX,STOCK_TOP1
				INT 21H
				JMP LINK10
				
				LINK9:
				JMP SUMMARY_PRICE_FUNCTION
				
				LINK10:
				;SHOW THE APPLE TPE OPTION
				MOV AH,09H
				LEA DX,STOCK_APPLE11
				INT 21H
				JMP LINK12
				
				LINK11:
				JMP NO
				
				LINK12:
				MOV AH,0H
				MOV AL,STOCK_PRICE_LIST[4]
				DIV TEN
				MOV BX,AX
		
				MOV AH,02H;DISPLAY FIRST NUM
				MOV DL,BL
				ADD DL,30H
				INT 21H
		
				MOV AH,02H;DISPLAY SECOND NUM
				MOV DL,BH
				ADD DL,30H
				INT 21H
				
				MOV AH,09H
				LEA DX,STOCK_APPLE22
				INT 21H
				
				MOV AH,0H
				MOV AL,STOCK_PRICE_LIST[5]
				DIV TEN
				MOV BX,AX
		
				MOV AH,02H;DISPLAY FIRST NUM
				MOV DL,BL
				ADD DL,30H
				INT 21H
		
				MOV AH,02H; DISPLAY SECOND NUM
				MOV DL,BH
				ADD DL,30H
				INT 21H
				
				CONTINEW3:
				MOV AH,09H
				LEA DX,ASK_FOR_CON
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV CON_OPTION3,AL
				CMP CON_OPTION3,'Y'
				JE LINK9
				CMP CON_OPTION3,'y'
				JE LINK9
				CMP CON_OPTION3,'N'
				JE LINK11
				CMP CON_OPTION3,'n'
				JE LINK11
				
				;ERROR MESSAGE
				MOV BH,0
				MOV AH,09H
				LEA DX,NL
				INT 21H
				MOV BL,04H;RED
				MOV CX,44;ERROR MESSAGE NUMBER
				INT 10H
				LEA DX,ERROR_MASSAGE
				INT 21H
				
				JMP CONTINEW3
				
	;SUMMARY STOCK QUANTITY FUNCTION
	SUMMARY_STOCK_QUANTITY_FUNCTION:
	
			MOV AH,09H;=====
			LEA DX,NEXT_PAGE
			INT 21H
			
			MOV AH,09H;TOTAL OF
			LEA DX,TOTAL_OF
			INT 21H
			
			MOV TOTAL_STOCK,0;FOR AVOID ADD LOOPING
			MOV SI,0
			MOV CX,6
		STOCK:
			MOV DX,STOCK_QTY_LIST[SI]
			ADD TOTAL_STOCK,DX
			ADD SI,2
		LOOP STOCK
		;TOTAL 9943
		
		MOV DX,0
		MOV AX,TOTAL_STOCK
		DIV THOUSAND
		MOV BX,AX
		MOV CX,DX
	
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
	
		MOV DX,0
		MOV AX,CX
		DIV HUNDRED
		MOV BL,AL
		MOV CX,DX
	
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
	
		MOV AH,0
		MOV AL,CL
		DIV TEN
		MOV BX,AX
	
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
	
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
			MOV AH,09H;FRUIT
			LEA DX,FRUIT
			INT 21H
			
			;PROMPT TO ASK FOR SELECTION OF FRUIT
			MOV AH,09H
			LEA DX,STOCK_SUMMARY_OPTIONS
			INT 21H
			
			MOV AH,01H
			INT 21H
			SUB AL,30H
			MOV FRUIT_OPTIONS,AL
			
			CMP FRUIT_OPTIONS,1
			JE GRAPE
			CMP FRUIT_OPTIONS,2
			JE ORANGE1
			CMP FRUIT_OPTIONS,3
			JE APPLE1
			
			;ERROR MESSAGE
			MOV BH,0
			MOV AH,09H
			LEA DX,NL
			INT 21H
			MOV BL,04H;RED
			MOV CX,44;ERROR MESSAGE NUMBER
			INT 10H
			LEA DX,ERROR_MASSAGE
			INT 21H
			JMP SUMMARY_STOCK_QUANTITY_FUNCTION
		
	GRAPE:
			MOV AH,09H;=====
			LEA DX,NEXT_PAGE
			INT 21H
			
			MOV AH,09H;TOP2
			LEA DX,STOCK_TOP2
			INT 21H
			
			;SHOW THE GRAPE TPE OPTION
			MOV AH,09H
			LEA DX,STOCK_GRAPE1
			INT 21H
			
			MOV DX,0
			MOV AX,STOCK_QTY_LIST[0]
			DIV THOUSAND
			MOV BX,AX
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV DX,0
			MOV AX,CX
			DIV HUNDRED
			MOV BL,AL
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			JMP CON1
			
			;SOME SHYT
			ORANGE1:
			JMP ORANGE2
			APPLE1:
			JMP APPLE2
			
			CON1:
			MOV AH,0
			MOV AL,CL
			DIV TEN
			MOV BX,AX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			
			MOV AH,09H
			LEA DX,STOCK_GRAPE2
			INT 21H
			
			MOV DX,0
			MOV AX,STOCK_QTY_LIST[2]
			DIV THOUSAND
			MOV BX,AX
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV DX,0
			MOV AX,CX
			DIV HUNDRED
			MOV BL,AL
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,0
			MOV AL,CL
			DIV TEN
			MOV BX,AX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			
			MOV AH,09H;=====
			LEA DX,TOTAL_LINE
			INT 21H
			
			MOV AH,09H
			LEA DX,TOTAL_GRAPE
			INT 21H
			
			MOV ALL_GRAPE,0;FOR AVOID ADD LOOPING
			MOV SI,0
			MOV CX,2
		STOCK1:
			MOV DX,STOCK_QTY_LIST[SI]
			ADD ALL_GRAPE,DX
			ADD SI,2
		LOOP STOCK1
			
			MOV DX,0
			MOV AX,ALL_GRAPE
			DIV THOUSAND
			MOV BX,AX
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV DX,0
			MOV AX,CX
			DIV HUNDRED
			MOV BL,AL
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,0
			MOV AL,CL
			DIV TEN
			MOV BX,AX
			JMP LINK16
			
			LINK15:
			JMP SUMMARY_STOCK_QUANTITY_FUNCTION
			
			LINK16:
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			JMP LINK14
			
			LINK13:
			JMP NO
			
			LINK14:
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			
			CONTINEW4:
				MOV AH,09H
				LEA DX,ASK_FOR_CON
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV CON_OPTION4,AL
				CMP CON_OPTION4,'Y'
				JE LINK15
				CMP CON_OPTION4,'y'
				JE LINK15
				CMP CON_OPTION4,'N'
				JE LINK13
				CMP CON_OPTION4,'n'
				JE LINK13
				
				;ERROR MESSAGE
				MOV BH,0
				MOV AH,09H
				LEA DX,NL
				INT 21H
				MOV BL,04H;RED
				MOV CX,44;ERROR MESSAGE NUMBER
				INT 10H
				LEA DX,ERROR_MASSAGE
				INT 21H
				
			JMP CONTINEW4
			
	ORANGE:
			MOV AH,09H;=====
			LEA DX,NEXT_PAGE
			INT 21H
			
			MOV AH,09H;TOP2
			LEA DX,STOCK_TOP2
			INT 21H
			
			;SHOW THE ORANGE TPE OPTION
			MOV AH,09H
			LEA DX,STOCK_ORANGE1
			INT 21H
			
			MOV DX,0
			MOV AX,STOCK_QTY_LIST[4]
			DIV THOUSAND
			MOV BX,AX
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV DX,0
			MOV AX,CX
			DIV HUNDRED
			MOV BL,AL
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,0
			MOV AL,CL
			DIV TEN
			MOV BX,AX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			JMP CON2
			
			;SOME SHYT
			ORANGE2:
			JMP ORANGE
			APPLE2:
			JMP APPLE3
			
			CON2:
			MOV AH,09H
			LEA DX,STOCK_ORANGE2
			INT 21H
			
			MOV DX,0
			MOV AX,STOCK_QTY_LIST[6]
			DIV THOUSAND
			MOV BX,AX
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV DX,0
			MOV AX,CX
			DIV HUNDRED
			MOV BL,AL
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,0
			MOV AL,CL
			DIV TEN
			MOV BX,AX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			
			MOV AH,09H;=====
			LEA DX,TOTAL_LINE
			INT 21H
			
			MOV AH,09H
			LEA DX,TOTAL_ORANGE
			INT 21H
			
			MOV ALL_ORANGE,0;FOR AVOID ADD LOOPING
			MOV SI,4
			MOV CX,2
		STOCK2:
			MOV DX,STOCK_QTY_LIST[SI]
			ADD ALL_ORANGE,DX
			ADD SI,2
		LOOP STOCK2
			
			MOV DX,0
			MOV AX,ALL_ORANGE
			DIV THOUSAND
			MOV BX,AX
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV DX,0
			MOV AX,CX
			DIV HUNDRED
			MOV BL,AL
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,0
			MOV AL,CL
			DIV TEN
			MOV BX,AX
			JMP LINK18
			
			LINK17:
			JMP SUMMARY_STOCK_QUANTITY_FUNCTION
			
			LINK18:
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			JMP LINK20
			
			LINK19:
			JMP NO
			
			LINK20:
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			
			CONTINEW5:
				MOV AH,09H
				LEA DX,ASK_FOR_CON
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV CON_OPTION5,AL
				CMP CON_OPTION5,'Y'
				JE LINK17
				CMP CON_OPTION5,'y'
				JE LINK17
				CMP CON_OPTION5,'N'
				JE LINK19
				CMP CON_OPTION5,'n'
				JE LINK19
				
				;ERROR MESSAGE
				MOV BH,0
				MOV AH,09H
				LEA DX,NL
				INT 21H
				MOV BL,04H;RED
				MOV CX,44;ERROR MESSAGE NUMBER
				INT 10H
				LEA DX,ERROR_MASSAGE
				INT 21H
				
			JMP CONTINEW5
			
	APPLE:
			MOV AH,09H;=====
			LEA DX,NEXT_PAGE
			INT 21H
			
			MOV AH,09H;TOP2
			LEA DX,STOCK_TOP2
			INT 21H
			
			;SHOW THE APPLE TPE OPTION
			MOV AH,09H
			LEA DX,STOCK_APPLE1
			INT 21H
			
			MOV DX,0
			MOV AX,STOCK_QTY_LIST[8]
			DIV THOUSAND
			MOV BX,AX
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV DX,0
			MOV AX,CX
			DIV HUNDRED
			MOV BL,AL
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,0
			MOV AL,CL
			DIV TEN
			MOV BX,AX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			JMP CON3
			
			;SOME SHYT
			APPLE3:
			JMP APPLE
			
			CON3:
			MOV AH,09H
			LEA DX,STOCK_APPLE2
			INT 21H
			
			MOV DX,0
			MOV AX,STOCK_QTY_LIST[10]
			DIV THOUSAND
			MOV BX,AX
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV DX,0
			MOV AX,CX
			DIV HUNDRED
			MOV BL,AL
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,0
			MOV AL,CL
			DIV TEN
			MOV BX,AX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			
			MOV AH,09H;=====
			LEA DX,TOTAL_LINE
			INT 21H
			
			MOV AH,09H
			LEA DX,TOTAL_APPLE
			INT 21H
			
			MOV ALL_APPLE,0;FOR AVOID ADD LOOPING
			MOV SI,8
			MOV CX,2
		STOCK3:
			MOV DX,STOCK_QTY_LIST[SI]
			ADD ALL_APPLE,DX
			ADD SI,2
		LOOP STOCK3
			
			MOV DX,0
			MOV AX,ALL_APPLE
			DIV THOUSAND
			MOV BX,AX
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV DX,0
			MOV AX,CX
			DIV HUNDRED
			MOV BL,AL
			MOV CX,DX
	
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
	
			MOV AH,0
			MOV AL,CL
			DIV TEN
			MOV BX,AX
			JMP LINK22
			
			LINK21:
			JMP SUMMARY_STOCK_QUANTITY_FUNCTION
		
			LINK22:
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			JMP LINK24
			
			LINK23:
			JMP NO
			
			LINK24:
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			
			CONTINEW6:
				MOV AH,09H
				LEA DX,ASK_FOR_CON
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV CON_OPTION6,AL
				CMP CON_OPTION6,'Y'
				JE LINK21
				CMP CON_OPTION6,'y'
				JE LINK21
				CMP CON_OPTION6,'N'
				JE LINK23
				CMP CON_OPTION6,'n'
				JE LINK23
				
				;ERROR MESSAGE
				MOV BH,0
				MOV AH,09H
				LEA DX,NL
				INT 21H
				MOV BL,04H;RED
				MOV CX,44;ERROR MESSAGE NUMBER
				INT 10H
				LEA DX,ERROR_MASSAGE
				INT 21H
				
			JMP CONTINEW6

	
		
EXIT:	

	;--- Clear Screen
	MOV AX, 03H
	INT 10H
	
	MOV AX,0600H
    MOV BH,30H
    MOV CX,0000H
    MOV DX,085FH
    INT 10H

	MOV AH,09H
	LEA DX,EXITLOGO
	INT 21H
	
	MOV AH,09H
	LEA DX,STR_ATTEMPT
	INT 21H
	
	MOV AH,09H
	LEA DX,PURCHASE_ATTEMPT
	INT 21H
	
	MOV AH,02H
	MOV DL,COUNT_ATTEMPT[0]
	ADD DL,30H
	INT 21H
	
	MOV AH,09H
	LEA DX,STR_TIMES
	INT 21H
	
	MOV AH,09H
	LEA DX,STOCK_ATTEMPT
	INT 21H
	
	MOV AH,02H
	MOV DL,COUNT_ATTEMPT[1]
	ADD DL,30H
	INT 21H
	
	MOV AH,09H
	LEA DX,STR_TIMES
	INT 21H
	
	MOV AH,09H
	LEA DX,SUMMARY_ATTEMPT
	INT 21H
	
	MOV AH,02H
	MOV DL,COUNT_ATTEMPT[2]
	ADD DL,30H
	INT 21H
	
	MOV AH,09H
	LEA DX,STR_TIMES
	INT 21H
	
	MOV AH,09H
	LEA DX,NL
	INT 21H
	
	LEA DX,EXIT1
	INT 21H
		
    MOV AX,4C00H
    INT 21H


MAIN ENDP
END MAIN