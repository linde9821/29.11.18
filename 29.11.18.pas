program Aufgaben_5;
{$I+}

uses Sysutils, crt; 

var
	verzeichnisName : String;

// 10 Strings in eine Textdatei 
procedure aufgabe1_1();
var 
	FileName : String;
	FileStr : TextFile;
	i : integer;
begin 
	FileName := verzeichnisName + 'Strings.txt';

	writeln('10 Strings in ' , FileName, ' schrieben'); 
	
	Assign(FileStr, FileName);
	
	Rewrite(FileStr);
	
	for i := 0 to 9 do 
	begin
		writeln(FileStr, 'TestString', IntToStr(i));
	end;
	
	Close(FileStr);
	writeln('Abgeschlossen');
end;

procedure aufgabe1_2();
var 
	FileName : String;
	FileInt : File of integer;
	i : integer;
begin 
	FileName := verzeichnisName + 'Integer.int';

	writeln('10 Integer in ' , FileName, ' schrieben'); 
	
	Assign(FileInt, FileName);
	
	Rewrite(FileInt);
	
	for i := 0 to 9 do 
	begin
		write(FileInt, i);
	end;
	
	Close(FileInt);
	writeln('Abgeschlossen');
end;

procedure aufgabe1_3();
var 
	FileName : String;
	FileBoolean : File of boolean;
	i : integer;
begin 
	FileName := verzeichnisName + 'Boolean.bol';

	writeln('10 Booleans in ' , FileName, ' schrieben'); 
	
	Assign(FileBoolean, FileName);
	
	Rewrite(FileBoolean);
	
	for i := 0 to 9 do 
	begin
		if (i mod 2) = 0 then write(FileBoolean, true)
		else write(FileBoolean, false);
	end;
	
	Close(FileBoolean);
	writeln('Abgeschlossen');
end;

//Nachfragen ob korrekt wegen größe 
procedure aufgabe1_4();
var 
	FileName : String;
	FileInt64 : File of int64;
	i : int64;
begin 
	FileName := verzeichnisName + 'int64.int64';

	writeln('10 int64 in ' , FileName, ' schrieben'); 
	
	Assign(FileInt64, FileName);
	
	Rewrite(FileInt64);
	
	i := 10;
	
	while (i > 0) do
	begin
		write(FileInt64, i);
		i := i - 1;
	end;
	
	{
	for i := 0 to 9 do 
	begin
		write(FileInt64, i);
	end;
	}
	
	Close(FileInt64);
	writeln('Abgeschlossen');
end;

procedure aufgabe1_5();
var 
	FileName : String;
	FileExtReal : File of Real;
	i : integer;
	r : real;
begin 
	FileName := verzeichnisName + 'ExtReal.er';

	writeln('10 Real in ' , FileName, ' schrieben'); 
	
	Assign(FileExtReal, FileName);
	
	Rewrite(FileExtReal);
	
	r := 1.1;
	
	for i := 0 to 9 do 
	begin
		write(FileExtReal, r);
		r := r + 0.1;
	end;
	
	Close(FileExtReal);
	writeln('Abgeschlossen');
end;

procedure aufgabe1_6();
var 
	FileName : String;
	FileInt : File of integer;
	i : integer;
begin 
	FileName := verzeichnisName + 'Integer-256-255.int';

	writeln('10 Integer in ' , FileName, ' schrieben'); 
	
	Assign(FileInt, FileName);
	
	Rewrite(FileInt);
	
	for i := -256 to 255 do 
	begin
		write(FileInt, i);
	end;
	
	Close(FileInt);
	writeln('Abgeschlossen');
end;

procedure aufgabe1_7();
var 
	FileName : String;
	FileStr : File of String[10];
	i : integer;
	
begin

	FileName := verzeichnisName + 'Strings[10].txt';
	writeln('10 Strings[10] in ' , FileName, ' schrieben'); 
	Assign(FileStr, FileName);
	
	Rewrite(FileStr);
	
	for i := 0 to 9 do
	begin
		write(FileStr, 'ABCDEFGHIJ');
	end;
	
	Close(FileStr);
	writeln('Abgeschlossen');
end;

procedure aufgabe_2();
var 
	FileName : String;
	FileInt : File of integer;
	i : integer;
begin 
	FileName := verzeichnisName + 'Integer.int';

	writeln('10 Integer aus ' , FileName, ' lesen'); 
	
	Assign(FileInt, FileName);
	
	Reset(FileInt);
	
	repeat
		read(FileInt, i);
		writeln(i);
	until eof(FileInt);
	
	Close(FileInt);
	writeln('Abgeschlossen');
	
	FileName := verzeichnisName + 'Integer-256-255.int';
	writeln('Alle Integer aus ' , FileName, ' lesen'); 
	
	Assign(FileInt, FileName);
	reset(FileInt);
	
	repeat
		read(FileInt, i);
		write(i);
	until eof(FileInt);
	
	writeln();
	Close(FileInt);
	writeln('Abgeschlossen');
end;

//Lotto
procedure aufgabe_3());
begin 

end;
	
begin
	verzeichnisName := 'Files\';
	
	aufgabe1_1();
	aufgabe1_2();
	aufgabe1_3();
	aufgabe1_4();
	aufgabe1_5();
	aufgabe1_6();
	aufgabe1_7();
	
	aufgabe_2();

end.