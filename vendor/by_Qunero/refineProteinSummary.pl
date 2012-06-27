#!/usr/bin/perl 
#==============================================================================#
#-------------------------------help-info-start--------------------------------#

=head1 Name

    refineProteinSummary.pl --> refine the proteinSummary.txt file 

=head1 Usage

    perl  refineProteinSummary.pl [options] [input file]

    -help       print this help to screen
    -e     *    experiment number,of integer type
    -q     *    protein's query numbers file .
    -o          write result to a file, default print to STDOUT .

=head1 Example

    perl  refineProteinSummary.pl -h
    perl  refineProteinSummary.pl -e 1 merge249-proteinSummary.txt -o merge249-proteinSummary.sv -q merge249-proteinSummary.qf

=head1 Version

    Verion	:  1.0
    Created	:  06/24/2012 10:09:20 PM 
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

my ($Need_help, $Out_file, $exp, $qFile );
GetOptions(
    "help"      => \$Need_help,
    "e=i"       => \$exp,
    "q=s"       => \$qFile,
    "o=s"       => \$Out_file,
);

die `pod2text $0` if ($Need_help || !$exp || !$qFile);

#============================================================================#
#                              Global Variable                               #
#============================================================================#
my $Input_file  = $ARGV[0]  if (exists $ARGV[0]); 
$exp = 1 unless $exp > 0;

#============================================================================#
#                               Main process                                 #
#============================================================================#

if(defined $Input_file)
{ open(STDIN, '<', $Input_file) or die "Can't read $Input_file : $!"; }
if(defined $Out_file)
{ open(STDOUT, '>', $Out_file) or die "Can't write $Out_file : $!"; }

print STDERR "---Program\t$0\tstarts --> ".localtime()."\n";

open QF,'>',"$qFile" or die "Can't write $qFile : $! ";

my @line;
my $pep_query;
<STDIN>;                                        # omit the header
while(<STDIN>){
    @line = split /\t/;
    next if $line[1]=~ /[-|>]/;                 # ignore results from mutaion db
    next if $line[7]=~ /[|>]/;                  # ignore results from mutaion db
    $pep_query = $line[6];
    $line[6] = 1+($line[6]=~tr/;/;/);              # count query numbers 
    print STDOUT join("/",($exp,@line));
    print QF join("/",($exp,$line[0],$pep_query)),"\n";
}


print STDERR "---Program\t$0\tends  --> ".localtime()."\n";

#============================================================================#
#                               Subroutines                                  #
#============================================================================#




