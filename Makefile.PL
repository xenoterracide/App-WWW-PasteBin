
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Catalyst based application",
  "AUTHOR" => "Caleb Cushing <xenoterracide\@gmail.com>",
  "BUILD_REQUIRES" => {
    "Catalyst::Test" => 0,
    "English" => 0,
    "File::Find" => 0,
    "File::Temp" => 0,
    "Test::More" => "0.88",
    "perl" => "5.006",
    "strict" => 0,
    "warnings" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "App-WWW-PasteBin",
  "EXE_FILES" => [],
  "LICENSE" => "artistic_2",
  "NAME" => "App::WWW::PasteBin",
  "PREREQ_PM" => {
    "Catalyst" => 0,
    "Catalyst::Controller" => 0,
    "Catalyst::Runtime" => "5.80",
    "Moose" => 0,
    "namespace::autoclean" => 0
  },
  "VERSION" => "0.001000",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



