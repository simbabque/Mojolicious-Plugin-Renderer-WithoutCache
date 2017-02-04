# NAME

Mojolicious::Plugin::Renderer::WithoutCache - Disable the template cache in your Mojo app

<div>
    <p>
    <a href="https://travis-ci.org/simbabque/Mojolicious-Plugin-Renderer-WithoutCache"><img src="https://travis-ci.org/simbabque/Mojolicious-Plugin-Renderer-WithoutCache.svg?branch=master"></a>
    <a href='https://coveralls.io/github/simbabque/Mojolicious-Plugin-Renderer-WithoutCache?branch=master'><img src='https://coveralls.io/repos/github/simbabque/Mojolicious-Plugin-Renderer-WithoutCache/badge.svg?branch=master' alt='Coverage Status' /></a>
    </p>
</div>

# VERSION

Version 0.03

# SYNOPSIS

This plugin turns off the renderer's cache in [Mojolicious](https://metacpan.org/pod/Mojolicious) and [Mojo::Lite](https://metacpan.org/pod/Mojo::Lite) applications.

    use Mojolicious::Lite;
    plugin 'Renderer::WithoutCache';

# DESCRIPTION

This does what it says on the box. It turns off caching for the [Mojolicious::Renderer](https://metacpan.org/pod/Mojolicious::Renderer)
or any other renderer that's inside `$app->renderer` by injecting a cache object that
does not do anything. This is supperior to setting the `max_keys` of [Mojo::Cache](https://metacpan.org/pod/Mojo::Cache)
to `0` if you plan to do a lot of uncached requests, becase [Mojolicious::Renderer](https://metacpan.org/pod/Mojolicious::Renderer)
will still try to cache, and every time [Mojo::Cache](https://metacpan.org/pod/Mojo::Cache) sets a value in the cache it
looks at the `max_keys`, and then stops.

Doing nothing at all is cheaper. But not a lot really.

# METHODS

## register

Register the plugin in a [Mojolicious](https://metacpan.org/pod/Mojolicious) application.

    $plugin->register(Mojolicious->new);

# AUTHOR

simbabque, `<simbabque at cpan.org>`

# BUGS

Please report any bugs or feature requests through an issue
on github at [https://github.com/simbabque/Mojolicious-Plugin-Renderer-WithoutCache/issues](https://github.com/simbabque/Mojolicious-Plugin-Renderer-WithoutCache/issues).

# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Mojolicious::Plugin::Renderer::WithoutCache

## Why would I want to turn off the cache?

I don't know.

# ACKNOWLEDGEMENTS

This plugin was inspired by Tom Hunt asking about turning the cache off
on [Stack Overflow](http://stackoverflow.com/q/41750243/1331451).

# LICENSE AND COPYRIGHT

Copyright 2017 simbabque.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

[http://www.perlfoundation.org/artistic\_license\_2\_0](http://www.perlfoundation.org/artistic_license_2_0)

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
