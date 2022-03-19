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
