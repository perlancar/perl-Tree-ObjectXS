package Tree::ObjectXS;

# DATE
# VERSION

1;
# ABSTRACT: Generic tree objects (with XS accessors, etc)

=head1 DESCRIPTION

This distribution provides several implementations of tree classes (and class
generators) which you can use directly or as a base class. All of them consume
the roles from L<Role::TinyCommons::Tree> distribution.

Provided classes:

# INSERT_MODULES_LIST -Tree::ObjectXS

The modules are just like their counterpart in the L<Tree::ObjectXS>
distribution, except that XS optimized modules/codes are used. The modules are
separated into this distribution because they depend on XS modules.


=head1 SEE ALSO

L<Tree::Object>
