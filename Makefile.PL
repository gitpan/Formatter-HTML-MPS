use ExtUtils::MakeMaker;

WriteMakefile( NAME            => 'Formatter::HTML::MPS',
               VERSION_FROM    => 'lib/Formatter/HTML/MPS.pm',
               EXE_FILES       => [ 'bin/mpslidemaker.pl' ] );
