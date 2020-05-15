
PROGRAM _CYCLIC
	// Create sample recipes
	IF(cmd_create AND NOT Recipe_01.CMD.New AND Recipe_01.ERR.No = 0) THEN
		idx := idx + 1;
		MaschineData.Temperature1 := idx;
		MaschineData.Temperature2 := idx;
		MaschineData.Position := idx;
		MaschineData.MotorSpeed := idx;
		
		brsitoa(idx, ADR(tmpStr1));
		tmpStr2 := 'recipe_';
		brsstrcat(ADR(tmpStr2), ADR(tmpStr1));
		brwcsconv(ADR(Recipe_01.PAR.RecipeName), ADR(tmpStr2), brwU8toUC);
		Recipe_01.CMD.New := 1;
		
		IF(idx = 100) THEN
			idx := 0;
			cmd_create := FALSE;
		END_IF
	ELSIF (Recipe_01.ERR.No <> 0) THEN
		idx := 0;
		cmd_create := FALSE;		
	END_IF
	
	// Timer for init command
	IF(cmd_create OR Recipe_01.CMD.Init) THEN
		counter := counter + 1;
	END_IF
	 
END_PROGRAM

