/* See LICENSE file for copyright and license details. */
#include <libcontacts.h>
#include <libsimple.h>
#include <libsimple-arg.h>
#include <libterminput.h>


USAGE("");


int
main(int argc, char *argv[])
{
	ARGBEGIN {
	default:
		usage();
	} ARGEND;
	if (argc)
		usage();

	return 0;
}
