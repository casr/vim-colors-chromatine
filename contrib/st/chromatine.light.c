/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
	/* 8 normal colors */
	"#1c1c1c",
	"#af5f5f",
	"#008700",
	"#d78700",
	"#00005f",
	"#875f87",
	"#5f8787",
	"#dadada",

	/* 8 bright colors */
	"#767676",
	"#af5f5f",
	"#008700",
	"#d78700",
	"#00005f",
	"#875f87",
	"#5f8787",
	"#ffffff",

	[255] = 0,
};


/*
 * Default colors (colorname index)
 * foreground, background, cursor, reverse cursor
 */
unsigned int defaultfg = 235;
unsigned int defaultbg = 231;
unsigned int defaultcs = 110;
static unsigned int defaultrcs = 153;
