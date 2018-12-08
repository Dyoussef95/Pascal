program final;
uses crt;
type Tvec = array[1..7] of Integer;
type Tmat = array[1..7,1..5] of Integer;

procedure CargarMatriz(var M: Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to 7 do
	begin
		for j := 1 to 5 do
		begin
			M[i,j]:=100+random(900+1-100);
		end;
	end;
end;


function ExtraerEn7(M:Tmat): Integer;
var
	i,j,c: Integer;
begin
	c:=0;
	for i := 1 to 7 do
	begin
		for j := 1 to 5 do
		begin
			if M[i,j] mod 10 = 7 then
			begin
			c:=c+1;
			end;
		end;
	end;
	ExtraerEn7:=c;
end;

procedure MostrarMatVec(M:Tmat;V:Tvec);
	var
		i,j: Integer;
begin
	for i := 1 to 7 do
	begin
		writeln;
		for j := 1 to 5 do
		begin
			write(M[i,j],'   ');
		end;
	end;

	writeln('');
	writeln('');
	for i := 1 to 7 do
	begin
		write(V[i],'   ')
	end;
end;

var
	M: Tmat;
	V: Tvec;
	c,i: Integer;
BEGIN
	randomize;
	CargarMatriz(M);
	c:=ExtraerEn7(M);
	writeln('Cantidad de numeros que terminan en 7: ',c);
	for i := 1 to 7 do
	begin
		V[i]:=100+random(900+1-100);
	end;
	MostrarMatVec(M,V);
END.