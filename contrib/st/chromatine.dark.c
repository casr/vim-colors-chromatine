/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
	/* 8 normal colors */
	"#303030",
	"#af5f5f",
	"#87af87",
	"#ffd787",
	"#5f5faf",
	"#af87af",
	"#87afaf",
	"#dadada",

	/* 8 bright colors */
	"#767676",
	"#af5f5f",
	"#87af87",
	"#ffd787",
	"#5f5faf",
	"#af87af",
	"#87afaf",
	"#e4e4e4",

	[255] = 0,
};


/*
 * Default colors (colorname index)
 * foreground, background, cursor, reverse cursor
 */
unsigned int defaultfg = 253;
unsigned int defaultbg = 234;
unsigned int defaultcs = 26;
static unsigned int defaultrcs = 24;
