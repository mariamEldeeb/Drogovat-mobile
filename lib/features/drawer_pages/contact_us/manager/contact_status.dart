abstract class ContactStates {}

class ContactInitialState extends ContactStates {}

class SendEmailSuccessState extends ContactStates {}

class SendEmailErrorState extends ContactStates {
  final String errorMesg;

  SendEmailErrorState(this.errorMesg);
}
