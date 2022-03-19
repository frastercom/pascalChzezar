Задание 1.

program shifr;
const s='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдеёжзийклмнопрстуфхцчшщъыьэюя';
var i:integer; s1:string;
begin
  writeln('введите строку');
  readln(s1);
  for i:=1 to s1.Length do
    for var i1:=1 to s.Length do
      if s[i1] = s1[i] then
      begin
        if i1+2<=s.Length then
        begin
          s1[i] := s[i1+2];
          break;
        end
        else
          s1[i] := s[i1+2-s.Length]
      end;
  writeln(s1);
end.

Задание 2.

program shifr;
const s='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдеёжзийклмнопрстуфхцчшщъыьэюя';
var i:integer; s1:string;
begin
  writeln('введите строку');
  readln(s1);
  for i:=1 to s1.Length do
    for var i1:=1 to s.Length do
      if s[i1] = s1[i] then
      begin
        if i1-2>1 then
        begin
          s1[i] := s[i1-2];
          break;
        end
        else
          s1[i] := s[i1-2+s.Length]
      end;
  writeln(s1);
end.

Задание 3.

program shifr;
const s='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдеёжзийклмнопрстуфхцчшщъыьэюя';
var x:integer; s1:string;
begin
  writeln('введите строку');
  readln(s1);
  writeln('введите шаг шифра');
  readln(x);
  for var i:=1 to s1.Length do
    for var i1:=1 to s.Length do
      if s[i1] = s1[i] then
      begin
        if i1+x<=s.Length then
        begin
          s1[i] := s[i1+x];
          break;
        end
        else
          s1[i] := s[i1+x-s.Length]
      end;
  writeln(s1);
end.

Задание 4.

program shifr;
const s='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдеёжзийклмнопрстуфхцчшщъыьэюя';
var x:integer; s1:string;
begin
  writeln('введите строку');
  readln(s1);
  writeln('введите шаг дешифратора');
  readln(x);
  for var i:=1 to s1.Length do
    for var i1:=1 to s.Length do
      if s[i1] = s1[i] then
      begin
        if i1-x>1 then
        begin
          s1[i] := s[i1-x];
          break;
        end
        else
          s1[i] := s[i1-x-s.Length]
      end;
  writeln(s1);
end.

Задание 5.

program shifr1;
const s='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдеёжзийклмнопрстуфхцчшщъыьэюя';
var x,h:integer; s1:string;
begin
  writeln('введите строку');
  readln(s1);
  writeln('введите шифр в виде цифры');
  readln(x);
  for var i:=1 to s1.Length do
    for var i1:=1 to s.Length do
      if s[i1] = s1[i] then
      begin
          if x>=0 then
          begin
            if i1+x<=s.Length then
            begin
              s1[i] := s[i1+x];
              break;
            end
            else
            begin
              s1[i] := s[i1+x-s.Length];
            end
          end
          else
          begin
            if i1+x>1 then
            begin
              s1[i] := s[i1+x];
              break;
            end
            else
            begin
              s1[i] := s[i1+x+s.Length];
            end
          end;
      end;
  writeln('зашифрованная строка');
  writeln(s1);
end.


Задание 6.

program shifr1;
const s='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдеёжзийклмнопрстуфхцчшщъыьэюя';
var x,h:integer; s1:string;
begin
  writeln('введите строку');
  readln(s1);
  writeln('введите шифр в виде цифры');
  readln(x);
  for var i:=1 to s1.Length do
    for var i1:=1 to s.Length do
      if s[i1] = s1[i] then
      begin
          if x>=0 then
          begin
            if i1+x<=s.Length then
            begin
              s1[i] := s[i1+x];
              break;
            end
            else
            begin
              h:= i1+x-s.Length;
              while h>s.Length do
                h:= h-s.Length;
              s1[i] := s[h];
            end
          end
          else
          begin
            if i1+x>1 then
            begin
              s1[i] := s[i1+x];
              break;
            end
            else
            begin
              h:= i1+x+s.Length;
              while h<1 do
                h:= h+s.Length;
              s1[i] := s[h];
            end
          end;
      end;
  writeln('зашифрованная строка');
  writeln(s1);
end.

Задание 7.

program shifr;
var i:integer; s:string;
begin
  writeln('введите строку');
  readln(s);

  writeln('введите шифр в виде цифры');
  readln(x);

  for i:=1 to s.Length do
      s[i]:=chr(ord(s[i])-x);
  writeln(s);
end.
