String generateNumberVariant1(int input){
  StringBuffer buffer = StringBuffer();

  for(int i=1; i<=input; i++){
    buffer.write(i.toString());
    buffer.write(' ');
  }

  return buffer.toString();
}

String generateNumberVariant2(int input){
  StringBuffer buffer = StringBuffer();

  for(int i=1; i<=input; i++){
    buffer.write(i.toString());
    buffer.write(' ');
  }
  for(int i=input; i>=1; i--){
    buffer.write(i.toString());
    buffer.write(' ');
  }

  return buffer.toString();
}

String generateNumberVariant3(int input){
  StringBuffer buffer = StringBuffer();

  for(int i=1; i<=input; i++){
    buffer.write(i.toString());
    buffer.write((i-1).toString());
    buffer.write(' ');
  }

  return buffer.toString();
}

String generateNumberVariant4(int input){
  StringBuffer buffer = StringBuffer();

  for(int i=1; i<=input; i++){
    if(i%5==0){
      buffer.write('LIMA');
    }else if(i%7==0){
      buffer.write('TUJUH');
    }else{
      buffer.write(i.toString());
    }
    buffer.write(' ');
  }

  return buffer.toString();
}