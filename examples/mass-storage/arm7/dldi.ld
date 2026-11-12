SECTIONS {
    .dldi (NOLOAD) : {
        . += 16 * 1024;
    } >iwram
}
INSERT BEFORE .text;
