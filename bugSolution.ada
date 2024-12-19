```ada
function Check_Range(Value : Integer) return Boolean is
begin
  if Value > 10 then
    return True;
  else
    return False;
  end if;
exception
  when Constraint_Error => -- Handle potential constraint errors (e.g., overflow)
    Put_Line("Constraint Error: Value out of range");
    return False; 
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Num : Integer := 15;
   Result : Boolean;
begin
   Result := Check_Range(Num);
   Put_Line("Result: " & Boolean'Image(Result));
   Num := Integer'Last + 1; -- Deliberate overflow attempt
   Result := Check_Range(Num);
   Put_Line("Result: " & Boolean'Image(Result));
end Main;
```