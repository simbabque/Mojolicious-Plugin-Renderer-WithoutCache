package Mojolicious::Plugin::Renderer::WithoutCache;
use Mojo::Base 'Mojolicious::Plugin';
use Mojolicious::Plugin::Renderer::WithoutCache::Cache;

=head1 NAME

Mojolicious::Plugin::Renderer::WithoutCache - Disable the template cache in your Mojo app

=head1 VERSION

Version 0.00_01

=cut

our $VERSION = '0.00_01';
$VERSION = eval $VERSION;

=head1 SYNOPSIS

This plugin turns off the renderer's cache in L<Mojolicious> and L<Mojo::Lite> applications.

    use Mojolicious::Lite;
    plugin 'Renderer::WithoutCache';

=head1 DESCRIPTION

This does what it says on the box. It turns off caching for the L<Mojolicious::Renderer>
or any other renderer that's inside C<$app-E<gt>renderer> by injecting a cache object that
does not do anything. This is supperior to setting the C<max_keys> of L<Mojo::Cache>
to C<0> if you plan to do a lot of uncached requests, becase L<Mojolicious::Renderer>
will still try to cache, and every time L<Mojo::Cache> sets a value in the cache it
looks at the C<max_keys>, and then stops.

Doing nothing at all is cheaper.

=head1 METHODS

=head2 register

Register the plugin in a L<Mojolicious> application.

    $plugin->register(Mojolicious->new);

=cut

sub register {
    my ( $self, $app ) = @_;
    $app->renderer->cache( Mojolicious::Plugin::Renderer::WithoutCache::Cache->new );
}

=head1 AUTHOR

simbabque, C<< <simbabque at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests through an issue
on github at L<https://github.com/simbabque/Mojolicious-Plugin-Renderer-WithoutCache/issues>.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Mojolicious::Plugin::Renderer::WithoutCache

=head2 Why would I want to turn off the cache?

I don't know.

=head1 ACKNOWLEDGEMENTS

This plugin was inspired by Tom Hunt asking about turning the cache off
on L<Stack Overflow|http://stackoverflow.com/q/41750243/1331451>.

=head1 LICENSE AND COPYRIGHT

Copyright 2017 simbabque.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


=cut

1; # End of Mojolicious::Plugin::Renderer::WithoutCache
