package Tree::ObjectXS::Hash;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Class::XSAccessor {
    constructor => 'new',
    accessors   => ['parent', 'children'],
};

use Role::Tiny::With;
with 'Role::TinyCommons::Tree::NodeMethods';

1;
# ABSTRACT: A hash-based tree object

=for Pod::Coverage .+

=head1 SYNOPSIS

 use Tree::ObjectXS::Hash;
 my $tree = Tree::ObjectXS::Hash->new(attr1 => ..., attr2 => ...);


=head1 DESCRIPTION

This is just like L<Tree::Object::Hash> except that it: 1) uses
L<Class::XSAccessor::Array> to generate C<new>, C<parent>, C<children>.


=head1 SEE ALSO

L<Tree::Object::Hash>
