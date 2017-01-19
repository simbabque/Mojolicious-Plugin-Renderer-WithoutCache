use strict;
use warnings;
use Test::More;
use Mojolicious::Plugin::Renderer::WithoutCache::Cache;

my $cache = Mojolicious::Plugin::Renderer::WithoutCache::Cache->new;
isa_ok $cache, 'Mojo::Base';

can_ok $cache, $_ for qw/get set max_keys/;

is_deeply $cache->set( foo => 'bar' ), $cache, 'Chaining works';
is $cache->get('foo'), undef, 'Cache returns undef for previously set value';
is $cache->get('bar'), undef, 'Cache returns undef for unset value';

done_testing;
