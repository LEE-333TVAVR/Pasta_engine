unit Main;



interface
uses GraphABC;

type

Каннеллони = class
  private
    x,y:real;
    Текстура:array of Picture;
  public
    Видимость:boolean;
    Рендеринг:boolean;
    //property
end;

Сцена = class
  
  private
    Массив_Каннеллони:array of Каннеллони;
    { Модуль камеры начинается }
    Ширина:real;
    Высота:real;
    x_позиция_камеры,y_позиция_камеры:real;
    { Модуль камеры заканчивается }
  public
    Видимость:boolean;
    Рендеринг:boolean;
    
    constructor Create(Массив_Каннеллони_для_отрисовки:array of Каннеллони; Прозрачность_сцены, Рендеринг_Сцены:boolean; Ширина_камеры:real:=640.0; Высота_камеры:real:=360.0);
    begin
     Массив_Каннеллони:=Массив_Каннеллони_для_отрисовки;
     Видимость:=Прозрачность_сцены;
     Рендеринг:=Рендеринг_Сцены;
     Ширина:=Ширина_камеры;
     Высота:=Высота_камеры;
    end;
    
    procedure Update;
    begin
      if i.Рендеринг then
      begin
      if not i.Видимость then
          //не надо отрисовывать, только рассчитать всё
      end else begin
          // всё ок
        foreach i:Каннеллони in Массив_Каннеллони do // Отрисовка всех Каннеллони
        begin
          if (i.x > x_позиция_камеры) and //проверка на то входит ли Каннеллони в область камеры
        end;
      end; 
    end;
end;


implementation


end.