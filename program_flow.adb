with Ada.Text_IO;
use Ada.Text_IO;

-- Init variabler
procedure program_flow is
   i : Integer;
   res : Integer;
   fin : constant Integer := 10;

   function fact (n : Integer) return Integer is
   begin
      if n <= 1 then
         return 1;
      else
         return n * fact (n-1); -- Rekursivt anrop
      end if;
   end fact;
begin
   i := 0; -- Börja från noll

   loop
      res :=fact (i);
      Put_Line("Fact(" & Integer'Image(i) & "): "& Integer'Image(res));
      i := i + 1;
      exit when i > fin;
   end loop;

end program_flow;