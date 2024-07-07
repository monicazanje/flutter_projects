import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/logint&reg/createacc2.dart';
import 'package:wallet_app/view/main/home.dart';

class Createacc extends StatefulWidget {
  const Createacc({super.key});
  @override
  State createState() => _CreateaccState();
}

class _CreateaccState extends State {
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode passfocus = FocusNode();
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(238, 233, 253, 1),
            ),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, right: 20),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                            size: 16,
                            color: Color.fromRGBO(87, 50, 191, 1),
                          ),
                        ),
                        Text(
                          "Back",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(87, 50, 191, 1),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Image.asset("assets/Group 4 (2).png"),
                        const Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50, bottom: 50),
                    child: Image.asset("assets/Group 9.png"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    "Enter your password",
                    style: GoogleFonts.sora(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Password",
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(31, 32, 41, 1),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color.fromARGB(255, 212, 212, 212),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: passController,
                    focusNode: passfocus,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: visible,
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(186, 194, 199, 1),
                      ),
                      errorBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            visible = !visible;
                          });
                        },
                        icon: Icon(visible
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showbottomsheet1();
                  },
                  child: Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Forgot your password?",
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(29, 98, 202, 1),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Home();
                  },
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 40, left: 20, right: 20),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(87, 50, 191, 1),
              ),
              child: Center(
                child: Text(
                  "Login",
                  style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showbottomsheet1() async {
    await showModalBottomSheet(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      builder: (context) {
        return Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: avoid_unnecessary_containers
                  Text(
                    "Forgot password?",
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Done",
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(29, 98, 202, 1),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Email",
                style: GoogleFonts.sora(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(31, 32, 41, 1),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15),
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: const Color.fromARGB(255, 212, 212, 212),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: passwordController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: visible,
                  decoration: const InputDecoration(
                    hintText: "e.g. email@example.com",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(186, 194, 199, 1),
                    ),
                    errorBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Home();
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(87, 50, 191, 1),
                  ),
                  child: Center(
                    child: Text(
                      "Send reset link",
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showmobilebottom();
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 40,
                  ),
                  child: Text(
                    "Use mobile instead",
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(29, 98, 202, 1),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Future<void> showmobilebottom() async {
    showModalBottomSheet(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        context: context,
        isDismissible: true,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Text(
                      "Forgot password?",
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Done",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(29, 98, 202, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Mobile number",
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(31, 32, 41, 1),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 50),
                  padding: const EdgeInsets.only(left: 15),
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color.fromARGB(255, 212, 212, 212),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/Jordan (JO).png"),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "+962",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(31, 32, 41, 1),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextField(
                          controller: emailController,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            hintText: '7X-XXXXXXX',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(186, 194, 199, 1),
                            ),
                            errorBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Home();
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(87, 50, 191, 1),
                    ),
                    child: Center(
                      child: Text(
                        "Send reset link",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Createaccsec();
                    }));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(
                      top: 20,
                      bottom: 40,
                    ),
                    child: Text(
                      "Use Email instead",
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(29, 98, 202, 1),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
