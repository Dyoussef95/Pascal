program tema1_2017;
uses crt;
const
dim1 = 8;
dim2 = 7;
type Tmat = array[1..dim1,1..dim2] of Integer;

procedure CargarMatriz(var M: Tmat);
	var
		i,j,c1,c2: Integer;
begin
	c1:=1;
	c2:=(dim1*dim2) div 2;
	for i := 1 to dim1 do
	begin
		for j := 1 to dim2 do
		begin
			if i mod 2 = 0 then
			begin
				M[i,j]:=c2;
				c2:=c2-1;
			end
			else
			begin
				M[i,j]:=c1;
				c1:=c1+1;
			end;
		end;
	end;
end;

procedure MostrarMatriz(M: Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to dim1 do
	begin
	writeln;
		for j := 1 to dim2 do
		begin
			write(M[i,j]:5);
		end;
	end
end;

procedure Intercambio(var M: Tmat);
	var
		i,j,aux,x: Integer;
begin
	x:=(DIM2 DIV 2) + 1;
	for i := 1 to DIM1 do
	begin
		for j := 1 to x-1 do
		begin
			aux:=M[i,x+j];
			M[i,x+j]:=M[i,x-j];
			M[i,x-j]:=aux;
		end;
	end;
end;

var
	M1: Tmat;
BEGIN{MAIN}
	CargarMatriz(M1);
	MostrarMatriz(M1);
	Intercambio(M1);
	writeln;
	MostrarMatriz(M1);
END.	

