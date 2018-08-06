import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  String email = '';
  String password = '';

  Widget build(context) {
    final Bloc bloc = Provider.of(context);

    return Provider(
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(children: [
              emailText(bloc),
              passwordText(bloc),
              Container(
                margin: EdgeInsets.only(top: 20.0),
              ),
              submitButton(bloc),
            ]),
      ),
      );
  }

  Widget emailText(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context,snapshot){
        return TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Ingrese su email: ',
            hintText: 'email@gmail.com',
          ),
          onChanged: bloc.changePassword,
        );
      }
    );
  }

  Widget passwordText(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context,snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          decoration: InputDecoration(labelText: 'password: ', hintText: 'password',
          errorText:snapshot.error,
          ),
        );
      }
    );
  }

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot){
        return RaisedButton(
          color: Colors.blue,
          child: Text('Ingresar'),
          onPressed: snapshot.hasData ? () {
            print('aca hay que corroborar con el backoffice');
          } : null,
        );
      },
    );
  }
}
