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

}}

#print $TODO[24];
push(@IDS,$TODO[0]);


for($i=0;$i<=$#TODO;$i+=13){
	$genID = $TODO[$i];
	#print $genID;
	push (@genID, $genID);
	if ($genID eq $genID[0]) {
		$coordCDSin = $TODO[$i+2];
		#print $coordCDSin;
		$coordref = 0;
		if($coordCDSin > $coordref){
			$count++;
			if ($TODO[$i+15]!= 0 and $TODO[$i+15]!= 1){
				$chrstartintr = $TODO[$i+5]+1;
				push (@starts,$chrstartintr);
				$chrendintr = $TODO[$i+19]-1;
				push (@ends,$chrendintr);
				$identGEN = $TODO[$i];
				push(@IdentGEN,$identGEN);
				$identPROT = $TODO[$i+4];
				push(@IdentPROT,$identPROT);

}}}
			
	else{
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
			if ($TODO[$i+15]!= 0 and $TODO[$i+15]!= 1){
				$chrstartintr = $TODO[$i+5]+1;
				push (@starts,$chrstartintr);
				$chrendintr = $TODO[$i+19]-1;
				push (@ends,$chrendintr);
				$identGEN = $TODO[$i];
				push(@IdentGEN,$identGEN);
				$identPROT = $TODO[$i+4];
				push(@IdentPROT,$identPROT);}
			
			}push (@genID, $genID);}}

#print $introncount[0];
$plot = @introncount;
print @IDS;
print @introncount;
#print $plot;
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
open (FILE,'>Coordenadas.txt');
for ($i=0;$i<=$#ends;$i++){
	print FILE $IdentGEN[$i],"\t",$IdentPROT[$i],"\t",$starts[$i],"\t",$ends[$i],"\n";}	
	
	
	
	



#print $intronization[0];
#$number = @intronization;
#print $number;
	
		#if ($coordCDSin>$coordref){
			#$coordref = $coordCDSin;
	#}
	#if ($coordCDSin > $basecoordCD && ){
		#$genID = $genIDprev;
		
		#if($genID ne $genIDprev){
			
	









