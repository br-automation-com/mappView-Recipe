
FUNCTION CreateError : recSTATE
	VAR_INPUT
		RECIPE : REFERENCE TO recMAIN;
		No : DINT;
		Text : WSTRING[200];
		State : recSTATE;
	END_VAR
END_FUNCTION

FUNCTION CreateMessage : BOOL
	VAR_INPUT
		TargetString : UDINT;
		Text : UDINT;
		RecipeName : UDINT;
		VisuSlotID : USINT;
	END_VAR
	VAR
		VisuSlotIDStr : WSTRING[5];
		tmpWStr1 : WSTRING[200];
	END_VAR
END_FUNCTION

FUNCTION FindRecName : UINT
	VAR_INPUT
		RECIPE : REFERENCE TO recMAIN;
		RecipeName : WSTRING[REC_NAME_LENGTH];
	END_VAR
	VAR
		idx : UINT;
	END_VAR
END_FUNCTION

FUNCTION InsertRecName : UINT
	VAR_INPUT
		RECIPE : REFERENCE TO recMAIN;
		new_name : WSTRING[REC_NAME_LENGTH];
		new_id : STRING[REC_NAME_LENGTH];
	END_VAR
	VAR
		idx : INT;
		idy : INT;
		lSort : DINT;
		lValue : DINT;
		tmpSTR : STRING[REC_NAME_LENGTH];
	END_VAR
END_FUNCTION

FUNCTION RemoveRecName : BOOL
	VAR_INPUT
		RECIPE : REFERENCE TO recMAIN;
		RecipeIndex : UINT;
	END_VAR
END_FUNCTION

FUNCTION IsInstrW : BOOL
	VAR_INPUT
		string1 : UDINT;
		string2 : UDINT;
	END_VAR
	VAR
		idx : UDINT;
	END_VAR
END_FUNCTION

FUNCTION WorkingStatus : USINT
	VAR_INPUT
		RECIPE : REFERENCE TO recMAIN;
		str : UDINT;
		animation : USINT;
	END_VAR
END_FUNCTION

FUNCTION WString2DataProvider : BOOL
	VAR_INPUT
		SourceString : UDINT;
		TargetString : UDINT;
	END_VAR
END_FUNCTION

FUNCTION ReplaceString : BOOL
	VAR_INPUT
		dataSTR : UDINT;
		searchSTR : UDINT;
		replaceSTR : UDINT;
		first : BOOL;
	END_VAR
	VAR
		idx : UDINT;
	END_VAR
END_FUNCTION

FUNCTION FindInMem : DINT
	VAR_INPUT
		data1 : UDINT;
		len1 : UDINT;
		data2 : UDINT;
		len2 : UDINT;
		direction : BOOL;
	END_VAR
	VAR
		idx : UDINT;
	END_VAR
END_FUNCTION
