package Mojolicious::Plugin::Renderer::WithoutCache::Cache;
use Mojo::Base -base;

=head1 NAME

Mojolicious::Plugin::Renderer::WithoutCache::Cache - Mojo::Cache that doesn't cache

=head1 VERSION

Version 0.00_01

=cut

our $VERSION = '0.00_01';
$VERSION = eval $VERSION;

=head1 SYNOPSIS

You probably don't want to use this directly.

    my $cache = Mojolicious::Plugin::Renderer::WithoutCache::Cache->new;
    # this cache does nothing

=head1 DESCRIPTION

A cache object that's compatible to Mojo::Cache but does nothing. It does
not save or return any values. It's always empty.

=head1 METHODS

=head2 get

Does nothing. Returns C<undef>.

=cut

sub get {}

=head2 set

Does nothing. Returns C<$self> so chaining is possible.

=cut

sub set { shift; }

=head2 max_keys

Always returns zero. Can't be set. We don't want any keys.

=cut

sub max_keys { 0 }

=head1 AUTHOR

simbabque, C<< <simbabque at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests through an issue
on github at L<https://github.com/simbabque/Mojolicious-Plugin-Renderer-WithoutCache/issues>.

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

1; # End of Mojolicious::Plugin::Renderer::WithoutCache::Cache
