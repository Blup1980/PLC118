CoDeSys+1   �                   @        @   2.3.9.50    @/    @                             �g"] +    @            �             �F[        �(   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         �g"]  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             �g"]  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��           Reset Counter to 0    PV           ��           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             �g"]  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��	       
    Count Up    CD            ��
           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             �g"]  �   ����           DELETE               STR               ��              LEN           ��              POS           ��                 DELETE                                         �g"]  �   ����           F_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             �g"]  �   ����           FIND               STR1               ��              STR2               ��                 FIND                                     �g"]  �   ����           INSERT               STR1               ��              STR2               ��              POS           ��                 INSERT                                         �g"]  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         �g"]  �   ����           LEN               STR               ��                 LEN                                     �g"]  �   ����           MID               STR               ��              LEN           ��              POS           ��                 MID                                         �g"]  �   ����           R_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             �g"]  �   ����           REPLACE               STR1               ��              STR2               ��              L           ��              P           ��                 REPLACE                                         �g"]  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         �g"]  �   ����           RS               SET            ��              RESET1            ��                 Q1            ��
                       �g"]  �   ����           SEMA           X             ��                 CLAIM            ��	              RELEASE            ��
                 BUSY            ��                       �g"]  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��	                       �g"]  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��	       2    is FALSE, PT seconds after IN had a falling edge    ET           ��
           elapsed time             �g"]  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��	       0    is TRUE, PT seconds after IN had a rising edge    ET           ��
           elapsed time             �g"]  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��	           The pulse    ET           ��
       &    The current phase of the High-Signal             �g"]  �   ����    R    @                                                                                          F_USERPLAYISVALID           xRedPressedAlone             '               xGreenPressedAlone             '               xYellowPressedAlone             '               xWhitePressedAlone             '               ePlayedItem               E_SequenceItems   '                  aeCorrectSequence   	                    E_SequenceItems          '               iPlayedSequenceIndex           '               xRedBtn            '            	   xGreenBtn            '            
   xYellowBtn            '            	   xWhiteBtn            '                  F_UserPlayIsValid                                      �g"]  @   ����           FB_BLINK           rtIN                 R_TRIG   *               tonBlink                    TON   *                  ixEnable            *               PT_ON           *               PT_OFF           *                  Q            *               ET           * 	                       �g"]  @   ����           FB_DEBOUNCE           fbTON                    TON   &               fbTOF                    TOF   &                  i_xBtn            &               c_tDebounceTime           &                  o_xDebounced            &                        �g"]  @   ����           FB_PLAYSEQUENCE           iSequencePointer            (               iState            (               ftTON                    TON   (               xTimerTrigger             (                  ieCorrectSequence   	                    E_SequenceItems          (               iiSequenceLength           (            
   itPeriodOn           (               itPeriodOff           (                  oxDone            ( 	              oxRLed            ( 
              oxGLed            (               oxYLed            (               oxWLed            (                        �g"]  @   ����           MAIN                             �g"]  @   ����           P_CIRCUITBRAKERS           c_aeCorrectSequence   	  
               A    FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE 
                                                                       )               c_iCorrectSequenceLength    
      )                                �g"]  @   ����        	   P_HELMETS                             �g"]  @   ����           P_SIMON            c_aeCorrectSequence   	                    E_SequenceItems   F    E_Red, E_Green, E_Yellow, E_White, E_Red, E_Green, E_Yellow, E_White                                                                                                             c_iCorrectSequenceLength                         c_tDebounceTime    2                     c_tPlayerTimeoutTime    �                    c_tLightOnPeriod    �                    c_tLightOffPeriod    �      	              eSimonState       
    E_playing       E_SimonState                  aeResultLeds   	  
                                       iShownSequenceIndex                          iPlayedSequenceIndex                          xPlayedSequenceDone                            xRaisingEdgeRedBtn                            xRaisingEdgeGreenBtn                            xRaisingEdgeYellowBtn                            xRaisingEdgeWhiteBtn                            fbDebounceRed                   FB_Debounce                  fbDebounceGreen                   FB_Debounce                  fbDebounceYellow                   FB_Debounce                  fbDebounceWhite                   FB_Debounce                  fbRisingTrigRedBtn                 R_TRIG                  fbRisingTrigGreenBtn                 R_TRIG                  fbRisingTrigYellowBtn                 R_TRIG                  fbRisingTrigWhiteBtn                 R_TRIG                  fbTimeoutTimer                    TON    !              xTimeoutTimerTrigger              "              xPlayerTimeoutOccured              #              xDebouncedRedBtn              %              xDebouncedGreenBtn              &              xDebouncedYellowBtn              '              xDebouncedWhiteBtn              (              counter             *              fbSequencePlayer                           FB_PlaySequence    ,                               �g"]  @   ����            
 �  )   '       !   "   %   &      *   (      +   	   ����0   ,   -   .   /   #   ( �)      K   �)     K   �)     K   �)     K   �)                 *         +     ��localhost   �p�w   ��        p)��?��q    �P� 4�#  ��?�   ��    >� ��    ����@ �� JG�w           ���@                         xk�uu�  � ^F�w��@ ^F�w            ���<�       ��@          ��@  � D��   �� D�� ��d���� � �-�     ,   ,                                                        K     .   C:\Users\xavie\Documents\PLC118\TestPLC.pro @   �g"],  /*BECKCONFI3*/
        !��� @   @   �   �     3               
   Standard            	�g"]     ��                 VAR_GLOBAL
END_VAR
                                                                                  "   , h h �[             Standard
         MAIN����           ���� �g"]                 $����     �                                      Standard �F[	�F[                                       	�g"]      srttir            VAR_CONFIG
END_VAR
                                                                                  	 '              ,     /�           Global_Variables �g"]	�g"]     �J �            9   VAR_GLOBAL
	g_xRecoveryMode: BOOL := FALSE;

END_VAR
                                                                                               '           ,   , 4 4            Global_Variables_CircuitBraker �g"]	�g"],     boceme          -  VAR_GLOBAL

	gat_xBrakerSolved: BOOL := FALSE;

	gati_xBraker1 AT %I*: BOOL;
	gati_xBraker2 AT %I*: BOOL;
	gati_xBraker3 AT %I*: BOOL;
	gati_xBraker4 AT %I*: BOOL;
	gati_xBraker5 AT %I*: BOOL;
	gati_xBraker6 AT %I*: BOOL;
	gati_xBraker7 AT %I*: BOOL;
	gati_xBraker8 AT %I*: BOOL;
END_VAR
                                                                                               '           /   , � � me           Global_Variables_Helmets �g"]	�g"]/     
	tiGrnB        �   VAR_GLOBAL

	gat_xHelmetsSolved: BOOL := FALSE;

	gati_xHelmet1ID AT %I*: UDINT;
	gati_xHelmet2ID AT %I*: UDINT;


END_VAR
                                                                                               '           .   , h h SK           Global_Variables_Keys �g"]	�g"].     .1 OBO :        s   VAR_GLOBAL

	gat_xKeysSolved: BOOL := FALSE;

	gati_xKey1 AT %I*: BOOL;
	gati_xKey2 AT %I*: BOOL;

END_VAR
                                                                                               '               , 4 4 �'           Global_Variables_Simon �g"]	�g"]                      H  VAR_GLOBAL
	gat_xSimonSolved: BOOL := FALSE;

	gatq_xRedLamp AT %Q* : BOOL;
	gatq_xGreenLamp AT %Q* : BOOL;
	gatq_xYellowLamp AT %Q*: BOOL;
	gatq_xWhiteLamp AT %Q*: BOOL;

	gatq_xRedBtnLamp AT %Q*: BOOL;
	gatq_xGreenBtnLamp AT %Q*: BOOL;
	gatq_xYellowBtnLamp AT %Q*: BOOL;
	gatq_xWhiteBtnLamp AT %Q*: BOOL;

	gatq_xCorrectLed1 AT %Q*: BOOL;
	gatq_xCorrectLed2 AT %Q*: BOOL;
	gatq_xCorrectLed3 AT %Q*: BOOL;
	gatq_xCorrectLed4 AT %Q*: BOOL;
	gatq_xCorrectLed5 AT %Q*: BOOL;
	gatq_xCorrectLed6 AT %Q*: BOOL;
	gatq_xCorrectLed7 AT %Q*: BOOL;
	gatq_xCorrectLed8 AT %Q*: BOOL;
	gatq_xCorrectLed9 AT %Q*: BOOL;
	gatq_xCorrectLed10 AT %Q*: BOOL;

	gatq_xRelay AT %Q* : BOOL;

	gati_xRedButton AT %I*: BOOL;
	gati_xGreenButton AT %I*: BOOL;
	gati_xYellowButton AT %I*: BOOL;
	gati_xWhiteButton AT %I* : BOOL;

END_VAR                                                                                               '           -   , N N 91           Global_Variables_Valves �g"]	�g"]-     .1 OBO :        c  VAR_GLOBAL

	gat_xValveSolved: BOOL := FALSE;

	gati_xValve1 AT %I*: BOOL;
	gati_xValve2 AT %I*: BOOL;
	gati_xValve3 AT %I*: BOOL;
	gati_xValve4 AT %I*: BOOL;
	gati_xValve5 AT %I*: BOOL;
	gati_xValve6 AT %I*: BOOL;
	gati_xValve7 AT %I*: BOOL;
	gati_xValve8 AT %I*: BOOL;
	gati_xValve9 AT %I*: BOOL;
	gati_xValve10 AT %I*: BOOL;


END_VAR
                                                                                               '           +   , 88#           TwinCAT_Configuration �g"]	�g"]+     @��           T  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.gati_xBraker1 AT %IX16.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 5^Stotz1} *)
	.gati_xBraker2 AT %IX16.1 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 6^Stotk2} *)
	.gati_xBraker3 AT %IX16.2 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 7^Stotz3} *)
	.gati_xBraker4 AT %IX16.3 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 8^Stotz4} *)
	.gati_xBraker5 AT %IX16.4 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 9^Stotz5} *)
	.gati_xBraker6 AT %IX16.5 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 10^Stotz6} *)
	.gati_xBraker7 AT %IX16.6 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 11^Stotz7} *)
	.gati_xBraker8 AT %IX16.7 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 12^Stotz8} *)
	.gati_xHelmet1ID AT %IB8 : UDINT;
	.gati_xHelmet2ID AT %IB12 : UDINT;
	.gati_xKey1 AT %IX17.2 : BOOL;
	.gati_xKey2 AT %IX17.3 : BOOL;
	.gatq_xRedLamp AT %QX4.2 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 13 (EL2008)^Channel 8^SimonLedR} *)
	.gatq_xGreenLamp AT %QX4.3 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 14 (EL2024)^Channel 1^SimonLedG} *)
	.gatq_xYellowLamp AT %QX4.4 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 14 (EL2024)^Channel 2^SimonLedY} *)
	.gatq_xWhiteLamp AT %QX4.5 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 13 (EL2008)^Channel 7^SimonLedW} *)
	.gatq_xRedBtnLamp AT %QX4.6 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 13 (EL2008)^Channel 5^SimonBtnLedR} *)
	.gatq_xGreenBtnLamp AT %QX4.7 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 13 (EL2008)^Channel 3^SimonBtnLedG} *)
	.gatq_xYellowBtnLamp AT %QX5.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 13 (EL2008)^Channel 6^SimonBtnLedY} *)
	.gatq_xWhiteBtnLamp AT %QX5.1 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 13 (EL2008)^Channel 4^SimonBtnLedW} *)
	.gatq_xCorrectLed1 AT %QX5.2 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 12 (EL2008)^Channel 1^SimonL1} *)
	.gatq_xCorrectLed2 AT %QX5.3 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 12 (EL2008)^Channel 2^SimonL2} *)
	.gatq_xCorrectLed3 AT %QX5.4 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 12 (EL2008)^Channel 3^SimonL3} *)
	.gatq_xCorrectLed4 AT %QX5.5 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 12 (EL2008)^Channel 4^SImonL4} *)
	.gatq_xCorrectLed5 AT %QX5.6 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 12 (EL2008)^Channel 5^SImonL5} *)
	.gatq_xCorrectLed6 AT %QX5.7 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 12 (EL2008)^Channel 6^SImonL6} *)
	.gatq_xCorrectLed7 AT %QX6.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 12 (EL2008)^Channel 7^SImonL7} *)
	.gatq_xCorrectLed8 AT %QX6.1 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 12 (EL2008)^Channel 8^SimonL8} *)
	.gatq_xCorrectLed9 AT %QX6.2 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 13 (EL2008)^Channel 1^SimonL9} *)
	.gatq_xCorrectLed10 AT %QX6.3 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 13 (EL2008)^Channel 2^SimonL10} *)
	.gatq_xRelay AT %QX8.0 : BOOL;
	.gati_xRedButton AT %IX4.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 3^SimonBtnR} *)
	.gati_xGreenButton AT %IX4.1 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 1^SimonBtnG} *)
	.gati_xYellowButton AT %IX4.2 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 4^SimonBtnY} *)
	.gati_xWhiteButton AT %IX4.3 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 2^SimonBtnW} *)
	.gati_xValve1 AT %IX17.4 : BOOL;
	.gati_xValve2 AT %IX17.5 : BOOL;
	.gati_xValve3 AT %IX17.6 : BOOL;
	.gati_xValve4 AT %IX17.7 : BOOL;
	.gati_xValve5 AT %IX18.0 : BOOL;
	.gati_xValve6 AT %IX18.1 : BOOL;
	.gati_xValve7 AT %IX18.2 : BOOL;
	.gati_xValve8 AT %IX18.3 : BOOL;
	.gati_xValve9 AT %IX18.4 : BOOL;
	.gati_xValve10 AT %IX18.5 : BOOL;
END_VAR                                                                                               '                 -             TwinCAT_Import �g"]	�g"]                     >   VAR_GLOBAL (* DO NOT CHANGE THIS SHEET MANUALLY! *)
END_VAR
                                                                                               '           	   , 4 4 c'           Variable_Configuration �g"]	�g"]	       ��I             VAR_CONFIG
END_VAR
                                                                                                 �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               4     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   "   , h h �[           E_SequenceItems �g"]	�g"]      ATQ*BO;        Q   TYPE E_SequenceItems :
(
	E_Red,
	E_Green,
	E_Yellow,
	E_White
);
END_TYPE             !   , N N �A           E_SimonState �g"]	�g"]      Ȉ� `��        L   TYPE E_SimonState :
(
	E_playing,
	E_readUserInput,
	E_won
);
END_TYPE              '   , � � &�           F_UserPlayIsValid �g"]	�g"]      qucede I        r  FUNCTION F_UserPlayIsValid : BOOL
VAR_INPUT
	aeCorrectSequence: ARRAY [1..8] OF E_SequenceItems;
	iPlayedSequenceIndex: INT;
	xRedBtn: BOOL;
	xGreenBtn: BOOL;
	xYellowBtn: BOOL;
	xWhiteBtn: BOOL;
END_VAR
VAR
	xRedPressedAlone : BOOL;
	xGreenPressedAlone: BOOL;
	xYellowPressedAlone: BOOL;
	xWhitePressedAlone: BOOL;
	ePlayedItem : E_SequenceItems;
END_VAR�  
(*Check that only one btn is pressed*)
xRedPressedAlone := xRedBtn AND NOT xGreenBtn AND NOT xYellowBtn AND NOT xWhiteBtn;
xGreenPressedAlone := xGreenBtn AND NOT xRedBtn AND NOT xYellowBtn AND NOT xWhiteBtn;
xYellowPressedAlone := xYellowBtn AND NOT xGreenBtn AND NOT xRedBtn AND NOT xWhiteBtn;
xWhitePressedAlone := xWhiteBtn AND NOT xRedBtn AND NOT xGreenBtn AND NOT xYellowBtn;

IF xRedPressedAlone OR xGreenPressedAlone OR  xYellowPressedAlone OR  xWhitePressedAlone THEN

	IF xRedPressedAlone = TRUE THEN
		ePlayedItem := E_Red;
	END_IF

	IF xGreenPressedAlone = TRUE THEN
		ePlayedItem := E_Green;
	END_IF

	IF xYellowPressedAlone = TRUE THEN
		ePlayedItem := E_Yellow;
	END_IF

	IF xWhitePressedAlone = TRUE THEN
		ePlayedItem := E_White;
	END_IF

	IF aeCorrectSequence[iPlayedSequenceIndex] = ePlayedItem THEN
		F_UserPlayIsValid := TRUE;
	ELSE
		F_UserPlayIsValid := FALSE;
	END_IF

ELSE
	F_UserPlayIsValid := FALSE;
END_IF
               *   ,   �+           FB_Blink �g"]	�g"]                        FUNCTION_BLOCK FB_Blink
VAR_INPUT
        ixEnable : BOOL;
        PT_ON : TIME;
        PT_OFF : TIME;
    END_VAR
    VAR_OUTPUT
        Q : BOOL;
        ET : TIME;
    END_VAR
    VAR
        rtIN : R_TRIG;
        tonBlink : TON;
    END_VAR�  rtIN(CLK := ixEnable);

IF tonBlink.Q OR rtIN.Q THEN
    (*Toggle Output*)
    Q := NOT Q;

    (*Timer Reset call, important to call timer twice in same cycle for correct Blink Time*)
    tonBlink(IN:= FALSE);

    (*Set corresponding Time*)
    IF Q THEN
        tonBlink.PT := PT_ON;
    ELSE
        tonBlink.PT := PT_ON;
    END_IF

END_IF

(*Timer Run call*)
tonBlink(IN:= ixEnable);

IF ixEnable THEN
    ET := tonBlink.ET;
ELSE
    ET := T#0S;
    Q := FALSE;
END_IF               &   , � � @�           FB_Debounce �g"]	�g"]      Retn
xis        �   FUNCTION_BLOCK FB_Debounce
VAR_INPUT
	i_xBtn: BOOL;
	c_tDebounceTime : TIME;
END_VAR
VAR_OUTPUT
	o_xDebounced: BOOL;
END_VAR

VAR
	fbTON: TON;
	fbTOF: TOF;
END_VAR�   

fbTON(	 IN := i_xBtn ,
 		PT:= c_tDebounceTime,
		Q=>,
		ET=> );
fbTOF(	 IN := i_xBtn ,
 		PT:= c_tDebounceTime,
		Q=>,
		ET=> );
o_xDebounced := fbTON.Q OR ( fbTOF.Q AND o_xDebounced);               (   ,     �           FB_PlaySequence �g"]	�g"]                      �  FUNCTION_BLOCK FB_PlaySequence
VAR_INPUT
	ieCorrectSequence: ARRAY [1..8] OF E_SequenceItems;
	iiSequenceLength : INT;
	itPeriodOn : TIME;
	itPeriodOff : TIME;
END_VAR
VAR_OUTPUT
	oxDone : BOOL;
	oxRLed : BOOL;
	oxGLed : BOOL;
	oxYLed : BOOL;
	oxWLed : BOOL;
END_VAR
VAR
	iSequencePointer : INT := 0;
	iState : INT := 0;
	ftTON : TON;
	xTimerTrigger : BOOL;
END_VAR�  
oxDone := FALSE;

CASE iState OF
	0:
		iSequencePointer := 1;
		xTimerTrigger := FALSE;
		iState := 5;
	5:
		ftTON(IN:=xTimerTrigger,  PT:=itPeriodOff , Q=> , ET=> );
		xTimerTrigger := TRUE;
		oxRLed := FALSE;
		oxGLed := FALSE;
		oxWLed := FALSE;
		oxYLed := FALSE;
		IF ftTON.Q = TRUE THEN
			xTimerTrigger := FALSE;
			iState := 10;
		END_IF
	10:
		ftTON(IN:=xTimerTrigger,  PT:=itPeriodOn , Q=> , ET=> );
		xTimerTrigger := TRUE;
		CASE ieCorrectSequence[iSequencePointer] OF
			E_Green:
				oxGLed := TRUE;
			E_Red:
				oxRLed := TRUE;
			E_White:
				oxWLed := TRUE;
			E_Yellow:
				oxYLed := TRUE;
		END_CASE
		IF ftTON.Q = TRUE THEN
			iSequencePointer := iSequencePointer + 1;
			iState:= 20;
			xTimerTrigger := FALSE;
		END_IF
	20:
		IF iSequencePointer > iiSequenceLength THEN
			iState := 0;
			oxDone := TRUE;
		ELSE
			iState := 5;
		END_IF
		oxRLed := FALSE;
		oxGLed := FALSE;
		oxWLed := FALSE;
		oxYLed := FALSE;

END_CASE

               #   , N N }�           MAIN �g"]	�g"]      �              5   PROGRAM MAIN
VAR_INPUT
END_VAR
VAR_OUTPUT
END_VAR)   
P_Simon();

P_CircuitBrakers();


               )   ,   �           P_CircuitBrakers �g"]	�g"]                      �   PROGRAM P_CircuitBrakers

VAR CONSTANT
	c_aeCorrectSequence: ARRAY [1..10] OF BOOL := FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE ;
	c_iCorrectSequenceLength: INT := 10;
END_VAR

VAR

END_VAR�  

IF g_xRecoveryMode THEN
	gat_xBrakerSolved:= FALSE;
END_IF


IF (gati_xBraker1 = c_aeCorrectSequence[1])  AND
  (gati_xBraker2 = c_aeCorrectSequence[2])  AND
  (gati_xBraker3 = c_aeCorrectSequence[3])  AND
  (gati_xBraker4 = c_aeCorrectSequence[4])  AND
  (gati_xBraker5 = c_aeCorrectSequence[5])  AND
  (gati_xBraker6 = c_aeCorrectSequence[6])  AND
  (gati_xBraker7 = c_aeCorrectSequence[7])  AND
  (gati_xBraker8 = c_aeCorrectSequence[8])  THEN

	gat_xBrakerSolved := TRUE;
END_IF




               0   , � � �        	   P_Helmets �g"]	�g"]                         PROGRAM P_Helmets
VAR
END_VARD   

IF g_xRecoveryMode THEN
	gat_xHelmetsSolved := FALSE;
END_IF
                  ,   I           P_Simon �g"]	�g"]                        PROGRAM P_Simon

VAR CONSTANT
	c_aeCorrectSequence: ARRAY [1..8] OF E_SequenceItems := E_Red, E_Green, E_Yellow, E_White, E_Red, E_Green, E_Yellow, E_White ;
	c_iCorrectSequenceLength: INT := 8;
	c_tDebounceTime : TIME := t#0.05s;
	c_tPlayerTimeoutTime : TIME := t#5s;
	c_tLightOnPeriod: TIME := t#2.0s;
	c_tLightOffPeriod: TIME := t#0.5s;
END_VAR
VAR
	eSimonState: E_SimonState := E_playing;
	aeResultLeds: ARRAY[1..10] OF BOOL;
	iShownSequenceIndex: INT := 1;
	iPlayedSequenceIndex: INT:=1;
	xPlayedSequenceDone: BOOL := FALSE;

	xRaisingEdgeRedBtn: BOOL := FALSE;
	xRaisingEdgeGreenBtn: BOOL := FALSE;
	xRaisingEdgeYellowBtn: BOOL := FALSE;
	xRaisingEdgeWhiteBtn: BOOL := FALSE;

	fbDebounceRed:FB_Debounce;
	fbDebounceGreen:FB_Debounce;
	fbDebounceYellow:FB_Debounce;
	fbDebounceWhite:FB_Debounce;

	fbRisingTrigRedBtn: R_TRIG;
	fbRisingTrigGreenBtn: R_TRIG;
	fbRisingTrigYellowBtn: R_TRIG;
	fbRisingTrigWhiteBtn: R_TRIG;

	fbTimeoutTimer:TON;
	xTimeoutTimerTrigger: BOOL:= FALSE;
	xPlayerTimeoutOccured : BOOL := FALSE;

	xDebouncedRedBtn: BOOL := FALSE;
	xDebouncedGreenBtn: BOOL := FALSE;
	xDebouncedYellowBtn: BOOL := FALSE;
	xDebouncedWhiteBtn: BOOL := FALSE;

	counter: UINT;

	fbSequencePlayer : FB_PlaySequence;

END_VAR


�  

(*debounce buttons *)
fbDebounceRed(	i_xBtn:= gati_xRedButton,
				c_tDebounceTime:= c_tDebounceTime,
				o_xDebounced=> xDebouncedRedBtn );

fbDebounceGreen(i_xBtn:= gati_xGreenButton,
				c_tDebounceTime:= c_tDebounceTime,
				o_xDebounced=> xDebouncedGreenBtn );

fbDebounceYellow(i_xBtn:= gati_xYellowButton,
				c_tDebounceTime:= c_tDebounceTime,
				o_xDebounced=> xDebouncedYellowBtn );

fbDebounceWhite(i_xBtn:= gati_xWhiteButton,
				c_tDebounceTime:= c_tDebounceTime,
				o_xDebounced=> xDebouncedWhiteBtn );

fbRisingTrigRedBtn( CLK:=xDebouncedRedBtn,
					Q => xRaisingEdgeRedBtn);

fbRisingTrigGreenBtn( CLK:=xDebouncedGreenBtn,
					Q => xRaisingEdgeGreenBtn);

fbRisingTrigYellowBtn( CLK:=xDebouncedYellowBtn,
					Q => xRaisingEdgeYellowBtn);

fbRisingTrigWhiteBtn( CLK:=xDebouncedWhiteBtn,
					Q => xRaisingEdgeWhiteBtn);

fbTimeoutTimer(	IN:= xTimeoutTimerTrigger ,
				PT:= c_tPlayerTimeoutTime,
				Q=> xPlayerTimeoutOccured ,
				ET=> );

IF g_xRecoveryMode THEN
	eSimonState := E_playing;
	iShownSequenceIndex := 1;
	iPlayedSequenceIndex := 1;
	xPlayedSequenceDone := FALSE;
	gat_xSimonSolved := FALSE;
END_IF



IF gat_xSimonSolved THEN
	eSimonState := E_won;
END_IF

CASE eSimonState OF
	 E_playing :
		xTimeoutTimerTrigger := FALSE;
		IF xPlayedSequenceDone = TRUE THEN
			xPlayedSequenceDone := FALSE;
			eSimonState := E_readUserInput;
			iPlayedSequenceIndex := 1;
		ELSE
			(*here play the sequence*)
			fbSequencePlayer(
				ieCorrectSequence := c_aeCorrectSequence,
				iiSequenceLength := iShownSequenceIndex,
				itPeriodOn := c_tLightOnPeriod,
				itPeriodOff := c_tLightOffPeriod,
				oxDone=>xPlayedSequenceDone ,
				oxRLed=>gatq_xRedLamp ,
				oxGLed=> gatq_xGreenLamp,
				oxYLed=> gatq_xYellowLamp,
				oxWLed=>gatq_xWhiteLamp);
		END_IF
	E_readUserInput :
		xTimeoutTimerTrigger := TRUE;
		(* check that the user played something*)
		IF xRaisingEdgeRedBtn OR xRaisingEdgeGreenBtn OR xRaisingEdgeYellowBtn OR xRaisingEdgeWhiteBtn THEN
			IF  F_UserPlayIsValid(
				c_aeCorrectSequence,
				iPlayedSequenceIndex,
				xRaisingEdgeRedBtn,
				xRaisingEdgeGreenBtn,
				xRaisingEdgeYellowBtn,
				xRaisingEdgeWhiteBtn
				) THEN

				xTimeoutTimerTrigger := FALSE; (* reset the timeout of player action*)

				IF iPlayedSequenceIndex < iShownSequenceIndex THEN
					iPlayedSequenceIndex := iPlayedSequenceIndex + 1;
				ELSE
					(*all sequence was correct so far*)
					IF iShownSequenceIndex < c_iCorrectSequenceLength THEN
						iShownSequenceIndex := iShownSequenceIndex + 1;
						eSimonState := E_playing;
					ELSE
						eSimonState := E_won;
					END_IF
				END_IF
			ELSE
				(*Bad entry -> restart*)
				iShownSequenceIndex := 1;
				eSimonState := E_playing;
			END_IF
		ELSE
			IF xPlayerTimeoutOccured THEN
				iShownSequenceIndex := 1;
				eSimonState := E_playing;
			END_IF
		END_IF
	E_won :
		iShownSequenceIndex := 99;
		gat_xSimonSolved := TRUE;

END_CASE

FOR counter:=1 TO 10  DO
	aeResultLeds[counter] := counter < iShownSequenceIndex;
END_FOR

gatq_xCorrectLed1:= aeResultLeds[1];
gatq_xCorrectLed2:= aeResultLeds[2];
gatq_xCorrectLed3:= aeResultLeds[3];
gatq_xCorrectLed4:= aeResultLeds[4];
gatq_xCorrectLed5:= aeResultLeds[5];
gatq_xCorrectLed6:= aeResultLeds[6];
gatq_xCorrectLed7:= aeResultLeds[7];
gatq_xCorrectLed8:= aeResultLeds[8];
gatq_xCorrectLed9:= aeResultLeds[9];
gatq_xCorrectLed10:= aeResultLeds[10];
                %   , � � u           V_Simon �g"]
    @��w�g"]   d                                     gatv_xCorrectLed1Visu                                                                    
    @        < x e � P �   ���      �@                                    .gatq_xCorrectLed1        @                          ���        @
                       @                                      gatv_xCorrectLed1Visu                                                                    
    @        n x � � � �   ���      �@                                    .gatq_xCorrectLed2        @                          ���        @
                       @                                      gatv_xCorrectLed1Visu                                                                    
    @        � x � � � �   ���      �@                                    .gatq_xCorrectLed3        @                          ���        @
                       @                                      gatv_xCorrectLed1Visu                                                                    
    @        � x � � � �   ���      �@                                    .gatq_xCorrectLed4        @                          ���        @
                       @                                      gatv_xCorrectLed1Visu                                                                    
    @        x -� �   ���      �@                                    .gatq_xCorrectLed5        @                          ���        @
                       @                                      gatv_xCorrectLed1Visu                                                                    
    @        6x _� J�   ���      �@                                    .gatq_xCorrectLed6        @                          ���        @
                       @                                      gatv_xCorrectLed1Visu                                                                    
    @        hx �� |�   ���      �@                                    .gatq_xCorrectLed7        @                          ���        @
                       @                                      gatv_xCorrectLed1Visu                                                                    
    @        �x �� ��   ���      �@                                    .gatq_xCorrectLed8        @                          ���        @
                       @                                      gatv_xCorrectLed1Visu                                                                    
    @        �x �� ��   ���      �@                                    .gatq_xCorrectLed9        @                          ���        @
                       @                                      gatv_xCorrectLed1Visu                                                                    
    @        �x '� �   ���      �@                                    .gatq_xCorrectLed10        @                          ���        @
                       @                                                                                                          
    @        �  � Q � 2   ���     �                                      .gatq_xRedLamp        @                          ���        @
                       @                                                                                                          
    @        �  Q � 2   ���     ��                                     .gatq_xGreenLamp        @                          ���        @
                       @                                                                                                          
    @        6 sQ T2   ���     ��@                                    .gatq_xYellowLamp        @                          ���        @
                       @                                                                                                          
    @        � �Q �2   ���     ���                                    .gatq_xWhiteLamp        @                          ���        @
                       @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  ����, � � h�         "   STANDARD.LIB 5.6.98 11:03:02 @F�w5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                        , � � ��           2                ����������������  
             ����  ��� A�A        ����  ����                          POUs                 F_UserPlayIsValid  '                   FB_Blink  *                   FB_Debounce  &                   FB_PlaySequence  (                  MAIN  #                   P_CircuitBrakers  )                	   P_Helmets  0                   P_Simon     ����           
   Data types                 E_SequenceItems  "                  E_SimonState  !   ����              Visualizations                V_Simon  %   ����              Global Variables	                 Global_Variables                    Global_Variables_CircuitBraker  ,                   Global_Variables_Helmets  /                   Global_Variables_Keys  .                   Global_Variables_Simon                      Global_Variables_Valves  -                   TwinCAT_Configuration  +                   TwinCAT_Import                     Variable_Configuration  	   ����                                                              �F[                         	   localhost            P      	   localhost            P      	   localhost            P     [}[    F�I�