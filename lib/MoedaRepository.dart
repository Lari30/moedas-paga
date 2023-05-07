import 'package:moedas_paga/models/Moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
        icone: 'imagens/bitcoin.png',
        nome: 'Bitcoin',
        sigla: 'BTC',
        preco: 89290.96),
    Moeda(
        icone: 'imagens/cardano.png',
        nome: 'Cardano',
        sigla: 'ADA',
        preco: 1.36),
    Moeda(
        icone: 'imagens/ethereum.png',
        nome: 'ETH',
        sigla: 'ADA',
        preco: 6498.33),
    Moeda(
        icone: 'imagens/litcoin.png',
        nome: 'Litecoin',
        sigla: 'LTC',
        preco: 399.07),
    Moeda(
        icone: 'imagens/USDCoin.png',
        nome: 'USD Coin',
        sigla: 'USDC',
        preco: 5.31),
    Moeda(icone: 'imagens/XRP.png', nome: 'XRP', sigla: 'XRP', preco: 1.89),
  ];
}
