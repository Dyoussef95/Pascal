program tema2_2017;
uses crt;
const
	dim1 = 6;
	dim2 = 5;
type Tmat = array[1..dim1,1..dim2] of Integer;

procedure CargarMatriz(var M: Tmat;Linf,Lsup: Integer);
	var 
	i,j : Integer;
begin
	for i := 1 to dim1 do
	begin
		for j := 1 to dim2 do
		begin
			if (i=1) or (i=dim1) or (j=1) or (j=dim2) then
			begin
			 	M[i,j]:=linf+random(lsup+1-linf);
			end
			else
			begin
				M[i,j]:=0;
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
	end;
end;

var
	M: Tmat;
BEGIN{MAIN}
	RANDOMIZE;
	CargarMatriz(M,10,99);
	MostrarMatriz(M);
END.