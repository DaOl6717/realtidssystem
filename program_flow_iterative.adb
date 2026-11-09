with Ada.Text_IO; use Ada.Text_IO;

-- Init variabler

procedure program_flow is
   i   : Integer;
   res : Integer := 1;
   fin : constant Integer := 10;

begin
   i := 0; -- Börja från noll

   loop
      if i < 1 then
         i := i + 1;
      end if;

      res := res * i;
      Put_Line ("Fact(" & Integer'Image (i) & "): " & Integer'Image (res));
      i := i + 1;
      exit when i > fin;
   end loop;

end program_flow;
