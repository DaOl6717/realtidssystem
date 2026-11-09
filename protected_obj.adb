with Ada.Text_IO; use Ada.Text_IO;

procedure protected_obj is

	protected MyCounter is -- Def vad som ska vara i procedure
		procedure Set (i : Integer);
		procedure Incr;
		function Get return Integer;
	private
		count : Integer := 0; -- Atomisk var
	end MyCounter;

	protected body MyCounter is -- Tror också är atomisk
		procedure Set ( i : integer ) is
		begin
			count := i;
		end Set;

		procedure Incr is
		begin
			count := count + 1;
		end incr;

		function Get return Integer is
		begin
			return count;
		end Get;

	end MyCounter;

	task T1 is -- def T1
		entry start;
	end T1;

	task T2 is -- def T2
		entry start;
	end T2;

	task body T1 is
	begin
		accept start;
		MyCounter.Incr;
	end T1;

	task body T2 is
	begin
		accept start;
		MyCounter.Incr;
	end T2;

begin
	Put_Line("Starting T1...");
	T1.start;

	Put_Line("Starting T2...");
	T2.start;

	while (not T1'Terminated) or (not T2'Terminated) loop
		null; -- Medans T1 och T2 kör, gör inget
	end loop;

	Put("MyCounter value: ");
	Put_Line( Integer'Image (MyCounter.Get ));
end protected_obj;
