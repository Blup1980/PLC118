CoDeSys+8   �                   @        @   2.3.9.50    @/    @                             �0] +    @            �             �F[        �9   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         ��0]  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             ��0]  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��           Reset Counter to 0    PV           ��           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             ��0]  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��	       
    Count Up    CD            ��
           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             ��0]  �   ����           DELETE               STR               ��              LEN           ��              POS           ��                 DELETE                                         ��0]  �   ����           F_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��0]  �   ����           FIND               STR1               ��              STR2               ��                 FIND                                     ��0]  �   ����           INSERT               STR1               ��              STR2               ��              POS           ��                 INSERT                                         ��0]  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         ��0]  �   ����           LEN               STR               ��                 LEN                                     ��0]  �   ����           MID               STR               ��              LEN           ��              POS           ��                 MID                                         ��0]  �   ����           R_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��0]  �   ����           REPLACE               STR1               ��              STR2               ��              L           ��              P           ��                 REPLACE                                         ��0]  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         ��0]  �   ����           RS               SET            ��              RESET1            ��                 Q1            ��
                       ��0]  �   ����           SEMA           X             ��                 CLAIM            ��	              RELEASE            ��
                 BUSY            ��                       ��0]  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��	                       ��0]  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��	       2    is FALSE, PT seconds after IN had a falling edge    ET           ��
           elapsed time             ��0]  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��	       0    is TRUE, PT seconds after IN had a rising edge    ET           ��
           elapsed time             ��0]  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��	           The pulse    ET           ��
       &    The current phase of the High-Signal             ��0]  �   ����    R    @                                                                                          F_USERPLAYISVALID           xRedPressedAlone             '               xGreenPressedAlone             '               xYellowPressedAlone             '               xWhitePressedAlone             '               ePlayedItem               E_SequenceItems    '                  aeCorrectSequence   	                    E_SequenceItems           '               iPlayedSequenceIndex           '               xRedBtn            '            	   xGreenBtn            '            
   xYellowBtn            '            	   xWhiteBtn            '                  F_UserPlayIsValid                                      ��0]  @    ����           FB_BLINK           rtIN                 R_TRIG    *               tonBlink                    TON    *                  ixEnable            *               PT_ON           *               PT_OFF           *                  Q            *               ET           * 	                       ��0]  @    ����           FB_DEBOUNCE           fbTON                    TON    &               fbTOF                    TOF    &                  i_xBtn            &               c_tDebounceTime           &                  o_xDebounced            &                        ��0]  @    ����           FB_PLAYSEQUENCE           iSequencePointer            (               iState            (               ftTON                    TON    (               xTimerTrigger             (                  ieCorrectSequence   	                    E_SequenceItems           (               iiSequenceLength           (            
   itPeriodOn           (               itPeriodOff           (                  oxDone            ( 	              oxRLed            ( 
              oxGLed            (               oxYLed            (               oxWLed            (                        ��0]  @    ����           FB_SIMON_PLAYWON           eSimonWonState           E_showNothing       E_SimonWonState    2               ftTON                    TON    2               xTimerTrigger             2                  ixFinalCode1   	  
                       2               ixFinalCode2   	  
                       2               ixFinalCode3   	  
                       2               itPeriod           2            
      oxLED1            2 	              oxLED2            2 
              oxLED3            2               oxLED4            2               oxLED5            2               oxLED6            2               oxLED7            2               oxLED8            2               oxLED9            2               oxLED10            2                        ��0]  @    ����           FB_VALVE_PLAYWON           c_auFinalCode   	                     180, 145, 115, 82, 55, 30, 5      �      �      s      R      7                  4               uValveWonState    
       4               ftTON                    TON    4               xTimerTrigger             4               uIndex           4                  iauFinalCode   	                        4 	              iuFinalCodeLength          4 
              itPeriod           4                  ouServoValue           4               oxLed            4                        ��0]  @    ����           MAIN           itPeriod    �     #            	   byteValue    �       #            	   wordValue    �      #            
   dwordValue    
       #            	   sintValue    ����    #               intValue    �@      #            	   dintValue    A�      #            	   realValue    RXC   150.345    #            
   lrealValue         @I�   -50.50     @I�    #            	   boolValue            #               uState            #               ftTON                    TON    #               xTimerTrigger             #               uIndex           #                                ��0]  @    ����           P_CIRCUITBRAKERS           c_aeCorrectSequence   	                 5    TRUE, FALSE, FALSE, TRUE, FALSE, TRUE, FALSE, FALSE                                                            )               c_aeInitialSequence   	                 0    TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE                                                       )               c_iCorrectSequenceLength          )                                ��0]  @    ����           P_DOUBLE_KEY           c_aeCorrectSequence   	                     TRUE, TRUE                  7               c_aeInitialSequence   	                     FALSE, FALSE                     7                                3�0]  @    ����        	   P_HELMETS           c_uMotorSpeed    �     0               c_uHelmetAcceleration    d      0               c_uTargetPosition    �	    0               uOpeningState    
       0 	                               j�0]  @    ����           P_SIMON     '      c_aeCorrectSequence   	                    E_SequenceItems   F    E_Red, E_Green, E_Yellow, E_White, E_Red, E_Green, E_Yellow, E_White                                                                                                              c_iCorrectSequenceLength                         c_tDebounceTime    2                     c_tPlayerTimeoutTime    �                    c_tLightOnPeriod    �                    c_tLightOffPeriod    �      	              c_uErrorSound                         c_uRightSound                         c_axFinalCode1   	  
               ?    TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE 
                                                                                    c_axFinalCode2   	  
               >    TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE 
                                                                                   c_axFinalCode3   	  
               =    TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE 
                                                                                  c_tLightWonPeriod    �                    eSimonState       
    E_playing       E_SimonState                   aeResultLeds   	  
                                       iShownSequenceIndex                          iPlayedSequenceIndex                          xPlayedSequenceDone                            xRaisingEdgeRedBtn                            xRaisingEdgeGreenBtn                            xRaisingEdgeYellowBtn                            xRaisingEdgeWhiteBtn                            fbDebounceRed                   FB_Debounce                    fbDebounceGreen                   FB_Debounce     !              fbDebounceYellow                   FB_Debounce     "              fbDebounceWhite                   FB_Debounce     #              fbRisingTrigRedBtn                 R_TRIG     %              fbRisingTrigGreenBtn                 R_TRIG     &              fbRisingTrigYellowBtn                 R_TRIG     '              fbRisingTrigWhiteBtn                 R_TRIG     (              fbTimeoutTimer                    TON     *              xTimeoutTimerTrigger              +              xPlayerTimeoutOccured              ,              xDebouncedRedBtn              .              xDebouncedGreenBtn              /              xDebouncedYellowBtn              0              xDebouncedWhiteBtn              1              counter             3              fbSequencePlayer                           FB_PlaySequence     5           	   fbPlayWon                               FB_Simon_PlayWon     7                               ��0]  @   ����           P_VALVES           c_aeCorrectSequence   	  	                  1, 0, 1, 0, 1, 0, 0, 1, 1 	                                                                3               c_aeInitialSequence   	  	                  0, 0, 0, 0, 0, 0, 0, 0, 0 	                                                                     3               c_iCorrectSequenceLength    	      3               c_auFinalCode   	                    4, 1, 6, 2                              3 	              c_uFinalCodeLength          3 
              c_tWonPeriod    �     3            	   fbPlayWon        
                FB_Valve_PlayWon    3                                D�0]  @    ����            
 �     '       !   "   %   &      *   (      +   	   ����0   ,   -   .   /   3   ����1   2   4   7   #   5   6   )   ( =;      K   K;     K   Y;     K   g;     K   |;                 �;         +     ��localhost   �p�w   ��        p)��?��q    �P� 4�#  ��?�   ��    >� ��    ����@ �� JG�w           ���@                         xk�uu�  � ^F�w��@ ^F�w            ���<�       ��@          ��@  � D��   �� D�� ��d���� � �-�     ,   ,                                                        K     .   C:\Users\xavie\Documents\PLC118\TestPLC.pro @   ��0]�=  /*BECKCONFI3*/
        !��� @   @   �   �     3               
   Standard            	�0]     ��                 VAR_GLOBAL
END_VAR
                                                                                  "   , h h �[             Standard
         MAIN����           ���� �0]                 $����,   ��                                  Standard �F[	�F[                         g_xRecoveryMode
             	�0]      srttir            VAR_CONFIG
END_VAR
                                                                                  
 '              ,     /�           Global_Variables �0]	�0]     �J �            �   VAR_GLOBAL
	g_eGameState : E_GameState := E_GameStateRecovery;
	g_xReadyToPlay : BOOL := FALSE;

	gatq_xBlueLights AT %Q*: BOOL;

END_VAR
                                                                                               '           ,   , 4 4            Global_Variables_CircuitBraker �0]	�0],     boceme          y  VAR_GLOBAL

	gat_xBreakerReadyToPlay : BOOL := FALSE;

	gat_xBrakerSolved: BOOL := FALSE;

	gati_xBraker1 AT %I*: BOOL;
	gati_xBraker2 AT %I*: BOOL;
	gati_xBraker3 AT %I*: BOOL;
	gati_xBraker4 AT %I*: BOOL;
	gati_xBraker5 AT %I*: BOOL;
	gati_xBraker6 AT %I*: BOOL;
	gati_xBraker7 AT %I*: BOOL;
	gati_xBraker8 AT %I*: BOOL;

	gato_xKeyBox AT %Q*: BOOL;
END_VAR
                                                                                               '           /   , � � me           Global_Variables_Helmets �0]	�0]/     
	tiGrnB        �  VAR_GLOBAL

	gat_xHelmetsReadyToPlay : BOOL := FALSE;

	gat_xHelmetsSolved: BOOL := FALSE;

	gati_uHelmet1ID AT %I*: UDINT;
	gati_uHelmet2ID AT %I*: UDINT;

	gati_xHelmetDriverReady AT %I*: BOOL;
	gati_xHelmetOnTarget AT %I*: BOOL;
	gati_xHelmetReady AT %I*: BOOL;

	gatq_xHelmetDriverEnable AT %Q* : BOOL;
	gatq_xHelmetMotorExecute AT %Q* : BOOL;
	gatq_xHelmetCouterLatch AT %Q* : BOOL;

	gatq_xHelmetHideoutLed AT %Q* : BOOL;
	gatq_xHelmetHideoutML AT %Q* : BOOL;


	qatq_uHelmetCounterValue  AT %Q* : UDINT;
	qatq_uHelmetTargetPosition  AT %Q* : UDINT;

	qatq_uHelmetVelocity  AT %Q* : INT;

	qatq_uHelmetAcceleration  AT %Q* : UINT;
	qatq_uHelmetDeceleration  AT %Q* : UINT;


END_VAR
                                                                                               '           .   , h h SK           Global_Variables_Keys �0]	�0].     .1 OBO :        �   VAR_GLOBAL

	gat_xKeysReadyToPlay : BOOL := FALSE;

	gat_xKeysSolved: BOOL := FALSE;

	gati_xKey1 AT %I*: BOOL;
	gati_xKey2 AT %I*: BOOL;

	gatq_xExitDoor AT %Q*: BOOL;
END_VAR
                                                                                               '               , 4 4 �'           Global_Variables_Simon �0]	�0]                      H  VAR_GLOBAL
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

END_VAR                                                                                               '           5   , h h ;�           Global_Variables_Sounds �0]	�0]5     @��           "  VAR_GLOBAL

	gatq_uSoundNb1 AT %Q* : UINT;
	gatq_uSoundNb2 AT %Q* : UINT;
	gatq_uSoundNb3 AT %Q* : UINT;
	gatq_uSoundNb4 AT %Q* : UINT;
	gatq_uSoundNb5 AT %Q* : UINT;

	gatq_uSoundCmd1 AT %Q* : USINT;
	gatq_uSoundCmd2 AT %Q* : USINT;
	gatq_uSoundCmd3 AT %Q* : USINT;
	gatq_uSoundCmd4 AT %Q* : USINT;
	gatq_uSoundCmd5 AT %Q* : USINT;

	gati_uSoundStatus1 AT %I* : USINT;
	gati_uSoundStatus2 AT %I* : USINT;
	gati_uSoundStatus3 AT %I* : USINT;
	gati_uSoundStatus4 AT %I* : USINT;
	gati_uSoundStatus5 AT %I* : USINT;


END_VAR
                                                                                               '           -   , N N 91           Global_Variables_Valves �0]	�0]-     .1 OBO :        �  VAR_GLOBAL
	gat_xValvesReadyToPlay : BOOL := FALSE;
	gat_xValveSolved: BOOL := FALSE;

	gati_xValve1 AT %I*: USINT;
	gati_xValve2 AT %I*: USINT;
	gati_xValve3 AT %I*: USINT;
	gati_xValve4 AT %I*: USINT;
	gati_xValve5 AT %I*: USINT;
	gati_xValve6 AT %I*: USINT;
	gati_xValve7 AT %I*: USINT;
	gati_xValve8 AT %I*: USINT;
	gati_xValve9 AT %I*: USINT;

	gatq_xValveLed AT %Q* : BOOL;
	gatq_uValveServo AT %Q*: USINT;

END_VAR
                                                                                               '           +   , 88#           TwinCAT_Configuration ��0]	�0]+     @��           �(  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.gatq_xBlueLights AT %QX52.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 14 (EL2024)^Channel 4^WindowBlue} *)
	.gati_xBraker1 AT %IX16.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 5^Stotz1} *)
	.gati_xBraker2 AT %IX16.1 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 6^Stotk2} *)
	.gati_xBraker3 AT %IX16.2 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 7^Stotz3} *)
	.gati_xBraker4 AT %IX16.3 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 8^Stotz4} *)
	.gati_xBraker5 AT %IX16.4 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 9^Stotz5} *)
	.gati_xBraker6 AT %IX16.5 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 10^Stotz6} *)
	.gati_xBraker7 AT %IX16.6 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 11^Stotz7} *)
	.gati_xBraker8 AT %IX16.7 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 12^Stotz8} *)
	.gato_xKeyBox AT %QX20.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 15 (EL2024)^Channel 1^MLKeyBox} *)
	.gati_uHelmet1ID AT %IB20 : UDINT;
	.gati_uHelmet2ID AT %IB24 : UDINT;
	.gati_xHelmetDriverReady AT %IX40.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 19 (EL7031)^STM Status^Ready to enable} *)
	.gati_xHelmetOnTarget AT %IX40.1 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 19 (EL7031)^POS Status^In-Target} *)
	.gati_xHelmetReady AT %IX44.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 19 (EL7031)^STM Status^Ready} *)
	.gatq_xHelmetDriverEnable AT %QX42.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 19 (EL7031)^STM Control^Enable} *)
	.gatq_xHelmetMotorExecute AT %QX42.1 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 19 (EL7031)^POS Control^Execute} *)
	.gatq_xHelmetCouterLatch AT %QX42.2 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 19 (EL7031)^ENC Control^Set counter} *)
	.gatq_xHelmetHideoutLed AT %QX44.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 15 (EL2024)^Channel 4^LedHideout} *)
	.gatq_xHelmetHideoutML AT %QX48.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 15 (EL2024)^Channel 3^MLHelmets} *)
	.qatq_uHelmetCounterValue AT %QB28 : UDINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 19 (EL7031)^ENC Control^Set counter value} *)
	.qatq_uHelmetTargetPosition AT %QB32 : UDINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 19 (EL7031)^POS Control^Target position} *)
	.qatq_uHelmetVelocity AT %QB36 : INT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 19 (EL7031)^POS Control^Velocity} *)
	.qatq_uHelmetAcceleration AT %QB38 : UINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 19 (EL7031)^POS Control^Acceleration} *)
	.qatq_uHelmetDeceleration AT %QB40 : UINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 19 (EL7031)^POS Control^Deceleration} *)
	.gati_xKey1 AT %IX17.2 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 15^KeyLeft} *)
	.gati_xKey2 AT %IX17.3 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 16 (EL1819)^Channel 16^KeyRight} *)
	.gatq_xExitDoor AT %QX24.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 15 (EL2024)^Channel 2^MLExitDoor} *)
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
	.gatq_uSoundNb1 AT %QB68 : UINT;
	.gatq_uSoundNb2 AT %QB70 : UINT;
	.gatq_uSoundNb3 AT %QB72 : UINT;
	.gatq_uSoundNb4 AT %QB74 : UINT;
	.gatq_uSoundNb5 AT %QB76 : UINT;
	.gatq_uSoundCmd1 AT %QB61 : USINT;
	.gatq_uSoundCmd2 AT %QB62 : USINT;
	.gatq_uSoundCmd3 AT %QB63 : USINT;
	.gatq_uSoundCmd4 AT %QB64 : USINT;
	.gatq_uSoundCmd5 AT %QB65 : USINT;
	.gati_uSoundStatus1 AT %IB48 : USINT;
	.gati_uSoundStatus2 AT %IB49 : USINT;
	.gati_uSoundStatus3 AT %IB50 : USINT;
	.gati_uSoundStatus4 AT %IB51 : USINT;
	.gati_uSoundStatus5 AT %IB52 : USINT;
	.gati_xValve1 AT %IB28 : USINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Terme 1 (EK1122)^Box 2 (Vannes)^Inputs^SW0} *)
	.gati_xValve2 AT %IB29 : USINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Terme 1 (EK1122)^Box 2 (Vannes)^Inputs^SW1} *)
	.gati_xValve3 AT %IB30 : USINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Terme 1 (EK1122)^Box 2 (Vannes)^Inputs^SW2} *)
	.gati_xValve4 AT %IB31 : USINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Terme 1 (EK1122)^Box 2 (Vannes)^Inputs^SW3} *)
	.gati_xValve5 AT %IB32 : USINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Terme 1 (EK1122)^Box 2 (Vannes)^Inputs^SW4} *)
	.gati_xValve6 AT %IB33 : USINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Terme 1 (EK1122)^Box 2 (Vannes)^Inputs^SW5} *)
	.gati_xValve7 AT %IB34 : USINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Terme 1 (EK1122)^Box 2 (Vannes)^Inputs^SW6} *)
	.gati_xValve8 AT %IB35 : USINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Terme 1 (EK1122)^Box 2 (Vannes)^Inputs^SW7} *)
	.gati_xValve9 AT %IB36 : USINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Terme 1 (EK1122)^Box 2 (Vannes)^Inputs^SW8} *)
	.gatq_xValveLed AT %QX14.0 : BOOL;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Term 14 (EL2024)^Channel 3^VanneLed} *)
	.gatq_uValveServo AT %QB16 : USINT;	(*  ~ {LinkedWith:TIID^P�riph�rique 2 (EtherCAT (v2.10 only))^Term 11 (CX1100-0004)^Terme 1 (EK1122)^Box 2 (Vannes)^Outputs^PWM} *)
END_VAR                                                                                               '              , � � o�           TwinCAT_Import ��0]	��0]                     >   VAR_GLOBAL (* DO NOT CHANGE THIS SHEET MANUALLY! *)
END_VAR
                                                                                               '           	   , 4 4 c'           Variable_Configuration ��0]	��0]	       ��I             VAR_CONFIG
END_VAR
                                                                                                 �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               4     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   6   , � � U�           E_GameState ��0]	��0]                      c   TYPE E_GameState :
(
	E_GameStateRecovery,
	E_GameStatePlaying,
	E_GameStateEnded
);
END_TYPE             "   , h h �[           E_SequenceItems ��0]	��0]      ATQ*BO;        Q   TYPE E_SequenceItems :
(
	E_Red,
	E_Green,
	E_Yellow,
	E_White
);
END_TYPE             !   , N N �A           E_SimonState ��0]	��0]      Ȉ� `��        L   TYPE E_SimonState :
(
	E_playing,
	E_readUserInput,
	E_won
);
END_TYPE             1   , � � �           E_SimonWonState ��0]	��0]                      �   TYPE E_SimonWonState :
(
	E_showNothing,
	E_showDigit1,
	E_wait1,
	E_showDigit2,
	E_wait2,
	E_showDigit3,
	E_wait3
);
END_TYPE              '   , � � &�           F_UserPlayIsValid ��0]	��0]      qucede I        r  FUNCTION F_UserPlayIsValid : BOOL
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
               *   ,   �+           FB_Blink ��0]	��0]                        FUNCTION_BLOCK FB_Blink
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
END_IF               &   , � � @�           FB_Debounce ��0]	��0]      Retn
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
o_xDebounced := fbTON.Q OR ( fbTOF.Q AND o_xDebounced);               (   ,     �           FB_PlaySequence ��0]	��0]                      �  FUNCTION_BLOCK FB_PlaySequence
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

               2   , � � �4           FB_Simon_PlayWon ��0]	��0]      *             �  FUNCTION_BLOCK FB_Simon_PlayWon
VAR_INPUT
	ixFinalCode1: ARRAY [1..10] OF BOOL;
	ixFinalCode2: ARRAY [1..10] OF BOOL;
	ixFinalCode3: ARRAY [1..10] OF BOOL;
	itPeriod : TIME;
END_VAR
VAR_OUTPUT
	oxLED1: BOOL;
	oxLED2: BOOL;
	oxLED3: BOOL;
	oxLED4: BOOL;
	oxLED5: BOOL;
	oxLED6: BOOL;
	oxLED7: BOOL;
	oxLED8: BOOL;
	oxLED9: BOOL;
	oxLED10: BOOL;
END_VAR
VAR
	eSimonWonState : E_SimonWonState := E_showNothing;
	ftTON : TON;
	xTimerTrigger : BOOL;
END_VARB  


ftTON(IN:=xTimerTrigger,  PT:=itPeriod , Q=> , ET=> );
xTimerTrigger := TRUE;
IF ftTON.Q = TRUE THEN
	xTimerTrigger := FALSE;
	CASE eSimonWonState OF
		E_showNothing:
			gatq_xRedBtnLamp := FALSE;
			gatq_xGreenBtnLamp := FALSE;
			gatq_xYellowBtnLamp := FALSE;
			gatq_xWhiteBtnLamp := FALSE;
			oxLED1:= FALSE;
			oxLED2:= FALSE;
			oxLED3:= FALSE;
			oxLED4:= FALSE;
			oxLED5:= FALSE;
			oxLED6:= FALSE;
			oxLED7:= FALSE;
			oxLED8:= FALSE;
			oxLED9:= FALSE;
			oxLED10:= FALSE;
			eSimonWonState :=E_showDigit1;
		E_showDigit1:
			gatq_xRedBtnLamp := FALSE;
			gatq_xGreenBtnLamp := TRUE;
			gatq_xYellowBtnLamp := FALSE;
			gatq_xWhiteBtnLamp := FALSE;
			oxLED1:= ixFinalCode1[1];
			oxLED2:= ixFinalCode1[2];
			oxLED3:= ixFinalCode1[3];
			oxLED4:= ixFinalCode1[4];
			oxLED5:= ixFinalCode1[5];
			oxLED6:= ixFinalCode1[6];
			oxLED7:= ixFinalCode1[7];
			oxLED8:= ixFinalCode1[8];
			oxLED9:= ixFinalCode1[9];
			oxLED10:= ixFinalCode1[10];
			eSimonWonState :=E_wait1;
		E_wait1:
			gatq_xRedBtnLamp := FALSE;
			gatq_xGreenBtnLamp := FALSE;
			gatq_xYellowBtnLamp := FALSE;
			gatq_xWhiteBtnLamp := FALSE;
			oxLED1:= FALSE;
			oxLED2:= FALSE;
			oxLED3:= FALSE;
			oxLED4:= FALSE;
			oxLED5:= FALSE;
			oxLED6:= FALSE;
			oxLED7:= FALSE;
			oxLED8:= FALSE;
			oxLED9:= FALSE;
			oxLED10:= FALSE;
			eSimonWonState :=E_showDigit2;
		E_showDigit2:
			gatq_xRedBtnLamp := FALSE;
			gatq_xGreenBtnLamp := FALSE;
			gatq_xYellowBtnLamp := FALSE;
			gatq_xWhiteBtnLamp := TRUE;
			oxLED1:= ixFinalCode2[1];
			oxLED2:= ixFinalCode2[2];
			oxLED3:= ixFinalCode2[3];
			oxLED4:= ixFinalCode2[4];
			oxLED5:= ixFinalCode2[5];
			oxLED6:= ixFinalCode2[6];
			oxLED7:= ixFinalCode2[7];
			oxLED8:= ixFinalCode2[8];
			oxLED9:= ixFinalCode2[9];
			oxLED10:= ixFinalCode2[10];
			eSimonWonState :=E_wait2;
		E_wait2:
			gatq_xRedBtnLamp := FALSE;
			gatq_xGreenBtnLamp := FALSE;
			gatq_xYellowBtnLamp := FALSE;
			gatq_xWhiteBtnLamp := FALSE;
			oxLED1:= FALSE;
			oxLED2:= FALSE;
			oxLED3:= FALSE;
			oxLED4:= FALSE;
			oxLED5:= FALSE;
			oxLED6:= FALSE;
			oxLED7:= FALSE;
			oxLED8:= FALSE;
			oxLED9:= FALSE;
			oxLED10:= FALSE;
			eSimonWonState :=E_showDigit3;
		E_showDigit3:
			gatq_xRedBtnLamp := TRUE;
			gatq_xGreenBtnLamp := FALSE;
			gatq_xYellowBtnLamp := FALSE;
			gatq_xWhiteBtnLamp := FALSE;
			oxLED1:= ixFinalCode3[1];
			oxLED2:= ixFinalCode3[2];
			oxLED3:= ixFinalCode3[3];
			oxLED4:= ixFinalCode3[4];
			oxLED5:= ixFinalCode3[5];
			oxLED6:= ixFinalCode3[6];
			oxLED7:= ixFinalCode3[7];
			oxLED8:= ixFinalCode3[8];
			oxLED9:= ixFinalCode3[9];
			oxLED10:= ixFinalCode3[10];
			eSimonWonState :=E_wait3;
		E_wait3:
			gatq_xRedBtnLamp := FALSE;
			gatq_xGreenBtnLamp := FALSE;
			gatq_xYellowBtnLamp := FALSE;
			gatq_xWhiteBtnLamp := FALSE;
			oxLED1:= FALSE;
			oxLED2:= FALSE;
			oxLED3:= FALSE;
			oxLED4:= FALSE;
			oxLED5:= FALSE;
			oxLED6:= FALSE;
			oxLED7:= FALSE;
			oxLED8:= FALSE;
			oxLED9:= FALSE;
			oxLED10:= FALSE;
			eSimonWonState :=E_showNothing;
	END_CASE
END_IF               4   , 4 4 S           FB_Valve_PlayWon ��0]	��0]                      �  FUNCTION_BLOCK FB_Valve_PlayWon
VAR CONSTANT
	c_auFinalCode: ARRAY [0..6] OF USINT := 180, 145, 115, 82, 55, 30, 5;


END_VAR

VAR_INPUT
	iauFinalCode: ARRAY [1..4] OF UINT;
	iuFinalCodeLength : UINT := 4;
	itPeriod : TIME;
END_VAR
VAR_OUTPUT
	ouServoValue: USINT;
	oxLed: BOOL;
END_VAR
VAR
	uValveWonState : UINT := 10;
	ftTON : TON;
	xTimerTrigger : BOOL;
	uIndex : UINT := 1;
END_VAR  
ftTON(IN:=xTimerTrigger,  PT:=itPeriod , Q=> , ET=> );
xTimerTrigger := TRUE;
IF ftTON.Q = TRUE THEN
	xTimerTrigger := FALSE;
	CASE uValveWonState OF
		10:
			(* Move to digit*)
			oxLed := FALSE;
			ouServoValue := c_auFinalCode[iauFinalCode[uIndex]];
			uValveWonState :=20;
		20:
			(* WAIT needdle on digit*)
			uValveWonState :=30;
		30:
			oxLed := TRUE;
			uValveWonState :=40;
		40:
			(* WAIT*)
			IF uIndex = iuFinalCodeLength THEN
				uValveWonState :=50;
				uIndex := 1;
			ELSE
				uIndex := uIndex + 1;
				uValveWonState :=10;
			END_IF
		50:
			(* WAIT AT END OF CODE*)
			uValveWonState :=60;
			oxLed := FALSE;
		60:
			uValveWonState :=70;
		70:
			uValveWonState :=80;
		80:
			uValveWonState :=10;
	END_CASE
END_IF               #   , N N }�           MAIN �0]	��0]      �              �  PROGRAM MAIN
VAR_INPUT
END_VAR
VAR_OUTPUT
END_VAR
VAR CONSTANT
	itPeriod : TIME := t#1s;
END_VAR

VAR
	byteValue : BYTE := 255;
	wordValue : WORD := 2300;
	dwordValue : DWORD := 10;
	sintValue : SINT := -50;
	intValue : INT := 16555;
	dintValue : DINT := 65345;
	realValue : REAL := 150.345;
	lrealValue : LREAL := - 50.50;
	boolValue: BOOL := TRUE;


	uState : UINT := 0;
	ftTON : TON;
	xTimerTrigger : BOOL;
	uIndex : UINT := 1;
END_VARv  

P_Simon();

P_CircuitBrakers();

P_Valves();

P_Double_Key();

P_Helmets();

ftTON(IN:=xTimerTrigger,  PT:=itPeriod , Q=> , ET=> );
xTimerTrigger := TRUE;
IF ftTON.Q = TRUE THEN
	xTimerTrigger := FALSE;
	CASE uState OF
		0:
			uState := 10;
			gatq_xBlueLights := FALSE;

		10:
			uState := 0;
			gatq_xBlueLights := TRUE;
	END_CASE
END_IF



               )   ,   �           P_CircuitBrakers e�0]	��0]                      .  PROGRAM P_CircuitBrakers

VAR CONSTANT
	c_aeCorrectSequence: ARRAY [1..8] OF BOOL := TRUE, FALSE, FALSE, TRUE, FALSE, TRUE, FALSE, FALSE ;
	c_aeInitialSequence: ARRAY [1..8] OF BOOL := TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE ;
	c_iCorrectSequenceLength: INT := 8;
END_VAR

VAR

END_VARx  

IF g_eGameState =  E_GameStateRecovery THEN
	gat_xBrakerSolved:= FALSE;

	IF (gati_xBraker1 = c_aeInitialSequence[1])  AND
	   (gati_xBraker2 = c_aeInitialSequence[2])  AND
	   (gati_xBraker3 = c_aeInitialSequence[3])  AND
	   (gati_xBraker4 = c_aeInitialSequence[4])  AND
	   (gati_xBraker5 = c_aeInitialSequence[5])  AND
	   (gati_xBraker6 = c_aeInitialSequence[6])  AND
	   (gati_xBraker7 = c_aeInitialSequence[7])  AND
	   (gati_xBraker8 = c_aeInitialSequence[8])  THEN
		gato_xKeyBox := TRUE;
		gat_xBreakerReadyToPlay := TRUE;
	ELSE
		gato_xKeyBox := FALSE;
		gat_xBreakerReadyToPlay := FALSE;
	END_IF
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

IF gat_xBrakerSolved THEN
	gato_xKeyBox := FALSE;
END_IF




               7   , N N !m           P_Double_Key 	�0]	3�0]      1              �   PROGRAM P_Double_Key
VAR CONSTANT
	c_aeCorrectSequence: ARRAY [1..2] OF BOOL := TRUE, TRUE;
	c_aeInitialSequence: ARRAY [1..2] OF BOOL := FALSE, FALSE ;
END_VAR

VAR
END_VAR�  

IF g_eGameState =  E_GameStateRecovery THEN
	gat_xKeysSolved:= FALSE;
	IF (gati_xKey1 = c_aeInitialSequence[1])  AND
	    (gati_xKey2 = c_aeInitialSequence[2]) THEN

		gatq_xExitDoor := TRUE;
		gat_xKeysReadyToPlay := TRUE;
	ELSE
		gatq_xExitDoor := FALSE;
		gat_xKeysReadyToPlay := FALSE;
	END_IF
END_IF


IF gati_xKey1 AND gati_xKey2 AND g_eGameState =  E_GameStatePlaying THEN
	gat_xKeysSolved := TRUE;
END_IF


IF gat_xKeysSolved THEN
	gatq_xExitDoor := FALSE;
END_IF               0   , � � �        	   P_Helmets ��0]	j�0]                      �   PROGRAM P_Helmets
VAR CONSTANT
	c_uMotorSpeed: INT := 1000;
	c_uHelmetAcceleration : UINT := 100;
	c_uTargetPosition : UDINT := 650000 ;
END_VAR

VAR
	uOpeningState : UINT := 10;

END_VAR5  


IF g_eGameState =  E_GameStateRecovery THEN
	gat_xHelmetsSolved := FALSE;
	gatq_xHelmetDriverEnable := FALSE;
	gatq_xHelmetMotorExecute := FALSE;
	gatq_xHelmetHideoutLed := TRUE;
         gatq_xHelmetHideoutML := TRUE;
	IF gati_xHelmetDriverReady THEN
		gat_xHelmetsReadyToPlay := TRUE;
	ELSE
		gat_xHelmetsReadyToPlay := FALSE;
	END_IF
END_IF

IF g_eGameState =  E_GameStatePlaying AND  gat_xHelmetsSolved THEN
	CASE uOpeningState OF
		10:
			gatq_xHelmetHideoutML := FALSE;
			gatq_xHelmetHideoutLed := TRUE;
			IF gati_xHelmetDriverReady THEN
				gatq_xHelmetDriverEnable := TRUE;
				gatq_xHelmetMotorExecute := FALSE;
				qatq_uHelmetVelocity := c_uMotorSpeed;
				qatq_uHelmetAcceleration := c_uHelmetAcceleration;
				qatq_uHelmetDeceleration := c_uHelmetAcceleration;
				qatq_uHelmetTargetPosition := c_uTargetPosition;
				qatq_uHelmetCounterValue := 0;
				uOpeningState := 20;
			END_IF
		20:
			gatq_xHelmetCouterLatch := TRUE;
			uOpeningState := 30;
		30:
			gatq_xHelmetCouterLatch := FALSE;
			uOpeningState := 40;
		40:
			IF gati_xHelmetReady THEN
				gatq_xHelmetMotorExecute := TRUE;
				uOpeningState := 50;
			END_IF
		50:
			IF gati_xHelmetOnTarget THEN
				gatq_xHelmetMotorExecute := FALSE;
				gatq_xHelmetDriverEnable := FALSE;
			END_IF
	END_CASE
END_IF                  ,   I           P_Simon ��0]	��0]                      �  PROGRAM P_Simon

VAR CONSTANT
	c_aeCorrectSequence: ARRAY [1..8] OF E_SequenceItems := E_Red, E_Green, E_Yellow, E_White, E_Red, E_Green, E_Yellow, E_White ;
	c_iCorrectSequenceLength: INT := 8;
	c_tDebounceTime : TIME := t#0.05s;
	c_tPlayerTimeoutTime : TIME := t#5s;
	c_tLightOnPeriod: TIME := t#1.0s;
	c_tLightOffPeriod: TIME := t#0.4s;

	c_uErrorSound : USINT := 3;
	c_uRightSound : USINT := 4;

	c_axFinalCode1: ARRAY [1..10] OF BOOL := TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE ;
	c_axFinalCode2: ARRAY [1..10] OF BOOL := TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE ;
	c_axFinalCode3: ARRAY [1..10] OF BOOL := TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE ;
	c_tLightWonPeriod: TIME := t#2s;

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

	fbPlayWon : FB_Simon_PlayWon;


END_VAR


  

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

IF g_eGameState =  E_GameStateRecovery THEN
	gatq_uSoundCmd2 := 0;
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
		gatq_xRedBtnLamp := FALSE;
		gatq_xGreenBtnLamp := FALSE;
		gatq_xYellowBtnLamp := FALSE;
		gatq_xWhiteBtnLamp := FALSE;

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
		gatq_xRedBtnLamp := TRUE;
		gatq_xGreenBtnLamp := TRUE;
		gatq_xYellowBtnLamp := TRUE;
		gatq_xWhiteBtnLamp := TRUE;
		gatq_uSoundCmd2 := 0;

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
				gatq_uSoundNb2 := c_uRightSound;
				gatq_uSoundCmd2 := 1;
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
				gatq_uSoundNb2 := c_uErrorSound;
				gatq_uSoundCmd2 := 1;
				iShownSequenceIndex := 1;
				eSimonState := E_playing;
			END_IF
		ELSE
			IF xPlayerTimeoutOccured THEN
				IF  iShownSequenceIndex <> 1  THEN
					gatq_uSoundNb2 := c_uErrorSound;
					gatq_uSoundCmd2 := 1;
				END_IF
				iShownSequenceIndex := 1;
				eSimonState := E_playing;
			END_IF
		END_IF
	E_won :
		iShownSequenceIndex := 99;
		gat_xSimonSolved := TRUE;

END_CASE

IF gat_xSimonSolved THEN
	fbPlayWon(
		ixFinalCode1 := c_axFinalCode1,
		ixFinalCode2 := c_axFinalCode2,
		ixFinalCode3 := c_axFinalCode3,
		itPeriod := c_tLightWonPeriod,
		oxLED1 => gatq_xCorrectLed1,
		oxLED2 => gatq_xCorrectLed2,
		oxLED3 => gatq_xCorrectLed3,
		oxLED4 => gatq_xCorrectLed4,
		oxLED5 => gatq_xCorrectLed5,
		oxLED6 => gatq_xCorrectLed6,
		oxLED7 => gatq_xCorrectLed7,
		oxLED8 => gatq_xCorrectLed8,
		oxLED9 => gatq_xCorrectLed9,
		oxLED10 => gatq_xCorrectLed10);





ELSE
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
END_IF
               3   ,   �9           P_Valves S�0]	D�0]                      �  PROGRAM P_Valves

VAR CONSTANT
	c_aeCorrectSequence: ARRAY [1..9] OF USINT := 1, 0, 1, 0, 1, 0, 0, 1, 1 ;
	c_aeInitialSequence: ARRAY [1..9] OF USINT := 0, 0, 0, 0, 0, 0, 0, 0, 0 ;

	c_iCorrectSequenceLength: INT := 9;

	c_auFinalCode: ARRAY [1..4] OF UINT := 4, 1, 6, 2;
	c_uFinalCodeLength:  UINT := 4;
	c_tWonPeriod: TIME := t#0.5s;

END_VAR

VAR
	fbPlayWon : FB_Valve_PlayWon;
END_VAR�  
IF g_eGameState =  E_GameStateRecovery THEN
	gat_xValveSolved:= FALSE;

	IF (gati_xValve1 = c_aeInitialSequence[1])  AND
	  (gati_xValve2 = c_aeInitialSequence[2])  AND
	  (gati_xValve3 = c_aeInitialSequence[3])  AND
	  (gati_xValve4 = c_aeInitialSequence[4])  AND
	  (gati_xValve5 = c_aeInitialSequence[5])  AND
	  (gati_xValve6 = c_aeInitialSequence[6])  AND
	  (gati_xValve7 = c_aeInitialSequence[7])  AND
	  (gati_xValve8 = c_aeInitialSequence[8])  AND
	  (gati_xValve9 = c_aeInitialSequence[9])  THEN
		gatq_xValveLed := FALSE;
		gat_xValvesReadyToPlay := TRUE;
	ELSE
		gatq_xValveLed := TRUE;
		gat_xValvesReadyToPlay := FALSE;
	END_IF
END_IF


IF (gati_xValve1 = c_aeCorrectSequence[1])  AND
  (gati_xValve2 = c_aeCorrectSequence[2])  AND
  (gati_xValve3 = c_aeCorrectSequence[3])  AND
  (gati_xValve4 = c_aeCorrectSequence[4])  AND
  (gati_xValve5 = c_aeCorrectSequence[5])  AND
  (gati_xValve6 = c_aeCorrectSequence[6])  AND
  (gati_xValve7 = c_aeCorrectSequence[7])  AND
  (gati_xValve8 = c_aeCorrectSequence[8])  AND
  (gati_xValve9 = c_aeCorrectSequence[9])  THEN

	gat_xValveSolved := TRUE;

END_IF

IF gat_xValveSolved AND  g_eGameState =  E_GameStatePlaying THEN
	fbPlayWon(
		iauFinalCode := c_auFinalCode,
		iuFinalCodeLength := c_uFinalCodeLength,
		itPeriod := c_tWonPeriod,
		ouServoValue => gatq_uValveServo,
		oxLed => gatq_xValveLed);
END_IF                %   , � � u           V_Simon ��0]
    @��w��0]   d                                     gatv_xCorrectLed1Visu                                                                    
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
             ����  ��� A�A        ����  ����                          POUs                 F_UserPlayIsValid  '                   FB_Blink  *                   FB_Debounce  &                   FB_PlaySequence  (                   FB_Simon_PlayWon  2                   FB_Valve_PlayWon  4                   MAIN  #                  P_CircuitBrakers  )                   P_Double_Key  7                	   P_Helmets  0                   P_Simon                     P_Valves  3   ����           
   Data types                E_GameState  6                   E_SequenceItems  "                   E_SimonState  !                   E_SimonWonState  1   ����              Visualizations                V_Simon  %   ����              Global Variables
                 Global_Variables                     Global_Variables_CircuitBraker  ,                   Global_Variables_Helmets  /                   Global_Variables_Keys  .                   Global_Variables_Simon                      Global_Variables_Sounds  5                  Global_Variables_Valves  -                   TwinCAT_Configuration  +                   TwinCAT_Import                     Variable_Configuration  	   ����                                                              �F[                         	   localhost            P      	   localhost            P      	   localhost            P     [}[  OM<U