with Ada.Text_IO;

procedure Gnatcov_Poc is

   function A return Integer is
   begin
      return 42;
   end A;

   function B (X : Integer) return Integer is
   begin
      if (X mod 2) = 1 then
         return A;
      else
         return X * 2;
      end if;
   end B;
begin
   Ada.Text_IO.Put_Line (B (1)'Img);
end Gnatcov_Poc;
