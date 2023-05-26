import 'package:coffee_app/mock/goods_category.dart';
import 'package:dart_mock/dart_mock.dart' as mock;
import 'dart:math';


class MockGoods {
  final int categoryId;
  final String characteristic;
  final int originalPrice;
  final String name;
  final String pic;

  const MockGoods({
    this.categoryId,
    this.characteristic,
    this.originalPrice,
    this.name,
    this.pic,
  });

  static List<MockGoods> _data = [];

  static data() {
    var category = MockGoodsCategory.data();
    Random rand = Random();
    final List coffee = ['生椰拿铁', '冰吸生椰拿铁', '夏日青提拿铁','茉莉花拿铁','标准美式','杏花拿铁'];
    final List des = ['花香升级', '白芽花兰茶韵', '甄选IIAC金奖配方','清爽回归，回味滋味','清凉释放，一口瞬间清醒','0乳糖，售量突破3亿杯'];
    if (_data.isEmpty) {
      category.forEach((element) {
        var categoryId = category.indexOf(element);
        List.generate(mock.integer(min: 1, max: 9), (index) {
          _data.add(
            MockGoods(
                categoryId: categoryId,
                characteristic: des[rand.nextInt(6)],
                originalPrice: mock.integer(min: 9, max: 20),
                name: coffee[rand.nextInt(6)],
                pic:
                    'lib/assets/images/coffee/${mock.integer(min: 1, max: 10)}.jpg'),
          );
        });
      });
    }

    return _data;
  }
}
