program formule;

var
  s: string;
  tr, nr: boolean;
  i, pr: integer;

begin
while not Eof do
begin
  Readln(s);
  tr := true;
  nr := false;
  pr := 0;
  for i := 1 to s.Length do
  begin
    if (s[i] >= '0') and (s[i] <= '9') then 
    begin
    nr := true;
    
    end
    else if (s[i] = '-') or (s[i] = '/') or (s[i] = '*') or (s[i] = '+') then
    begin
      if (nr = false) then 
      begin
        tr := false;
      end
      
      else nr := false;
      
      
    end
    else if (s[i] = '(') then
    begin
    if nr = true then
    tr := false;
      pr := pr - 1;
      nr := false;
    end
    else if (s[i] = ')') then
    begin
    if nr = false then
    tr := false;
      pr := pr + 1;
      //nr := false;
    end;
    //Writeln(i, ' ',tr);
  end;
  if pr <> 0 then tr := false;
  Writeln(tr);
  end;
end.