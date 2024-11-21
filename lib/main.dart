import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Generator',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey
      ),
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.blueAccent,
              title: const Text(
                  'Generate Number',
                  style: TextStyle(color: Colors.white)
              )
          ),
          body: const NumberGenerator()
      ),
    );
  }
}

class NumberGenerator extends StatefulWidget{

  const NumberGenerator({super.key});

  @override
  State<NumberGenerator> createState() => _NumberGenerator();
}

class _NumberGenerator extends State<NumberGenerator>{

  String? _result;
  String? _input;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: <Widget> [
          TextField(
            decoration: const InputDecoration(
              hintText: 'Input N'
            ),
            onChanged: (String value){
              setState(() {
                _input = value;
              });
            },
          ),
          Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              try{
                                if(_input != null){
                                  _result = generateNumberVariant1(
                                      int.parse(_input!));
                                }
                              }catch (e){
                                showInvalidInputError();
                              }
                            });
                          },
                          child: const Text('1')
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              try{
                                if(_input != null){
                                  _result = generateNumberVariant2(
                                      int.parse(_input!));
                                }
                              }catch (e){
                                showInvalidInputError();
                              }
                            });
                          },
                          child: const Text('2')
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            try{
                              if(_input != null){
                                _result = generateNumberVariant3(
                                    int.parse(_input!));
                              }
                            }catch (e){
                              showInvalidInputError();
                            }
                          });
                        },
                        child: const Text('3')
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            try{
                              if(_input != null){
                                _result = generateNumberVariant4(
                                    int.parse(_input!));
                              }
                            }catch (e){
                              showInvalidInputError();
                            }
                          });
                        },
                        child: const Text('4')
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 32.0),
                child: Column(
                  children: <Widget> [
                    const Text('Result'),
                    const SizedBox(height: 16),
                    Text(
                        _result ?? '',
                      style: const TextStyle(
                        fontSize: 24.0
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void showInvalidInputError(){
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid input'),
          duration: Duration(seconds: 1),
        )
    );
  }

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
}

