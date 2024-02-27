import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:all_app/Screens/grocery/viewmodels/view_model_otp_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../data/models/request/login/VerifyOtpRequestModel.dart';
class OtpScreen extends StatefulWidget {
  final String mobileNo;
  final String? userId;
  final String? userIdDigit;

  OtpScreen({Key? key, required this.mobileNo, required this.userId, this.userIdDigit});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  OtpViewModel otpViewModel = OtpViewModel();
  TextEditingController pinputController = TextEditingController();
  String? otp = '';
  var code = '';
  bool isLoading = false; // Add isLoading state

  @override
  void initState() {
    otpViewModel.userIdDigit = widget.userIdDigit;
    otpViewModel.mobile = widget.mobileNo;
    print("userid digit Otp screen=============== ${widget.userIdDigit}");
    super.initState();
  }

  void verifyOtp() {
    setState(() {
      isLoading = true; // Set isLoading to true when verifying OTP
    });

    String enteredOtp = pinputController.text.toString();
    final verifyOtpReqModel =
    VerifyOtpRequestModel(userId: widget.userId, otp: enteredOtp);

    otpViewModel.fetchVerifyOtpPageData(
      verifyOtpReqModel,
      context,
    ).then((_) {
      setState(() {
        isLoading = false; // Set isLoading to false when verification is complete
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.lightGreen, // Make this container transparent
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Text(
                    'OTP Verification',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 32),
                  )
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "We have sent OTP to Mobile \nNumber +91-${widget.mobileNo ?? ''}",
                      style: const TextStyle(
                          color: Colors.black87,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                    child: Text(
                      'Enter OTP',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Pinput(
                    controller: pinputController,
                    length: 6,
                    showCursor: true,
                    onChanged: (value) {
                      code = value;
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(24),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        stops: [0.4, 0.8],
                        colors: [Colors.green, Colors.green],
                      ),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () async {
                          verifyOtp();
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.transparent, // Text color
                        ),
                        child: isLoading // Show progress indicator if isLoading is true
                            ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        )
                            : const Text(
                          'VERIFY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                child: Row(
                  children: [
                    Text(
                      "Did'nt receve the verification OTP?",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        //    fontWeight: FontWeight.w400
                      ),
                    ),
                    Text(
                      "Resend OTP",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        // fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
