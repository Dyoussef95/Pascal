program parcial2018_tema3;
uses crt;
const
	DIM = 5;
type Tmat = array[1..DIM,1..DIM] of Char;
type Tvec = array[1..DIM] of Integer;

procedure CargarMatriz(var M:Tmat;limInf,limSup:Integer);
var
	i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			M[i,j]:=chr(limInf+random(limSup+1-limInf));
		end;
	end;
end;

procedure Mostrar(M:Tmat);
var
	i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			write(M[i,j]:5)
		end;
		writeln;
	end;
end;

function Letras(M:Tmat;fila:Integer;l:Char):Integer;
var j,c: Integer;
begin
	c:=0;
	for j:=1 to DIM do 
	begin
		if M[fila,j]=l then
		begin
			c:=c+1;
		end;		
	end;
	Letras:=c;	
end;

{MAIN}
var
	M:Tmat;
	V: Tvec;
	l: Char;
	i:Integer;
BEGIN
	CargarMatriz(M,65,90);
	Mostrar(M);
	write('Ingrese una letra Mayuscula: ');
	read(l);
	for i:=1 to DIM do 
	begin
		V[i]:=Letras(M,i,l);
	end;
	writeln('Vector:=');
	for i:=1 to DIM do
	begin
		write(V[i]:6);
	end;,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
END.