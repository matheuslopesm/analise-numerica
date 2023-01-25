a = input('Informe o 1º numero>');
b = input('Informe o 2º numero>');
c = input('Informe o 3º numero>');

if a~=b & b~=c & a~=c
  vet = [a b c];
  cresc = sort(vet);
  cresc
endif

d = input('Informe o 4º numero>');

if a~=b & b~=c & a~=c & a~=d & b~=d & c~=d
  vet = [a b c d];
  decresc = sort(vet, 'descend');
  decresc
endif







