program tema3;
uses crt;
type Tmat = array[1..100,1..100] of Integer;
procedure CargarMatriz(var M:Tmat;DIM1,DIM2,Linf,Lsup: Integer);
	var
		i,j: Integer;
begin
	for i := 1 to DIM1 do
	begin
		for j := 1 to DIM2 do
		begin
		repeat
			M[i,j]:=Linf+random(Lsup+1-Linf); {CARGO CON ALEATORIOS}

		until (M[i,j] mod 100) mod 3 = 0; {REPITO HASTA QUE EL ALEATORIO SEA UN NUMERO QUE }
		end;							  { LOS DOS ULTIMOS DIGITOS SEAN MULTIPLO DE 3 }
	end;
end;

procedure MostrarMatriz(M: Tmat;DIM1,DIM2: Integer);
	var
		i,j: Integer;
begin
	for i := 1 to DIM1 do
	begin
		for j := 1 to DIM2 do
		begin
			write(M[i,j]:5);
		end;
		writeln;
	end;
end;

procedure Permutar(var M: Tmat;DIM1,DIM2: Integer);
	var
		i,j,x,aux: Integer;
begin
	x:=DIM2+1; 
	for i := 1 to DIM1 do
	begin
		for j := 1 to (DIM2 DIV 2) do
		begin
			aux:=M[i,j];
			M[i,j]:=M[i,x-j];
			M[i,x-j]:=aux;
		end;
	end;
end;

var
	M: Tmat;
	DIM1,DIM2: Integer;
BEGIN{MAIN}
	randomize;
	DIM1:=6;
	DIM2:=5;
	CargarMatriz(M,DIM1,DIM2,100,999);
	MostrarMatriz(M,DIM1,DIM2);
	Permutar(M,DIM1,DIM2);
	writeln;writeln;
	MostrarMatriz(M,DIM1,DIM2);
END.