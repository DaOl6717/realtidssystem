with Ada.Text_IO;
use Ada.Text_IO;

procedure simple_task is
	task T; -- Init task

	task body T is -- Def vad tasken ska göra (antar lokalt till tasken?)
	begin
		Put_Line("I'm task T!");
	end T;
begin
	Put_Line("I'm simple_task main!");
end simple_task;
