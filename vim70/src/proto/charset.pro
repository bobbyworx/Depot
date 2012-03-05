/* charset.c */
extern int init_chartab __ARGS((void));
extern int buf_init_chartab __ARGS((buf_T *buf, int global));
extern void trans_characters __ARGS((char_u *buf, int bufsize));
extern char_u *transstr __ARGS((char_u *s));
extern char_u *str_foldcase __ARGS((char_u *str, int orglen, char_u *buf, int buflen));
extern char_u *transchar __ARGS((int c));
extern char_u *transchar_byte __ARGS((int c));
extern void transchar_nonprint __ARGS((char_u *buf, int c));
extern void transchar_hex __ARGS((char_u *buf, int c));
extern int byte2cells __ARGS((int b));
extern int char2cells __ARGS((int c));
extern int ptr2cells __ARGS((char_u *p));
extern int vim_strsize __ARGS((char_u *s));
extern int vim_strnsize __ARGS((char_u *s, int len));
extern int chartabsize __ARGS((char_u *p, colnr_T col));
extern int linetabsize __ARGS((char_u *s));
extern int win_linetabsize __ARGS((win_T *wp, char_u *p, colnr_T len));
extern int vim_isIDc __ARGS((int c));
extern int vim_iswordc __ARGS((int c));
extern int vim_iswordp __ARGS((char_u *p));
extern int vim_iswordc_buf __ARGS((char_u *p, buf_T *buf));
extern int vim_isfilec __ARGS((int c));
extern int vim_isprintc __ARGS((int c));
extern int vim_isprintc_strict __ARGS((int c));
extern int lbr_chartabsize __ARGS((unsigned char *s, colnr_T col));
extern int lbr_chartabsize_adv __ARGS((char_u **s, colnr_T col));
extern int win_lbr_chartabsize __ARGS((win_T *wp, char_u *s, colnr_T col, int *headp));
extern int in_win_border __ARGS((win_T *wp, colnr_T vcol));
extern void getvcol __ARGS((win_T *wp, pos_T *pos, colnr_T *start, colnr_T *cursor, colnr_T *end));
extern colnr_T getvcol_nolist __ARGS((pos_T *posp));
extern void getvvcol __ARGS((win_T *wp, pos_T *pos, colnr_T *start, colnr_T *cursor, colnr_T *end));
extern void getvcols __ARGS((win_T *wp, pos_T *pos1, pos_T *pos2, colnr_T *left, colnr_T *right));
extern char_u *skipwhite __ARGS((char_u *p));
extern char_u *skipdigits __ARGS((char_u *p));
extern char_u *skiphex __ARGS((char_u *p));
extern char_u *skiptodigit __ARGS((char_u *p));
extern char_u *skiptohex __ARGS((char_u *p));
extern int vim_isdigit __ARGS((int c));
extern int vim_isxdigit __ARGS((int c));
extern int vim_islower __ARGS((int c));
extern int vim_isupper __ARGS((int c));
extern int vim_toupper __ARGS((int c));
extern int vim_tolower __ARGS((int c));
extern char_u *skiptowhite __ARGS((char_u *p));
extern char_u *skiptowhite_esc __ARGS((char_u *p));
extern long getdigits __ARGS((char_u **pp));
extern int vim_isblankline __ARGS((char_u *lbuf));
extern void vim_str2nr __ARGS((char_u *start, int *hexp, int *len, int dooct, int dohex, long *nptr, unsigned long *unptr));
extern int hex2nr __ARGS((int c));
extern int hexhex2nr __ARGS((char_u *p));
extern int rem_backslash __ARGS((char_u *str));
extern void backslash_halve __ARGS((char_u *p));
extern char_u *backslash_halve_save __ARGS((char_u *p));
extern void ebcdic2ascii __ARGS((char_u *buffer, int len));
/* vim: set ft=c : */