program final_2018;
uses crt;
type Tmat = array[1..100,1..100] of Integer;

procedure CargarMatriz(var M: Tmat;DIM,LimInf,LimSup: Integer);
var
	i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do 
		begin
			M[i,j]:=LimInf+random(LimSup+1-LimInf);
		end;
	end;
end;

procedure Mostrar(M: Tmat;DIM: Integer);
	var
		i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			write(M[i,j]:5);
		end;
		writeln;
	end;
end;

procedure MatrizSuma(M1,M2: Tmat;var M3:Tmat;DIM: Integer);
	var
		i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			M3[i,j]:=M1[i,j]+M2[i,j];
		end;
	end;
end;

function Diagonales(M3: Tmat;DIM: Integer): Integer;
var
	i,j,a: Integer;
begin
	a:=0;
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			if (i=j) OR (i+j=DIM+1) then
			begin
				a:=a+M3[i,j];
			end;
		end;
	end;
	{if DIM mod 2 <> 0 then
	begin
		i:=(DIM+1) DIV 2;
		a:=a-M3[i,i];
	end;}
	Diagonales:=a;
end;

procedure Permutar(var M3: Tmat;DIM: Integer);
	var
		i,j,aux: Integer;
begin
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			if (i>j) then
			begin
				aux:=M3[i,j];
				M3[i,j]:=M3[j,i];
				M3[j,i]:=aux;
			end;
		end;
	end;
end;

var
 	N,LimInf,LimSup,x: Integer;
 	M1,M2,M3: Tmat;
BEGIN
	randomize;
	write('ingrese un numero entero <= 6: ');
	read(N);
	write('Indique el limite inferior: ');
	read(LimInf);
	write('Indique el limite superior: ');
	read(LimSup);
	CargarMatriz(M1,N,LimInf,LimSup);
	CargarMatriz(M2,N,LimInf,LimSup);
	Mostrar(M1,N);
	writeln;
	Mostrar(M2,N);
	writeln;
	MatrizSuma(M1,M2,M3,N);
	Mostrar(M3,N);
	writeln;
	x:=Diagonales(M3,N);
	writeln('La suma de las diagonales es: ',x);
	writeln;
	Permutar(M3,N);
	Mostrar(M3,N);
END.