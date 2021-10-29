program abc;
var n,a,b,c,k:integer;
begin
n:=1;
a:=0;
b:=0;
c:=0;
k:=0;
while n<>0 do
 begin
  readln (n);
  if n=0 then break;
  if (n<100) or (n>999) then writeln ('Please enter the correct number') 
                        else
                         begin 
                           a:=n div 100;  
                           b:=n div 10 mod 10; 
                           c:= n mod 10;
                           if (a=b) or (a=c) or (b=c)  then writeln ('Please enter the correct number')
                                                       else 
                                                        begin
                                                          if c>a then begin k:=c; c:=a; a:=k; end;
                                                          if c>b then begin k:=c; c:=b; b:=k; end;
                                                          if b>a then begin k:=b; b:=a; a:=k; end;
                                                          writeln ('Все возможные комбинации: ',c,b,a,', ',c,a,b,', ',b,c,a,', ',b,a,c,', ',a,c,b,', наибольшая - ',a,b,c);
                                                        end;
                         end;
 end;                        
end.