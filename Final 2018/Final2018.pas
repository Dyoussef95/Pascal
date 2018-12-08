program Final2018;
uses crt,math;
const
DIM1 = 5;
DIM2 = 7;
type Tmat = array[1..DIM1,1..DIM2] of Longint;

procedure CargarMatriz(var M: Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to DIM1 do
	begin
		for j := 1 to DIM2 do
		begin
			M[i,j]:=10+random(100000+1-10);
		end;
	end;
end;

procedure MostrarMatriz(M: Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to DIM1 do
	begin
	writeln;
		for j := 1 to DIM2 do
		begin
			write(M[i,j]:8);
		end;
	writeln;
	end;
end;

procedure InfoNumero(a:Longint;var pa: Integer;
var cant: Integer;var prim:Integer;var ult: Integer);
	var
		x: Longint;
begin
	x:=a;
	if a mod 2 = 0 then
	begin
		par:=0;
	end
	else
	begin
		par:=1;
	end;
	cant:=0;
	repeat
		x:=x div 10;
		cant:=cant+1;
	until x<=10;
	cant:=cant+1;
	prim:=x;
	//prim:=a div (10**(cant-1))
	ult:=a mod 10;
end;

procedure MuestraInfo(M:Tmat;fila:Integer);
	var
		j,par,cant,prim,ult: Integer;
begin
	par:=0;
	cant:=0;
	prim:=0;
	ult:=0;
	for j := 1 to DIM2 do
	begin
		InfoNumero(M[fila,j],par,cant,prim,ult);
		write(M[fila,j]);
		write('  tiene ',cant,' digitos');
		if par = 0 then
		begin
			write(', Es par');
		end
		else
		begin
			write(', Es impar');
		end;
		write('. Primer digito -> ',prim);
		write('. Ultimo digito -> ',ult);
		writeln;
		readkey;
	end;
end;

function Vocales(M:Tmat;x:char): Integer;
begin
	
end;

var
	M: Tmat;
	fila: Integer;
	x:char;
BEGIN{MAIN}
	randomize;
	CargarMatriz(M);
	MostrarMatriz(M);
	write('Ingrese la fila: ');
	read(fila);
	MuestraInfo(M,fila);
	x:='A';

END.



