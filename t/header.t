use strict;
use warnings;
use Formatter::HTML::MPS;
use Test::Simple tests => 1;

# read mps file:
open my $fh1, '<', 't/singleslide_w_header.mps' or die $!;
my $mps_data = join( '', <$fh1> );

# read expected output:
open $fh1, '<', 't/expected_singleslide_w_header.html' or die $!;
my $expected_data = join( '', <$fh1> );

my $formatter = Formatter::HTML::MPS->format( $mps_data );
my $generated = $formatter->document();

ok( $generated eq $expected_data );


