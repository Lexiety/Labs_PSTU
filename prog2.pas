program abc;
var n,m,i:integer;  
begin
  writeln ('Я загадал число. Попробуй отгадать!');
  randomize();
  n:= random (99)+1;
  i:=0;
  while i<7 do
     begin
       i:=i+1;
       readln (m);
       if n<m then writeln ('Загаданное число меньше ',m);
       if n>m then writeln ('Загаданное число больше ',m);
       if n=m then begin writeln ('БРАВО! Вы угадали число за ',i,' попыток!');  i:=8; end;
     end;
if n<>m then writeln ('Искомое число было ',n, '. Повезет в следующий раз!' );
end.