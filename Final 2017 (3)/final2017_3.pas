program final2017_3;
uses crt;
type Tmat = array[1..100,1..100] of Integer;
type Tvec = array[1..100] of Longint;

procedure CargarMatriz(var M: Tmat; Dim: Integer);
	var i,j : Integer;
begin
	for i := 1 to Dim do
	begin
		for j := 1 to Dim do
		begin
			M[i,j]:=1+random(9+1-1);
		end;
	end;
end;

procedure GeneraVecA(M: Tmat;Dim: Integer;var VecA: Tvec);
	var
		i,j,a: Longint;
begin	
	for i := 1 to Dim do
	begin
		a:=0;
		for j := 1 to Dim do
		begin
			a:=a*10+M[i,j];
		end;
		VecA[i]:=a;
	end;
end;


procedure GeneraVecB(M: Tmat;Dim: Integer;var VecB: Tvec);
	var
		i,j,a: Longint;
begin	
	for j := 1 to Dim do
	begin
		a:=0;
		for i := 1 to Dim do
		begin
			a:=a*10+M[i,j];
		end;
		VecB[j]:=a;
	end;
end;

procedure Mostrar(M: Tmat;Dim: Integer;VecA,VecB: Tvec);
var
	i,j: Integer;
begin
	for i := 1 to Dim do
	begin

		writeln;

		for j := 1 to Dim do
		begin
			write(M[i,j]:8);
		end;

		write(VecA[i]:8);
		
		writeln;
	end;

	writeln;writeln;

	for i := 1 to Dim do
	begin
		write(VecB[i]:8);
	end;
end;

var
	Dim: Integer;
	M: Tmat;
	VecA,VecB: Tvec;
BEGIN{MAIN}
	write('Ingrese la dimension: ');
	read(Dim);
	CargarMatriz(M,Dim);
	GeneraVecA(M,Dim,VecA);
	GeneraVecB(M,Dim,VecB);
	Mostrar(M,Dim,VecA,VecB);
END.