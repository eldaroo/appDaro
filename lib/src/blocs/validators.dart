import 'package:flutter/material.dart';
import 'dart:async';

class Validators{

  final validateEmail = StreamTransformer<String,String>.fromHandlers(
    handleData: (email,sink){
      if (email.contains('@')){
        sink.add(email);
      }else{
        sink.addError('ingrese un Email valido');
      }
    }
  );

      final validatePassword = StreamTransformer<String,String>.fromHandlers(
        handleData: (password,sink){
          if(password.length >4) {
            sink.add(password);
          }else{
            sink.addError('la password debe tener al menos 4 caracteres');
          }
        }
      );
}