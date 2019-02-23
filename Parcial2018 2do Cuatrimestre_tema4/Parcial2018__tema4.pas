program parcial2018_tema4;
uses crt;
type Matriz = array[1..8,1..8] of Integer;

procedure CargarMatriz(var M: Matriz);
	var
		i,j: Integer;
begin
	for i := 1 to 8 do
	begin
		for j := 1 to 8 do
		begin
			M[i,j]:=100+random(999+1-100);
		end;
	end;
end;

procedure MostrarMatriz(M:Matriz);
var
	i,j: Integer;
begin
	for i := 1 to 8 do
	begin
		for j:=1 to 8 do 
		begin
			write(M[i,j]:5);
		end;
		writeln;
	end;
end;

function Multiplo3(x:Integer):Integer;
var
	y: Integer;
begin
	if x mod 3 = 0 then
	begin
		y:=1;
	end
	else
	begin
		y:=0;
	end;
	Multiplo3:=y;
end;


{MAIN}
var
	M1,M2: Matriz;
	i,j,x:Integer;
BEGIN
	CargarMatriz(M1);
	MostrarMatriz(M1); 
	for i := 1 to 8 do
	begin
		for j := 1 to 8 do
		begin
			x:=Multiplo3(M1[i,j]);
			if x=1 then
			begin
				M2[i,j]:=M1[i,j];
			end
			else
			begin
				M2[i,j]:=0;
			end;
		end;
	end;
	writeln;
	MostrarMatriz(M2);
END.






