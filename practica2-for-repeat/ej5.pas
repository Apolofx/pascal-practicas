program ej5;
var
	maximo, minimo, total, num: Integer;
begin
	total:= 0;
	repeat
	read(num);
		if (total = 0) then
		begin
			maximo := num;
			minimo := num;
		end;
		total:= total + 1;
		if (num > maximo) then maximo := num;
		if (num < minimo) then minimo := num;
	until (num = 100);
	writeln('Maximo ', maximo);
	writeln('Minimo ', minimo);
	writeln('Total leidos, ', total);
end.