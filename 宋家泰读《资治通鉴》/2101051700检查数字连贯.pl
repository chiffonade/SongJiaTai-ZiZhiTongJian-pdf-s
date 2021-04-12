
=readme
结果：连贯的

=cut
@g5=glob"*pdf"or die$!;
foreach(@g5){
	if(m/^\d\d\d/){
		push@a5,$_ or die$!;
	}
}
if(@g5-@a5==1){}else{
	die;
}
for$aa5(@a5){
	$aa5=~s/\.pdf$/\.txt/ or die$!;
	if(-e$aa5){}else{
		die;
	}
}
for$aa5(@a5){
	if($aa5=~m/^(\d\d\d)/){
		$h5{$1}=1;
	}else{
		die;
	}
}
@s5=sort{$a<=>$b}keys%h5;
for$aa5(0..@s5-2){
	if($s5[$aa5+1]-1==$s5[$aa5]){}else{
		die;
	}
}
print"done.\n";
