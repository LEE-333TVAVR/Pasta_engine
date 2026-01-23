
uses Main, GraphABC;
begin
  var Гоблин:= new Picture('Гоблин.png');
  var Массив_объектов : array of Каннеллони;
  SetLength(Массив_объектов,1);
  Массив_объектов[0]:= new Каннеллони(60,60,320,320,Гоблин);
  var Камера_1:Сцена;
  Камера_1:= new Сцена(Массив_объектов,true,true,640,640);
  Камера_1.Update;
  while true do
  begin
    Sleep(10);
    Камера_1.Update;
  end;
end.