#!/usr/bin/perl
use warnings;

open (FILEHANDLE,'human_genes.txt');
@exons = <FILEHANDLE>;
close(FILEHANDLE);
chomp(@exons);

foreach $row(@exons){
	@ID = split("\t",$row);	
	foreach $column(@ID){
		push(@TODO,$column);

}} #This routine is helpful because saves all the data from a "\t" separated file intro an array in order to manipulate the data
#easily

for($i=0;$i<=$#TODO;$i+=13){
	$genID = $TODO[$i];
	#print $genID;
	push (@genID, $genID);#In this bucle, we want to get the Intron coordinates. The numbers of the parameter $i depend of the columns 
	#in the Excel file. First we store the IDs of genes and we study the introns of each gene individually
	if ($genID eq $genID[0]) {
		$coordCDSin = $TODO[$i+2];
		#print $coordCDSin;
		$coordref = 0;
		if($coordCDSin > $coordref){
		  #We look for the CDS and if it continues in the next line it means there are more codifying exons, 
		  #so we can get more intron coordinates. In count we store the number of introns from the genes.
			$count++;
			if($TODO[$i+15]!=0 and $TODO[$i+15]!=1 and $TODO[$i+5]<$TODO[$i+18]){
			  #with these last two conditions we search in each line if there is a codfying exon and then if the coordinates increase
			  #with each line or decrease (direction of the CDS), so it changes the way to calculate the coordinates
				$CoorIntrstart = $TODO[$i+5]+1;
				push(@Intrstart, $CoorIntrstart);
				$CoorIntrend = $TODO[$i+19]-1;
				push(@Intrend, $CoorIntrend);
				push (@ids, $genID);}
			elsif($TODO[$i+15]!=0 and $TODO[$i+15]!=1 and $TODO[$i+5]>$TODO[$i+18]){
				$CoorIntrend = $TODO[$i+6]-1;
				push(@Intrend, $CoorIntrend);
				$CoorIntrstart = $TODO[$i+18]+1;
				push(@Intrstart, $CoorIntrstart);
				push (@ids, $genID);}
				
		}}
			
	else{
	  #In case we change from one gene to another one, we do the same process but removing the last genID
		push (@IDS, $genID);
		undef @genID;
		#print $count;
		push (@introncount,$count);
		$count=0; 
		$coordCDSin = $TODO[$i+2];
		#print $coordCDSin;
		$coordref = 0;
		if($coordCDSin > $coordref){
			$count++;
			if($TODO[$i+15]!=0 and $TODO[$i+15]!=1 and $TODO[$i+5]<$TODO[$i+18]){
				$CoorIntrstart = $TODO[$i+5]+1;
				push(@Intrstart, $CoorIntrstart);
				$CoorIntrend = $TODO[$i+19]-1;
				push(@Intrend, $CoorIntrend);
				push (@ids, $genID);}
			elsif($TODO[$i+15]!=0 and $TODO[$i+15]!=1 and $TODO[$i+5]>$TODO[$i+18]){
				$CoorIntrend = $TODO[$i+6]-1;
				push(@Intrend, $CoorIntrend);
				$CoorIntrstart = $TODO[$i+18]+1;
				push(@Intrstart, $CoorIntrstart);
				push (@ids, $genID);}
			}push (@genID, $genID);}}

#The next foreach give us as a result the number of genes that can be intronized (2 or miore gens
foreach $gen(@introncount){
	
	if($gen>=2){
			$result = Si;
			push (@intronization,$result);
			}
	else{
			$result = No;
			push (@intronization,$result);}}

#print @intronization;

open (FILE,'>Intronization.txt');
for($i=0;$i<=$#intronization;$i++){
	print FILE $IDS[$i],"\t",$intronization[$i],"\n";}

open (FILE,'>Coordintr.txt');
for($i=0;$i<=$#Intrend;$i++){
	print FILE $ids[$i],"\t",$Intrstart[$i],"\t",$Intrend[$i],"\n";}
	
	



			
	








