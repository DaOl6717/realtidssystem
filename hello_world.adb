-- File: hello_world.adb
with Ada.Text_IO;
use Ada.Text_IO;

procedure hello_world is
   msg :constant String := "Hello, world!";
   i :constant Integer := 67;
begin
   Put_Line(msg);
   Put_Line(Integer'Image(i));
end hello_world;
