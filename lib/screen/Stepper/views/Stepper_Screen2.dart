import 'package:advflutter_ch1/utlis/global/Stepper.dart';
import 'package:flutter/material.dart';

class Stepper_Screen2 extends StatefulWidget {
  const Stepper_Screen2({super.key});

  @override
  State<Stepper_Screen2> createState() => _Stepper_Screen2State();
}

class _Stepper_Screen2State extends State<Stepper_Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6750a4),
        title: Center(child: Text('Flutter Stepper Demo',style: TextStyle(color: Colors.white),)),
      ),
      body: Stepper(
        type: StepperType.horizontal,
          currentStep: Stepperglobalvalues.stepperindex,
          connectorColor: MaterialStatePropertyAll(
              Color(0xff6750a4)
          ),
          onStepContinue: () {
            setState(() {
              if(Stepperglobalvalues.stepperindex==Stepperglobalvalues.stepperstop)
              {
                Stepperglobalvalues.stepperindex=2;
              }
              else{
                Stepperglobalvalues.stepperindex++;
              }
            });

          },
          onStepCancel: () {
            setState(() {
              if(Stepperglobalvalues.stepperindex==2)
              {

                Stepperglobalvalues.stepperindex--;
              }
              else{

                Stepperglobalvalues.stepperindex=0;
              }
            });
          },
          stepIconBuilder: (stepIndex, stepState) {
            return CircleAvatar(
              backgroundColor: Color(0xff6750a4),
              child:Icon(Icons.done,size: 20,color: Colors.white,),
            );
          },

          steps:
          [
            Step(title: Text('Account'), content: TextField(decoration: InputDecoration(label: Text('Enter Your Account Number')),)),
            Step(title: Text('Address'), content: TextField(decoration: InputDecoration(label: Text('Enter Your Address')),)),
            Step(title: Text('Mobile Number'), content: TextField(decoration: InputDecoration(label: Text('Enter Your Mobile Number')),)),
          ]),
    );
  }
}
