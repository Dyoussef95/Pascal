program parcial2018_tema5;
uses crt;
type Matriz = array[1..6,1..6] of Integer;

procedure CargarMatriz(var M: Matriz);
	var
		i,j: Integer;
begin
	for i := 1 to 6 do
	begin
		for j := 1 to 6 do
		begin
			M[i,j]:=100+random(999+1-100);
		end;
	end;
end;

procedure MostrarMatriz(M:Matriz);
var
	i,j: Integer;
begin
	for i := 1 to 6 do
	begin
		for j:=1 to 6 do 
		begin
			write(M[i,j]:5);
		end;
		writeln;
	end;
end;
procedure Transponer(M1:Matriz;var M2:Matriz);
	var
		i,j: Integer;
begin
	for i := 1 to 6 do
	begin
		for j := 1 to 6 do
		begin
			M2[i,j]:=M1[j,i];
		end;
	end;
end;

{Main}
var
	M1,M2: Matriz;
BEGIN
	CargarMatriz(M1);
	MostrarMatriz(M1);
	Transponer(M1,M2);
	writeln;writeln;
	MostrarMatriz(M2);
END.