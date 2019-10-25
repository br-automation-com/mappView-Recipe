(*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*)
(*Global enumerations*)

TYPE
	recSTATE : 
		( (*Recipe managment state machine*)
		REC_WAIT,
		REC_REG_NAME,
		REC_REG_VAR,
		REC_CREATE_DIR,
		REC_READ_DIR,
		REC_READ_DIR_1,
		REC_READ_DIR_2,
		REC_READ_DIR_3,
		REC_GEN_FILE_NAME,
		REC_LOAD_SAVE,
		REC_DELETE,
		REC_RENAME,
		REC_ERROR
		);
	recTYPE : 
		(
		typeCSV,
		typeXML
		);
END_TYPE

(*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*)
(*Global structure*)

TYPE
	recERR : 	STRUCT  (*Recipe managment error structure*)
		Text : WSTRING[200]; (* Error text *)
		No : DINT; (* Error number *)
		State : recSTATE; (* Error step *)
	END_STRUCT;
	recCMD : 	STRUCT  (*Recipe managment command structure*)
		Init : BOOL := TRUE;
		New : BOOL;
		Load : BOOL;
		Save : BOOL;
		Rename : BOOL;
		Delete : BOOL; (* Delete selected file *)
		ErrorReset : BOOL;
	END_STRUCT;
	recPAR : 	STRUCT  (*Recipe managment parameter structure*)
		RecipeVariable : STRING[200]; (*Name of the variable where the data is stored*)
		RecipeName : WSTRING[REC_NAME_LENGTH]; (*Recipe name*)
		RecipeNameNew : WSTRING[REC_NAME_LENGTH]; (*Recipe name*)
		RecipeID : STRING[REC_NAME_LENGTH]; (*Recipe name*)
		RecipeDirectory : STRING[200]; (*Recipe directory*)
		DeviceName : STRING[100]; (*Device name where the recipes are stored*)
		MpLink : MpComIdentType; (*MpLink from mappRecipe*)
		Initialized : BOOL; (*Indicates that recipe managment was initialized*)
		VisuSlotID : USINT; (*ID for connected web connection*)
		VisuEnableCommand : BOOL;
	END_STRUCT;
	recDAT : 	STRUCT  (*Recipe managment data structure*)
		RecipeNames : ARRAY[0..REC_MAX_NUM]OF WSTRING[REC_NAME_LENGTH]; (*Recipe unicode name*)
		RecipeIDs : ARRAY[0..REC_MAX_NUM]OF STRING[REC_NAME_LENGTH]; (*Recipe unicode name*)
		RecipeNum : UINT; (*Number of recipes*)
		Status : WSTRING[100]; (*Shows the result of the last command*)
	END_STRUCT;
	recVIS : 	STRUCT  (*Recipe managment visualization structure*)
		RecipeNames : ARRAY[0..REC_MAX_NUM]OF WSTRING[REC_VIS_LENGTH]; (*Recipe file size*)
		RecipeNum : UINT; (*Number of recipes*)
		RecipeFilter : WSTRING[REC_NAME_LENGTH]; (*Filter for recipe name	*)
		RecipeSelect : WSTRING[REC_NAME_LENGTH]; (*Select new or renamed recipe in list box*)
		ShowMessageBoxError : BOOL; (*Show message box on error*)
	END_STRUCT;
	recMAIN : 	STRUCT  (*Recipe managment main structure*)
		CMD : recCMD; (* Command structure *)
		PAR : recPAR; (* Parameter structure *)
		DAT : recDAT; (*Data structure*)
		VIS : ARRAY[0..REC_MAX_CLIENTS_ID]OF recVIS; (*Visualization structure*)
		ERR : recERR; (* Error structure *)
	END_STRUCT;
END_TYPE

(*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*)
(*Structure that contains the recipe variables*)

TYPE
	recVariable : 	STRUCT 
		Temperature1 : INT := 11;
		Temperature2 : INT := 22;
		MotorSpeed : DINT := 33;
		Position : REAL := 44.55;
	END_STRUCT;
END_TYPE
