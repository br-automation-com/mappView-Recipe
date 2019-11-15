//******************************************************************************************************
//	Function:	Recipe management with mappRecipe																			
//  Version:	0.3																				
//	Changed:	24.10.2019															
//******************************************************************************************************

PROGRAM _INIT
	// ----------------------------------------------------------------------------------------
	// The following settings can be adjusted
	Recipe_01.PAR.RecipeVariable 	:= 'RecipeData';		// Top variable structure with recipe data
	IF(DiagCpuIsSimulated()) THEN
		Recipe_01.PAR.DeviceName 	:= 'SIM_DEVICE';		// Device name from the CPU configuration for simulation
	ELSE
		Recipe_01.PAR.DeviceName 	:= 'RECIPE_DEVICE';		// Device name from the CPU configuration for X20CPU
	END_IF
	// ----------------------------------------------------------------------------------------
	this							:= 'Recipe_01';			// Name of the global variable structure and this task name
	Recipe_01.PAR.RecipeDirectory 	:= 'Recipes';			// Directory where the recipes are stored 
	IF(REC_RECIPE_TYPE = typeCSV) THEN
		Recipe_01.PAR.MpLink 		:= gRecipeCsv_01; 		// MpLink from mappRecipe configuration in physical view
	ELSE
		Recipe_01.PAR.MpLink 		:= gRecipeXml_01; 		// MpLink from mappRecipe configuration in physical view
	END_IF
	
	// ---------------------------------------------------------------------------------------- 
	// Dont change anything below this line
	// ---------------------------------------------------------------------------------------- 

	// ---------------------------------------------------------------------------------------- 
	// Make sure global variable structure and task name are correct
	taskStatus := ST_ident(ADR(this), taskGroup, ADR(taskID));
	pvStatus := PV_xgetadr(ADR(this), ADR(pvADR), ADR(pvLEN));
	// Connect global and local structure
	IF(pvStatus = 0) THEN
		RECIPE ACCESS pvADR;
		brsmemset(ADR(RECIPE.ERR), 0 , SIZEOF(RECIPE.ERR));
		RECIPE.PAR.Initialized := FALSE;
	END_IF
	RecipeData;
END_PROGRAM