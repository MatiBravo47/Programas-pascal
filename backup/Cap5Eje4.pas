program Cap5Eje4;
Uses crt;
Type
  TVec=array[1..10] of integer;
Var
  N,M:Byte;
  V,VC:TVec;
Procedure LeeArch(Var N:Byte;Var V:TVec);
Var
  Arch:Text;
  Num:Integer;
Begin
  N:=0;
  Assign(Arch,'Ejercicio54.txt');Reset(Arch);
  While not eof (Arch) do
    Begin
      N:=N+1;
      Read(Arch,Num);
      V[N]:=Num;
    end;
end;
Procedure Compacta(N:Byte;V:TVec;Var M:byte;Var VC:TVec);
Var
  i:Byte;
Begin
M:=0;
For i:=1 to N do
  Begin
    If V[i]<>0 then
      Begin
      M:=M+1;
      VC[M]:=V[i];
      end;
  end;
end;

Procedure MuestraVector (M:byte;VC:TVec);
Var
  i:Byte;
Begin
For i:=i to M do
    Write (' ',VC[i]);
end;
//Programa principal
begin
  Clrscr;
  LeeArch(N,V);
  Compacta(N,V,M,VC);
  MuestraVector(M,VC);
  Readln;
end.

