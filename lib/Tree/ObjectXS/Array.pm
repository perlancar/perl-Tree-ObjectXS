package Tree::ObjectXS::Array;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

sub import {
    my ($class0, @attrs) = @_;

    my $caller = caller();

    my $code_str = "package $caller;\n";
    $code_str .= "use Class::XSAccessor::Array {\n";
    $code_str .= "    constructor => 'new',\n";
    $code_str .= "    accessors => {\n";
    my $idx = 0;
    for (@attrs, "parent", "children") {
        $code_str .= "        '$_' => $idx,\n";
        $idx++;
    }
    $code_str .= "    },\n";
    $code_str .= "};\n";
    $code_str .= "use Role::Tiny::With;\n";
    $code_str .= "with 'Role::TinyCommons::Tree::NodeMethods';\n";

    #say $code_str;

    eval $code_str;
    die if $@;
}

1;
# ABSTRACT: An array-based tree object

=head1 SYNOPSIS

In F<lib/My/ArrayTree.pm>:

 package My::ArrayTree;
 use Tree::ObjectXS::Array qw(attr1 attr2 attr3);
 1;


=head1 DESCRIPTION

This is just like L<Tree::Object::Array> except: 1) it uses
L<Class::XSAccessor::Array> to generate the accessor methods and the
constructor.
