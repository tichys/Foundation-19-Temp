// Something to remember when setting priorities: SS_TICKER runs before Normal, which runs before SS_BACKGROUND.
// Each group has its own priority bracket.
// SS_BACKGROUND handles high server load differently than Normal and SS_TICKER do.
// Higher priority also means a larger share of a given tick before sleep checks.

#define SS_PRIORITY_DEFAULT 50  

#define SS_PRIORITY_TICKER 200

#define SS_PRIORITY_DEFAULT 50          // Default priority for both normal and background processes

// ticker
#define SS_PRIORITY_ICON_UPDATE    20
// Normal
#define SS_PRIORITY_MOB            100	// Mob Life().
#define SS_PRIORITY_MACHINERY      100	// Machinery + powernet ticks.
#define SS_PRIORITY_LIGHTING       90
#define SS_PRIORITY_AIR            80	// ZAS processing.
#define SS_PRIORITY_ALARM          45   // Alarm processing.
#define SS_PRIORITY_AIRFLOW        15	// Object movement from ZAS airflow.

// SS_BACKGROUND
#define SS_PRIORITY_OBJECTS       60	// processing_objects processing.
#define SS_PRIORITY_PROCESSING    30	// Generic datum processor. Replaces objects processor.
#define SS_PRIORITY_GARBAGE       25	// Garbage collection.
#define SS_PRIORITY_VINES         25	// Spreading vine effects.
#define SS_PRIORITY_TURF          20    // Radioactive walls/blob.
#define SS_PRIORITY_WIRELESS      15	// Wireless connection setup.
#define SS_PRIORITY_TRADE		  10
#define SS_PRIORITY_SUPPLY		  10
#define SS_PRIORITY_EVENTS		  10
#define SS_PRIORITY_EVACUATION	  10
#define SS_PRIORITY_VOTING		  5
#define SS_PRIORITY_NANOUI		  5
#define SS_PRIORITY_TGUI		  5
#define SS_PRIORITY_INACTIVITY	  3
#define SS_PRIORITY_SETUP		  1