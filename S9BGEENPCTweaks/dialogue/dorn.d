//Dialogue: Dorn revised entrance
//Author : Smeagolheart

APPEND DORN
	IF ~NumTimesTalkedTo(0)~ THEN BEGIN S9Wel
	SAY @1050
		IF ~~ THEN GOTO S9Wel3
	END

	IF ~NumTimesTalkedToGT(0)~ THEN BEGIN S9Wel2
	SAY @1059
		IF ~~ THEN REPLY @1054 GOTO s9wait
		IF ~~ THEN REPLY @1055 GOTO s9go
		IF ~~ THEN REPLY @1064 GOTO S9Wel3
		IF ~~ THEN REPLY @1057 GOTO s9refu		
	END	
	
	IF ~~ THEN BEGIN S9Wel3
	SAY @1063
		IF ~~ THEN REPLY @1052 GOTO s9go	
		IF ~~ THEN REPLY @1051 GOTO S9spec
		IF ~~ THEN REPLY @1053 GOTO S9rew	
	END		

	IF ~~ THEN BEGIN S9spec
	SAY @1061
		IF ~~ THEN GOTO S9rew
	END

	IF ~~ THEN BEGIN S9rew
	SAY @1058
		IF ~~ THEN REPLY @1052 GOTO s9go
		IF ~~ THEN REPLY @1057 GOTO s9refu
		IF ~~ THEN REPLY @1054 GOTO s9wait
	END

	IF ~~ THEN BEGIN s9go
	SAY @1060
	IF ~~ DO ~SetGlobal("DORNPLOT","GLOBAL",1)~ EXIT	
	END
	
	IF ~~ THEN BEGIN s9refu
	SAY @1062
	IF ~~ THEN GOTO s9reu2
	END

	IF ~~ THEN BEGIN s9reu2
	SAY @1065
	IF ~~ DO ~~ EXIT
	END	
	
	IF ~~ THEN BEGIN s9wait
	SAY @1056
	IF ~~ DO ~~ EXIT
	END	
		
END // APPEND