
PROGRAM _EXIT
	// --------------------------------------------------------------------------------------------------------------------
	// Cyclic function calls
	MpRecipeRegPar_0(Enable := FALSE);
	FOR pvCnt:=1 TO REC_VAR_NUM DO
		MpRecipeRegPar_1[pvCnt](Enable := FALSE);
		IF(REC_VAR_LIST[pvCnt] = '') THEN
			EXIT;
		END_IF
	END_FOR;
	MpRecipeCsv_0(Enable := FALSE);
	MpRecipeXml_0(Enable := FALSE);
	
END_PROGRAM