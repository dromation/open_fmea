BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "fmea_operations" (
	"prepeared_by"	,
	"fmea_type"	,
	"key_date"	,
	"fmea_number"	,
	"project_name"	,
	"op_seq"	,
	"part_product"	,
	"characteristics"	,
	"failure"	,
	"effect"	,
	"severity"	,
	"classification"	,
	"cause"	,
	"prevention"	,
	"occurance"	,
	"control_detection"	,
	"detection"	,
	"RPN"	,
	"action"	,
	"responsible"	,
	"date"	,
	"action_result"	,
	"date_result"	,
	"severity_result"	,
	"occurance_result"	,
	"detection_result"	,
	"RPN_result"	
);
CREATE TABLE IF NOT EXISTS "fmea_potential" (
	"prepeared_by"	,
	"fmea_type"	,
	"key_date"	,
	"fmea_number"	,
	"project_name"	,
	"op_seq"	,
	"part_product"	,
	"characteristics"	,
	"failure"	,
	"effect"	,
	"severity"	,
	"classification"	,
	"cause"	,
	"prevention"	,
	"occurance"	,
	"control_detection"	,
	"detection"	,
	"RPN"	,
	"action"	,
	"responsible"	,
	"date"	,
	"action_result"	,
	"date_result"	,
	"severity_result"	,
	"occurance_result"	,
	"detection_result"	,
	"RPN_result"	
);
CREATE TABLE IF NOT EXISTS "fmea_process" (
	"prepeared_by"	,
	"fmea_type"	,
	"key_date"	,
	"fmea_number"	,
	"project_name"	,
	"op_seq"	,
	"part_product"	,
	"characteristics"	,
	"failure"	,
	"effect"	,
	"severity"	,
	"classification"	,
	"cause"	,
	"prevention"	,
	"occurance"	,
	"control_detection"	,
	"detection"	,
	"RPN"	,
	"action"	,
	"responsible"	,
	"date"	,
	"action_result"	,
	"date_result"	,
	"severity_result"	,
	"occurance_result"	,
	"detection_result"	,
	"RPN_result"	
);
CREATE TABLE IF NOT EXISTS "fmea_product" (
	"prepeared_by"	,
	"fmea_type"	,
	"key_date"	,
	"fmea_number"	,
	"project_name"	,
	"op_seq"	,
	"part_product"	,
	"characteristics"	,
	"failure"	,
	"effect"	,
	"severity"	,
	"classification"	,
	"cause"	,
	"prevention"	,
	"occurance"	,
	"control_detection"	,
	"detection"	,
	"RPN"	,
	"action"	,
	"responsible"	,
	"date"	,
	"action_result"	,
	"date_result"	,
	"severity_result"	,
	"occurance_result"	,
	"detection_result"	,
	"RPN_result"	
);
CREATE TABLE IF NOT EXISTS "fmea_software" (
	"prepeared_by"	,
	"fmea_type"	,
	"key_date"	,
	"fmea_number"	,
	"project_name"	,
	"op_seq"	,
	"part_product"	,
	"characteristics"	,
	"failure"	,
	"effect"	,
	"severity"	,
	"classification"	,
	"cause"	,
	"prevention"	,
	"occurance"	,
	"control_detection"	,
	"detection"	,
	"RPN"	,
	"action"	,
	"responsible"	,
	"date"	,
	"action_result"	,
	"date_result"	,
	"severity_result"	,
	"occurance_result"	,
	"detection_result"	,
	"RPN_result"	
);
CREATE TABLE IF NOT EXISTS "fmea_system" (
	"prepeared_by"	,
	"fmea_type"	,
	"key_date"	,
	"fmea_number"	,
	"project_name"	,
	"op_seq"	,
	"part_product"	,
	"characteristics"	,
	"failure"	,
	"effect"	,
	"severity"	,
	"classification"	,
	"cause"	,
	"prevention"	,
	"occurance"	,
	"control_detection"	,
	"detection"	,
	"RPN"	,
	"action"	,
	"responsible"	,
	"date"	,
	"action_result"	,
	"date_result"	,
	"severity_result"	,
	"occurance_result"	,
	"detection_result"	,
	"RPN_result"	
);
CREATE TABLE IF NOT EXISTS "fmea_design" (
	"prepeared_by"	TEXT,
	"fmea_type"	TEXT,
	"key_date"	INTEGER,
	"fmea_number"	NUMERIC,
	"project_name"	TEXT,
	"item"	TEXT,
	"core_team"	INTEGER,
	"op_seq"	INTEGER,
	"part_product"	TEXT,
	"BOM_number"	INTEGER,
	"characteristics"	TEXT,
	"failure"	TEXT,
	"effect"	TEXT,
	"severity"	NUMERIC,
	"classification"	NUMERIC,
	"cause"	TEXT,
	"prevention"	TEXT,
	"occurance"	NUMERIC,
	"control_detection"	TEXT,
	"detection"	NUMERIC,
	"RPN"	NUMERIC,
	"action"	TEXT,
	"responsible"	TEXT,
	"date"	INTEGER,
	"action_result"	TEXT,
	"date_result"	INTEGER,
	"severity_result"	NUMERIC,
	"occurance_result"	NUMERIC,
	"detection_result"	NUMERIC,
	"RPN_result"	NUMERIC
);
CREATE TABLE IF NOT EXISTS "fmea_numbers" (
	"default"	NUMERIC,
	"design"	NUMERIC,
	"operations"	NUMERIC,
	"potential"	NUMERIC,
	"process"	NUMERIC,
	"product"	NUMERIC,
	"software"	NUMERIC,
	"system"	NUMERIC,
	FOREIGN KEY("design") REFERENCES "fmea_design"("fmea_number"),
	FOREIGN KEY("potential") REFERENCES "fmea_potential"("fmea_number"),
	FOREIGN KEY("operations") REFERENCES "fmea_operations"("fmea_number"),
	FOREIGN KEY("default") REFERENCES "fmea_default"("fmea_number"),
	FOREIGN KEY("product") REFERENCES "fmea_system"("fmea_number"),
	FOREIGN KEY("software") REFERENCES "fmea_software"("fmea_number"),
	FOREIGN KEY("process") REFERENCES "fmea_process"("fmea_number"),
	FOREIGN KEY("system") REFERENCES "fmea_product"("fmea_number")
);
CREATE TABLE IF NOT EXISTS "fmea_type" (
	"default"	TEXT,
	"design"	TEXT,
	"operations"	TEXT,
	"potential"	TEXT,
	"process"	TEXT,
	"product"	TEXT,
	"software"	TEXT,
	"system"	TEXT,
	FOREIGN KEY("default") REFERENCES "fmea_default"("fmea_type"),
	FOREIGN KEY("product") REFERENCES "fmea_system"("fmea_type"),
	FOREIGN KEY("operations") REFERENCES "fmea_operations"("fmea_type"),
	FOREIGN KEY("system") REFERENCES "fmea_product"("fmea_type"),
	FOREIGN KEY("software") REFERENCES "fmea_software"("fmea_type"),
	FOREIGN KEY("design") REFERENCES "fmea_design"("fmea_type"),
	FOREIGN KEY("process") REFERENCES "fmea_process"("fmea_type"),
	FOREIGN KEY("potential") REFERENCES "fmea_potential"("fmea_type")
);
CREATE TABLE IF NOT EXISTS "fmea_default" (
	"prepeared_by"	TEXT,
	"fmea_type"	TEXT,
	"key_date"	INTEGER,
	"fmea_number"	NUMERIC,
	"project_name"	TEXT,
	"op_seq"	NUMERIC,
	"part_product"	TEXT,
	"characteristics"	NUMERIC,
	"failure"	TEXT,
	"effect"	TEXT,
	"severity"	NUMERIC,
	"classification"	NUMERIC,
	"cause"	TEXT,
	"prevention"	TEXT,
	"occurance"	NUMERIC,
	"control_detection"	TEXT,
	"detection"	NUMERIC,
	"RPN"	NUMERIC,
	"action"	TEXT,
	"responsible"	TEXT,
	"date"	INTEGER,
	"action_result"	TEXT,
	"date_result"	INTEGER,
	"severity_result"	NUMERIC,
	"occurance_result"	NUMERIC,
	"detection_result"	NUMERIC,
	"RPN_result"	NUMERIC
);
CREATE TABLE IF NOT EXISTS "RPN" (
	"ID"	INTEGER,
	"ID_PROJECT"	INTEGER,
	"ID_FMEA"	INTEGER,
	"RPN_CURRENT"	INTEGER,
	"RPN_ACTION"	INTEGER
);
CREATE TABLE IF NOT EXISTS "SOD" (
	"ID"	INTEGER,
	"ID_PROJECT"	INTEGER,
	"ID_FMEA"	INTEGER,
	"ID_PO"	INTEGER,
	"C_SEVERITY"	INTEGER,
	"A_SEVERITY"	INTEGER,
	"C_OCCURANCE"	INTEGER,
	"A_OCCURANCE"	INTEGER,
	"C_DETECTION"	INTEGER,
	"A_DETECTION"	INTEGER
);
CREATE TABLE IF NOT EXISTS "FAILURES" (
	"ID"	INTEGER,
	"ID_FAILURE"	INTEGER,
	"DESC_FAILURE"	TEXT,
	"CTG_FAILURE"	INTEGER,
	"ID_FAILURE_CTG"	INTEGER
);
CREATE TABLE IF NOT EXISTS "CAUSES" (
	"ID"	INTEGER,
	"ID_CAUSE"	INTEGER,
	"DESC_CAUSE"	TEXT,
	"CTG_CAUSE"	INTEGER,
	"ID_CAUSE_CTG"	INTEGER
);
CREATE TABLE IF NOT EXISTS "EFFECTS" (
	"ID"	INTEGER,
	"ID_EFFECT"	INTEGER,
	"DESC_EFFECT"	TEXT,
	"CTG_EFFECT"	INTEGER,
	"ID_EFFECT_CTG"	INTEGER
);
CREATE TABLE IF NOT EXISTS "SFC" (
	"ID"	INTEGER,
	"ID_SFC"	INTEGER,
	"TYPE_SFC"	INTEGER,
	"SUBTYPE_SFC"	INTEGER,
	"CTG_SFC"	INTEGER,
	"ID_SFC_CTG"	INTEGER
);
CREATE TABLE IF NOT EXISTS "CONTROLS" (
	"ID"	INTEGER,
	"ID_CONTROLS"	INTEGER,
	"TYPE_CONTROL"	INTEGER,
	"CTG_CONTROL"	INTEGER,
	"DESC_CONTROL"	TEXT,
	"DOCS_CONTROL"	TEXT,
	"METHOD_CONTROL"	INTEGER,
	"FRQ_CONTROL"	INTEGER,
	"ITEM_CONTROL"	INTEGER,
	"ID_CONTROL_CTG"	INTEGER
);
CREATE TABLE IF NOT EXISTS "DETECTIONS" (
	"ID"	INTEGER,
	"ID_DETECTION"	INTEGER,
	"TYPE_DETECTION"	INTEGER,
	"METHOD_DETECTION"	INTEGER,
	"FRQ_DETECTION"	INTEGER,
	"DESC_DETECTION"	TEXT,
	"DOCS_DETECTION"	INTEGER,
	"CTG_DETECTION"	INTEGER
);
CREATE TABLE IF NOT EXISTS "FMEA_PROJECT" (
	"project_id"	INTEGER,
	"product_id"	INTEGER,
	"fmea_item"	INTEGER,
	"fmea_type"	INTEGER,
	"fmea_product_name"	INTEGER,
	"fmea_responsible"	TEXT,
	"fmea_number"	NUMERIC,
	"fmea_keydate"	INTEGER,
	"fmea_manager"	TEXT,
	"fmea_coreteam"	TEXT,
	"fmea_date_original"	INTEGER,
	"fmea_date_current"	INTEGER,
	"fmea_date_revision"	INTEGER,
	"fmea_revision_number"	NUMERIC,
	FOREIGN KEY("fmea_type") REFERENCES "fmea_type",
	PRIMARY KEY("project_id","product_id","fmea_item","fmea_type","fmea_product_name","fmea_manager")
);
COMMIT;
