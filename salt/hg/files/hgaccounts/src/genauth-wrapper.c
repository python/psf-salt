#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main()
{
	setreuid(geteuid(),geteuid());
	printf("Regenerating authorized_keys file...\n");
	system("/srv/hg/bin/genauth --update");
}
