program final;
uses crt;
const
DIM1 = 10;
DIM2 = 7;
Type Tmat = array[1..DIM1,1..DIM2] of Integer;
Type Tvec = array[1..DIM1] of Integer;

procedure CargarMat(var M: Tmat;LimInf,LimSup: Integer);
	var
		i,j: Integer;
begin
	for i := 1 to DIM1 do
	begin
		for j := 1 to DIM2 do
		begin
			M[i,j]:=random(LimSup+1-LimInf)+LimInf;
		end;
	end;
end;

procedure CargarVector(M: Tmat; var Vec: Tvec);
	var
		i,j,a: Integer;
begin
	
	for i := 1 to DIM1 do
	begin
		a:=0;
		for j := 1 to DIM2 do
		begin
			a:=a+M[i,j];
		end;
		Vec[i]:=a;
	end;
end;

procedure Mostrar(M: Tmat;Vec: Tvec);
	var
		i,j: Integer;
begin
	writeln('Matriz                           Vector');
	writeln;
	for i := 1 to DIM1 do
	begin
		for j := 1 to DIM2 do
		begin
			Write(M[i,j]:4);
		end;
		write(Vec[i]:9);
		writeln;
	end;
end;

function EsPartidario(Vec: Tvec): Integer;
var
	i,j,b: Integer;
begin
	b:=1;

	for i := 1 to DIM1 do
	begin
		if i mod 2 = 0 then
		begin
			for j := 1 to DIM1 do
			begin
				if j mod 2 = 1 then
				begin
					if Vec[i]<Vec[j] then
					begin
						b:=0;
					end;
				end;
			end;
		end;
	end;

	if b=1 then
	begin
		EsPartidario:=1;
	end
	else
	begin
		EsPartidario:=0;
	end;
end;

var
	M: Tmat;
	Vec:Tvec;
	a,LimInf,LimSup: Integer;
BEGIN
	randomize;
	LimInf:=1;
	LimSup:=5;
	CargarMat(M,LimInf,LimSup);
	CargarVector(M,Vec);
	Mostrar(M,Vec); 
	a:=EsPartidario(Vec);
	if a=1 then 
	begin
		writeln('El vector es partidario');
	end
	else 
	begin
		writeln('El vector no es partidario');
	end;
END.