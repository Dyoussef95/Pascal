program tema8_2017;
uses crt;
const
	DIM = 6;
type Tmat = array[1..DIM,1..DIM] of Integer;
	 Tvec = array[1..DIM] of Integer;

procedure CargarMatriz(var M: Tmat; LimInf,LimSup: Integer);
	var
		i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		for j := 1 to DIM do
		begin
			if i=j then 
			begin
				M[i,j]:=1;
			end
			else 
			begin
				repeat
					M[i,j]:=LimInf+random(LimSup+1-LimInf);
				until M[i,j] mod 5 = 0;
			end;
		end;
	end;
end;

function sumaFila(M: Tmat; i: Integer): Integer;
var
	j,a: Integer;
begin
	a:=0;
	for j := 1 to DIM do
	begin
		a:=a+M[i,j];
	end;
	sumaFila:=a;
end;

procedure generarVector(var Vect: Tvec; M: Tmat);
	var
		i: Integer;
begin
	for i := 1 to DIM do
	begin
		Vect[i]:=sumaFila(M,i);
	end;
end;

procedure Mostrar(M: Tmat; Vect: Tvec);
	var
		i,j: Integer;
begin
	for i := 1 to DIM do
	begin
		writeln;
		for j := 1 to DIM do
		begin
			write(M[i,j]:5);
		end;
		write(Vect[i]:10);
	end;
end;

var
	M: Tmat;
	Vect: Tvec;
BEGIN{MAIN}
	randomize;
	highvideo;
	CargarMatriz(M,1,50);
	generarVector(Vect,M);
	Mostrar(M,Vect);
END.





