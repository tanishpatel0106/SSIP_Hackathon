import 'package:flutter/material.dart';

class EvaluateIdea extends StatelessWidget {
  const EvaluateIdea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Evaluate your idea',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
            children: [
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pellentesque semper lorem vitae volutpat. Aenean faucibus, sem eget porta venenatis, nulla dui consectetur orci, tempus ultricies nibh nisi sed urna. Etiam a odio non augue accumsan hendrerit. Nullam eget nibh gravida, aliquam leo at, feugiat erat. Etiam varius dapibus porttitor. Curabitur eleifend risus risus, eu faucibus mi mollis eget. Ut in ex quis lacus faucibus porttitor quis a nisi."
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pellentesque semper lorem vitae volutpat. Aenean faucibus, sem eget porta venenatis, nulla dui consectetur orci, tempus ultricies nibh nisi sed urna. Etiam a odio non augue accumsan hendrerit. Nullam eget nibh gravida, aliquam leo at, feugiat erat. Etiam varius dapibus porttitor. Curabitur eleifend risus risus, eu faucibus mi mollis eget. Ut in ex quis lacus faucibus porttitor quis a nisi."
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pellentesque semper lorem vitae volutpat. Aenean faucibus, sem eget porta venenatis, nulla dui consectetur orci, tempus ultricies nibh nisi sed urna. Etiam a odio non augue accumsan hendrerit. Nullam eget nibh gravida, aliquam leo at, feugiat erat. Etiam varius dapibus porttitor. Curabitur eleifend risus risus, eu faucibus mi mollis eget. Ut in ex quis lacus faucibus porttitor quis a nisi."
              ),
              Text(
                  "Okay, so this is how to evaluate startup ideas. And this is actually a new set of content that we've developed based on a lot of feedback that we saw from the last startup school and what we noticed is a lot of people's challenges. So, last year's curriculum actually had a lot of content that ended up being when we looked at the data for who's participating in startup school was like oh, this is much more advanced, it's much further along."
              ),
              Text(
                  "Okay, so this is how to evaluate startup ideas. And this is actually a new set of content that we've developed based on a lot of feedback that we saw from the last startup school and what we noticed is a lot of people's challenges. So, last year's curriculum actually had a lot of content that ended up being when we looked at the data for who's participating in startup school was like oh, this is much more advanced, it's much further along."
              ),
              Text(
                  "Okay, so this is how to evaluate startup ideas. And this is actually a new set of content that we've developed based on a lot of feedback that we saw from the last startup school and what we noticed is a lot of people's challenges. So, last year's curriculum actually had a lot of content that ended up being when we looked at the data for who's participating in startup school was like oh, this is much more advanced, it's much further along."
              ),
              SizedBox(
                height: 16.0,
              ),
              ElevatedButton(onPressed: (){}, child: Text('Next'))
            ],
          ),
      )
    );
  }
}
