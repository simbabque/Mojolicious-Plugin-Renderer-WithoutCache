use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'Mojolicious::Plugin::Renderer::WithoutCache',
    AUTHOR             => q{simbabque <simbabque@cpan.org>},
    VERSION_FROM       => 'lib/Mojolicious/Plugin/Renderer/WithoutCache.pm',
    ABSTRACT_FROM      => 'lib/Mojolicious/Plugin/Renderer/WithoutCache.pm',
    LICENSE            => 'artistic_2',
    PL_FILES           => {},
    MIN_PERL_VERSION   => 5.010001,
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Mojolicious' => 5.029,
        'Test::Mojo'  => 0,
    },
    dist     => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean    => { FILES    => 'Mojolicious-Plugin-Renderer-WithoutCache-*' },
    META_MERGE => {
        "meta-spec" => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url  => 'git://github.com/simbabque/Mojolicious-Plugin-Renderer-WithoutCache.git',
                web  => 'https://github.com/simbabque/Mojolicious-Plugin-Renderer-WithoutCache',
            },
        },
    },
);
