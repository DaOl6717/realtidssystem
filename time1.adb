with Ada.Text_IO;
use Ada.Text_IO;

with Ada.Calendar;
use Ada.Calendar;

procedure time1 is
	dt : Duration := 1.0; -- In seconds
	now : Time;
	i : Integer := 0;
begin
	loop
		now := Clock; -- Hämtar systemets nuvarande tid
		delay until Clock + dt; -- Vänta en sekund
		Put_Line(Duration'Image((Clock - now)));
		i := i + 1; 
		exit when i > 10; -- Gör det här tio ggr
	end loop;
end time1;
