import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerficationcodeView extends StatelessWidget {
  const VerficationcodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter Verification Code',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(height: 8),

            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Enter code that we have sent to your number ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffA1A8B0),
                    ),
                  ),
                  TextSpan(
                    text: '08528188****',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff101623),
                    ),
                  ),
                ],
              ),
             // textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),

            PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (_) {},
              keyboardType: TextInputType.number,
              enableActiveFill: true, 
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(16),
                fieldHeight: 64,
                fieldWidth: 64,
                activeColor: const Color(0xFFDD8560),
                inactiveColor: Colors.grey[300],
                selectedColor: const Color(0xFFDD8560),
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                selectedFillColor: Colors.white,
              ),
            ),            const SizedBox(height: 32),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFFDD8560),
                fixedSize: const Size(326, 65),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              child: const Text(
                'Verify',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn’t receive the code?",
                  style: TextStyle(color: Color(0xff717784)),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Resend",
                    style: TextStyle(color: Color(0xFFDD8560)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
