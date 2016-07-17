#!/usr/bin/perl -w

open(IN,"altogetherNow.csv");
open(OUT,">JSONMarkers.json");
my $i = 0;
<IN>;
print OUT "var json = [\n";
while(<IN>) {
	chomp($_);
	my ($address,$company,$type,$lat,$lng,$name) = split(/,/);
	#if($i < 10) {print "$company\t$type\t$name\n";}
	print OUT (",") if ($i!= 0);
	print OUT "{\"Name\" : \"$name\",\n\"Latitude\" : $lat,\n\"Longitude\" : $lng,\n\"Company\" : \"$company\",\n\"Type\" : \"$type\",\n\"Address\" : \"$address\",}\n";
	$i++;
}
print OUT "]";
#print $a;