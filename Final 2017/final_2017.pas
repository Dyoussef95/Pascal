program final_2017;
uses crt;
Type Tmat = array[1..10,1..7] of Integer;
Type Tvec = array[1..10] of Integer;

procedure CargarMat(var M: Tmat;LimInf,LimSup: Integer);
	var
		i,j: Integer;
begin
	for i := 1 to 10 do
	begin
		for j := 1 to 7 do
		begin
			M[i,j]:=LimInf+random(LimSup+1-LimInf);
		end;
	end;
end;

procedure CargarVector(M: Tmat; var Vec: Tvec);
	var
		i,j,a: Integer;
begin
	
	for i := 1 to 10 do
	begin
		a:=0;
		for j := 1 to 7 do
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
	for i := 1 to 10 do
	begin
		for j := 1 to 7 do
		begin
			Write(M[i,j]:3);
		end;
		write(Vec[i]:8);
		writeln;
	end;
end;

function EsPartidario(Vec: Tvec): Integer;
var
	i,menp,mayi: Integer;
begin
	{Encuentro el mayor de los impares}
	mayi:=Vec[1];
	for i := 1 to 10 do
	begin
		if i mod 2 = 1 then
		begin
			if mayi<Vec[i] then
			begin
				mayi:=Vec[i];
			end;
		end;
	end;

	{Encuentro el menor de los impares}
	menp:=Vec[2];
	for i := 2 to 10 do
	begin
		if i mod 2 = 0 then
		begin
			if menp>Vec[i] then
			begin
				menp:=Vec[i];
			end;
		end;

	end;

	if menp > mayi then
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
	x: Integer;
BEGIN
	randomize;
	CargarMat(M,1,5);
	CargarVector(M,Vec);
	Mostrar(M,Vec); 
	x:=EsPartidario(Vec);
	if x=1 then 
	begin
		writeln('El vector es partidario');
	end
	else 
	begin
		writeln('El vector no es partidario');
	end;
END.