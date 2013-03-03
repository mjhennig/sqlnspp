use 5.008000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'sqlnspp',
    VERSION_FROM      => 'bin/sqlnspp', # finds $VERSION
    PREREQ_PM         => { SQL::Beautify => 0.04 },
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'bin/sqlnspp', # retrieve abstract from module
       AUTHOR         => 'Mathias J. Hennig <mhennig@quirkies.org>') : ()),
    EXE_FILES         => [ 'bin/sqlnspp' ],
);

