program tema6_2017;
uses crt;
const
	N = 7;
type Tmat = array[1..7,1..N] of Integer;
	 Tvec = array[1..7] of Integer;

procedure cargarProduccion(var A: Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to 7 do
	begin
		for j := 1 to N do
		begin
			A[i,j]:=1+random(N+10+1-1);
		end;
	end;
end;

procedure mostrarProduccion(A: Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to 7 do
	begin
	writeln;
		for j := 1 to N do
		begin
			write(A[i,j]:5);
		end;
	end;
end;

function posicionMayor(A: Tmat; fila: Integer): Integer;
var
	j,mayor,pos: Integer;
begin
	mayor:=0;
	for j := 1 to N do
	begin
		if mayor<A[fila,j] then 
		begin
			mayor:=A[fila,j];
			pos:=j;
		end;
	end;
	posicionMayor:=pos;
end;

procedure cargaMayores(var Vect: Tvec; M: Tmat);
	var
		i: Integer;
begin
	for i := 1 to 7 do
	begin
		Vect[i]:=posicionMayor(M,i);
	end;
end;

var
	A: Tmat;
	Vect: Tvec;
	i: Integer;
BEGIN{MAIN}
	randomize;
	cargarProduccion(A);
	mostrarProduccion(A);
	writeln;writeln;
	cargaMayores(Vect,A);
	for i := 1 to 7 do
	begin
		write(Vect[i]:5);
	end;
	
END.





