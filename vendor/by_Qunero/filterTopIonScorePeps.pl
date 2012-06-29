#!/usr/bin/perl 
#==============================================================================#
#-------------------------------help-info-start--------------------------------#
=head1 Name

    filterTopIonScorePeps.pl --> 

=head1 Usage

    perl  filterTopIonScorePeps.pl  [options] [input file]

    -help       print this help to screen
    -o          write result to a file

=head1 Example

    perl  filterTopIonScorePeps.pl  -h
    perl  filterTopIonScorePeps.pl  merge249-peptideSummary.sv.sort -o merge249-peptideSummary.sv.top1

=head1 Version

    Verion	:	1.0
    Created	:	06/29/2012 06:08:57 PM 
    Updated	:	---
    LastMod	:	---


=head1 Contact

    Author	:	QuNengrong (Qunero)
    E-mail	:	Quner612@qq.com,QuNengrong@genomics.cn
    Company	:	BGI

=cut
#-------------------------------help-info-end--------------------------------#
#============================================================================#
use strict;
use warnings;
use Getopt::Long;

my ($Need_help, $Out_file );
GetOptions(
    "help"		=> \$Need_help,
"o=s"		=> \$Out_file,
);

die `pod2text $0` if ($Need_help);

#============================================================================#
#                              Global Variable                               #
#============================================================================#
my $Input_file  = $ARGV[0]  if (exists $ARGV[0]); 

#============================================================================#
#                               Main process                                 #
#============================================================================#

if(defined $Input_file)
{ open(STDIN, '<', $Input_file) or die $!; }
if(defined $Out_file)
{ open(STDOUT, '>', $Out_file) or die $!; }

print STDERR "---Program\t$0\tstarts--> ".localtime()."\n";

my %pep2info;
my ($score, $pep);
while(<STDIN>){
    ($score,$pep) = (split /\//,$_)[5,9];
    if(exists $pep2info{$pep}){
        $pep2info{$pep} = {
            score => $score,
            info => $_,
        } if $pep2info{$pep}{score} < $score;
    }else{
        $pep2info{$pep} = {
            score => $score,
            info => $_,
        } 
    }
}

for (sort keys %pep2info){
    print STDOUT $pep2info{$_}{info};
}

print STDERR "---Program\t$0\t  ends--> ".localtime()."\n";

#============================================================================#
#                               Subroutines                                  #
#============================================================================#




