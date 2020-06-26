#include "stdio.h" // printf
#include "string.h" // test functions

size_t _strlen(const char *str);
size_t _strchr(const char *str, int c);
int _strcmp(const char *str1, const char *str2);
int _strncmp(const char *str1, const char *str2, size_t n);
char *_rindex(const char *s, int c);

int main(void)
{
    char c = 'k';
    char str[11] = "fdpfdpfdp";
    char str2[11] = "fdpkdpfdp";

    printf("rindex(\"%s\", %d) = %s\n", str, c, rindex(str, c));
    printf("_rindex(\"%s\", %d) = %s\n", str, c, _rindex(str, c));

    printf("strcmp(\"%s\", \"%s\") = %d\n", str, str2, strcmp(str, str2, 5));
    printf("_strcmp(\"%s\", \"%s\") = %d\n", str, str2, _strcmp(str, str2, 5));
    return (0);
}
