-- File: hello_world.adb
with Ada.Text_IO;
use Ada.Text_IO;

procedure hello_world is
   msg :constant String := "Hello, world!";
begin
   Put_Line(msg);
end hello_world;
