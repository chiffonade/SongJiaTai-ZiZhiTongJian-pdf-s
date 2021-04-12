




print"glob and check..\n";
@p9=glob"*pdf"or die$!;
@t9=glob"*txt"or die$!;
for$aa9(0..@t9-1){
	$_=$t9[$aa9];
	s/\.txt$// or die$!;
	if(exists$h9{$_}){
		die;
	}else{
		$h9{$_}=1;
	}
}
for$aa9(0..@p9-1){
	$_=$p9[$aa9];
	s/\.pdf$// or die$!;
	if(exists$h9{$_}){}else{
		$e9="touch $_".".txt";
		print$e9,"\n";
		!system$e9 or die$!;
	}
}
print"done.\n"
