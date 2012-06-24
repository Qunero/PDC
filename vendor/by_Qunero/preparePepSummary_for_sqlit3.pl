#!/usr/bin/perl 
#==============================================================================#
#-------------------------------help-info-start--------------------------------#

=head1 Name

    preparePepSummary_for_sqlit3.pl --> refine peptideSummary.txt file 

=head1 Usage

    perl  preparePepSummary_for_sqlit3.pl [options] [input file]

    -help       print this help to screen
    -e     *    experiment number,of integer type;
    -o          write result to a file, default print to STDOUT .

=head1 Example

    perl  preparePepSummary_for_sqlit3.pl -h
    perl  preparePepSummary_for_sqlit3.pl  merge249-peptideSummary.txt -e 1 -o merge249-peptideSummary.sv

=head1 Version

    Verion	:  1.0
    Created	:  06/24/2012 09:56:12 PM 
    Updated	:  --
    LastMod	:  --

=head1 Contact

    Author	:  QuNengrong (Qunero)
    E-mail	:  Quner612@qq.com,QuNengrong@genomics.cn
    Company	:  BGI

=cut
#-------------------------------help-info-end--------------------------------#
#============================================================================#
use strict;
use warnings;
use Getopt::Long;

my ($Need_help, $Out_file,$exp);
GetOptions(
    "help"      => \$Need_help,
    "e=i"       => \$exp,
    "o=s"       => \$Out_file,
);

die `pod2text $0` if ($Need_help || !$exp);

#============================================================================#
#                              Global Variable                               #
#============================================================================#
my $Input_file  = $ARGV[0]  if (exists $ARGV[0]); 
$exp = 1 unless $exp>0;

#============================================================================#
#                               Main process                                 #
#============================================================================#

if(defined $Input_file)
{ open(STDIN, '<', $Input_file) or die "Can't read $Input_file : $!"; }
if(defined $Out_file)
{ open(STDOUT, '>', $Out_file) or die "Can't write $Out_file : $!"; }

print STDERR "---Program\t$0\tstarts --> ".localtime()."\n";

my @line;
while(<STDIN>){
    @line = split /\t/;
    next if $line[9]=~ /[-|>]/;                 # ignore results from mutaion db
    print STDOUT join("/",($exp,@line));
}


print STDERR "---Program\t$0\tends  --> ".localtime()."\n";

#============================================================================#
#                               Subroutines                                  #
#============================================================================#




