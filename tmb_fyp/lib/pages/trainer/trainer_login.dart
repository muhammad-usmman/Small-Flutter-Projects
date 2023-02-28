import 'package:flutter/material.dart';
import 'package:tmb_fyp/pages/trainer/trainer_navbar.dart';

import '../../constants.dart';

class TrainerLogin extends StatefulWidget {
  const TrainerLogin({Key? key}) : super(key: key);

  @override
  State<TrainerLogin> createState() => _TrainerLoginState();
}

class _TrainerLoginState extends State<TrainerLogin> {

  bool _isObscure = true;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white,),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3.2,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                gaph10,
                const Icon(
                  Icons.fitness_center,
                  size: 70,
                ),
                gaph20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hi', style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold,)),
                    Text(' Trainer', style: Theme.of(context).textTheme.headline6),

                  ],
                ),
                Text('Log in to continue', style: Theme.of(context).textTheme.bodyText2),
                gaph10,

              ],
            ),
          ),


          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),

            child: Padding(
              padding: kpdh20,
              child: Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      gaph20,
                      TextFormField(
                        decoration: const InputDecoration(
                          border: const UnderlineInputBorder(),
                          labelText: ' Enter Name',
                        ),

                        controller: _nameController,
                        keyboardType: TextInputType.name,
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Enter Your Name';
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                      gaph20,
                      TextFormField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure ? Icons.visibility : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                        ),
                      ),

                      gaph20,
                      gaph20,

                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const TrainerNavBar()));
                          },
                          child: const Text('Login')
                      ),
                      gaph20,

                    ]
                ),
              ),
            ),
          ),

        ],
      ),


    );
  }
}