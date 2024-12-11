import 'package:flutter/material.dart';
import 'package:management_state/models/plan.dart';
import 'package:management_state/provider/plan_provider.dart';
import 'package:management_state/views/plan_creator_screen.dart';

void main() {
  runApp(const MasterPlanApp());
}

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        title: 'Aplikasi State Management',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  const PlanCreatorScreen(),
      ),
    );
  }
}