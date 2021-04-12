
=readme
txt最后一行是否有重复

md5是否有重复

文件首的数字序号是否有重复

是否有pdf没有对应的txt

=cut

print"glob..\n";
@p9=glob"*pdf"or die$!;
@t9=glob"*txt"or die$!;
print"检查：是否有pdf没有对应的txt..\n";
if(@p9!=@t9){
	die;
}
for$aa9(@t9){
	$_=$aa9;
	s/\.txt$/\.pdf/ or die$!;
	$th9{$_}=1;
}
for$aa9(@p9){
	if(exists$th9{$aa9}){}else{
		die;
	}
}
print"检查：文件首的数字序号是否有重复..\n";
for$aa9(@p9){
	if($aa9=~m/^(\d\d\d)/){
		$bb9=$1;
		if(exists$n9{$bb9}){
			print$n9{$bb9},"   ",$aa9,"\n";
		}else{
			$n9{$bb9}=$aa9;
		}
	}else{
		die;
	}
}
@s9=sort{$a<=>$b}keys(%n9);
for$aa9(0..@s9-2){
	if($s9[$aa9]==$s9[$aa9+1]-1){
		
	}else{
		die;
	}
}
print"检查：txt最后一行是否有重复..\n";
for$aa9(@t9){
	open F9,$aa9 or die$!;
	@f9=<F9>or die$!;
	close F9 or die$!;
	if(exists$eof9{$f9[@f9-1]}){
		print$eof9{$f9[@f9-1]},"   ",$aa9,"\n";
	}else{
		$eof9{$f9[@f9-1]}=$aa9;
	}
}
print"检查：md5是否有重复..\n";
open F9,"../宋家泰读《资治通鉴》文件夹hashUTF8LF.txt"or die$!;
@f9=<F9>or die$!;
close F9 or die$!;
for$aa9(@f9){
	$_=$aa9;
	s/\r//g;
	if($_ eq"\n"){
		
	}else{
		@ss9=split;
		if(exists$sum9{$ss9[2]}){
			print$sum9{$ss9[2]},"   ",$ss9[0],"\n";
		}else{
			$sum9{$ss9[2]}=$ss9[0];
		}
	}
}
print"done.\n";
