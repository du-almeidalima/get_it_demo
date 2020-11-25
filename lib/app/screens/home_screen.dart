import 'package:flutter/material.dart';
import 'package:get_it_demo/app/data/model/meme.dart';
import 'package:get_it_demo/app/widgets/meme_card.dart';
import 'package:get_it_demo/domain/meme.domain.dart';
import 'package:get_it_demo/locator.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  Meme _displayedMeme;

  void _onNextMemeHandler() async {
    // == PASSO 3: Pegar uma referência de uma dependência pelo seu Type ==
    // Nesse caso pegando o que seria um caso de uso.
    final fetchedMeme = await locator.get<MemeDomain>().getNextMeme();

    // == PASSO 4: Chamar setState para atualizar a UI ==
    // GetIt não é uma ferramenta de gerenciamento de estado, que nem o provider, então
    // ele não atualiza o state automaticamente. mas ele pode ser usado em conjunto com
    // uma ferramenta de gerenciamento de estado para isso, como o provider mesmo.
    setState(() {
      this._displayedMeme = fetchedMeme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: this._displayedMeme != null
              ? SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MemeCard(this._displayedMeme),
                  ),
                )
              : Center(
                  child: const Text(
                    "Load a Meme!",
                    style: const TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.skip_next),
          onPressed: this._onNextMemeHandler,
        ),
      ),
    );
  }
}
