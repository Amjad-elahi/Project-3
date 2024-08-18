import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../verbal_skills_screen.dart';
import 'lock_container.dart';

class CompleteContainer extends StatelessWidget {
  final double value;
  const CompleteContainer({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  InkWell(
                    child: Container(
                      width: 179,
                      height: 227,
                      decoration: BoxDecoration(
                        color: const Color(0xffC4C4C4).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      margin: const EdgeInsets.only(left: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Unit 1", style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 24, color: Colors.black),)),
                          const Padding(padding: EdgeInsets.only(top: 10,)),
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Image.asset('assets/home_screen_icons/crown.png', width: 100, height: 100, alignment: const Alignment(-1, 1),),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topRight: Radius.circular(30)
                                    ),
                                    child: Container(
                                      width: 120,
                                      height: 14,
                                      color: const Color(0xffC4C4C4),
                                      child: LinearProgressIndicator(
                                        value: value,
                                        valueColor: const AlwaysStoppedAnimation<Color>(Color(0xffECC055)),
                                        backgroundColor: const Color(0xffC4C4C4),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topRight: Radius.circular(30)
                                        ),
                                      ),
                                    ),
                                  ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return const VerbalSkillsScreen();
                      }));
                    },
                  ),
                  const LockContainer(),
                ],
              );
  }
}