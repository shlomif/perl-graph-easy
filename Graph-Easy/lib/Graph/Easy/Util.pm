package Graph::Easy::Util;

use strict;
use warnings;

use base 'Exporter';

our @EXPORT_OK = (qw(first_kv));

use List::Util qw(minstr);

=head1 FUNCTIONS

=head2 first_kv($hash_ref)

The first key value pair from a hash reference - lexicographically.

=cut

sub first_kv
{
    my $href = shift;

    my $n = minstr( keys(%$href) );
    my $v = $href->{$n};

    return ($n, $v);
}

1;

