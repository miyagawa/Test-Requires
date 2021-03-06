# =========================================================================
# THIS FILE IS AUTOMATICALLY GENERATED BY MINILLA.
# DO NOT EDIT DIRECTLY.
# =========================================================================

use 5.008_001;
use strict;

use ExtUtils::MakeMaker;


use File::Copy;

print "cp META.json MYMETA.json\n";
copy("META.json","MYMETA.json") or die "Copy failed(META.json): $!";

if (-f 'META.yml') {
    print "cp META.yml MYMETA.yml\n";
    copy("META.yml","MYMETA.yml") or die "Copy failed(META.yml): $!";
} else {
    print "There is no META.yml... You may install this module from the repository...\n";
}

my %args;
if ($ExtUtils::MakeMaker::VERSION >= 6.64) {
    # *_REQUIRES was supported.

    $args{CONFIGURE_REQUIRES} = {"ExtUtils::MakeMaker" => "6.64"};
    $args{BUILD_REQUIRES}     = {"ExtUtils::MakeMaker" => "6.59"};
    $args{TEST_REQUIRES}      = {};
    $args{PREREQ_PM}          = {"Test::Builder::Module" => 0,"Test::More" => "0.61","perl" => "5.008_001"};
} else {
    $args{PREREQ_PM}          = {"ExtUtils::MakeMaker" => "6.64","Test::Builder::Module" => 0,"Test::More" => "0.61","perl" => "5.008_001"};
}

if ($ExtUtils::MakeMaker::VERSION >= 6.57_01) {
    $args{NO_MYMETA} = 1;
}

WriteMakefile(
    NAME     => 'Test::Requires',
    DISTNAME => 'Test-Requires',
    VERSION  => '0.08',
    %args,
);
