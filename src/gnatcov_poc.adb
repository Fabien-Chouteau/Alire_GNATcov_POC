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




   function C(X : Integer) return Integer is
   begin
      if (X mod 2) = 1 then
         return A;
      else
         return X * 2;
      end if;
   end C;

begin


   Ada.Text_IO.Put_Line (B (1)'Img);
   Ada.Text_IO.Put_Line (B (2)'Img);
   Ada.Text_IO.Put_Line (C (A)'Img);
   Ada.Text_IO.Put_Line (C (1)'Img);
end Gnatcov_Poc;
