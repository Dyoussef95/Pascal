program final_2016;
uses crt;
type Tvec = array[1..17] of Integer;
type Tmat = array[1..10,1..10] of Integer;

procedure CargarVector(var VectFibo: Tvec);
	var
		i,prim,seg,fibo: Integer;
begin
	prim:=0;
	seg:=1;
	for i := 1 to 17 do
	begin
		fibo:=prim+seg;
		prim:=seg;
		seg:=fibo;		
		VectFibo[i]:=fibo;
	end;
end;

procedure MostrarVector(VectFibo: Tvec);
	var
		i: Integer;
begin
	for i := 1 to 17 do
	begin
		Write(VectFibo[i]:5);
	end;
end;

procedure CargarMatriz(var Mat: Tmat; Linf,Lsup: Integer);
	var
		i,j: Integer;
begin
	for i := 1 to 10 do
	begin
		for j := 1 to 10 do
		begin
			Mat[i,j]:=Linf+random(Lsup+1-Linf);
		end;
	end;
end;

procedure MostrarMatriz(var Mat: Tmat);
	var
		i,j: Integer;
begin
	for i := 1 to 10 do
	begin
	writeln;
		for j := 1 to 10 do
		begin
			write(Mat[i,j]:5);
		end;
	end;
end;

function SonFibos(Mat: Tmat; VectFibo: Tvec): Integer;
var
	c,i,j,k: Integer;
begin
	c:=0;
	for i := 1 to 10 do
	begin
		for j := 1 to 10 do
		begin
			for k := 1 to 17 do
			begin
				if Mat[i,j]=VectFibo[k] then
				begin
					c:=c+1;
					write(Mat[i,j]:5);
				end;
			end;
		end;
	end;
	SonFibos:=c;
end;

var
	Mat: Tmat;
	VectFibo: Tvec;
	x: Integer;
BEGIN
	randomize;
	CargarVector(VectFibo);
	MostrarVector(VectFibo);
	writeln;writeln;
	CargarMatriz(Mat,1,999);
	MostrarMatriz(Mat);
	writeln;writeln;
	x:=SonFibos(Mat,VectFibo);
	writeln('La cantidad de elementos repetidos es: ',x)
END.
