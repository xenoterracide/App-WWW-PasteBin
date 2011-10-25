package App::WWW::PasteBin::Controller::Root;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

__PACKAGE__->config(namespace => '');


sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body( $c->welcome_message );
}

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}

sub end : ActionClass('RenderView') {}

__PACKAGE__->meta->make_immutable;

1;

# ABSTRACT: Root Controller for App::WWW::PasteBin

__END__
=pod

=head1 NAME

App::WWW::PasteBin::Controller::Root - Root Controller for App::WWW::PasteBin

=head1 VERSION

version 0.001000

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website
https://github.com/xenoterracide/App-WWW-PasteBin/issues

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Caleb Cushing <xenoterracide@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2011 by Caleb Cushing.

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)

=cut

