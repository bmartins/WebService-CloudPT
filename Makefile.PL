use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'WebService::CloudPT',
    AUTHOR              => q{Bruno Martins <bruno-martins@telecom.pt>},
    VERSION_FROM        => 'lib/WebService/CloudPT.pm',
    ABSTRACT_FROM       => 'lib/WebService/CloudPT.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'WebService-CloudPT-*' },
);
