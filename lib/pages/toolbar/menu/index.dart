import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/custom_swiper/index.dart';
import '../../../components/goods_detail/index.dart';
import '../../../mock/goods_category.dart';
import '../../../mock/goods_list.dart';
import 'goods_list_row.dart';
import 'widgets/classify_desc.dart';

class Menu extends StatefulWidget {
  static _MenuState _menuState;

  getAppBar() => _menuState.createAppBar();

  Menu() {
    _menuState = _MenuState();
  }

  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  double _nestedScrollOffet = 0;

  final ScrollController _nestedScrollController = new ScrollController();

  Map<String, dynamic> categoryCombineGoods = {};

  final List actives = ['满50减20', '充2赠1', '买2送1'];

  List<Widget> goodsListWidgets = [];
  List<MockGoodsCategory> category = MockGoodsCategory.data();

  AppBar createAppBar() {
    return null;
  }

  @override
  void initState() {
    _nestedScrollController.addListener(() {
      setState(() {
        _nestedScrollOffet = _nestedScrollController.offset;
      });
    });

    Future.delayed(Duration.zero, () async {
      _init(context);
    });

    super.initState();
  }

  _init(BuildContext context) async {
    // G.loading.show(context);

    List<MockGoods> goods = MockGoods.data();

    setState(() {
      category = MockGoodsCategory.data();
    });

    _updateGoodsListWidgets();

    // G.loading.hide(context);
  }

  void _updateGoodsListWidgets() {
    List<Widget> goodsListWidgetsTemp = [];

    var selectedCategory = category[_selectedIndex];
    var selectedGoodsList = MockGoods.data()
        .where((goods) => goods.categoryId == _selectedIndex)
        .toList();

    Random rand = Random(); // 随机数

    // 商品列表 每类商品 标题  eg: 人气top
    goodsListWidgetsTemp.add(ClassifyDesc(selectedCategory.name,
        desc: selectedCategory.desc));

    selectedGoodsList.forEach((goodsItem) {
      var goodsId = MockGoods.data().indexOf(goodsItem);
      // 商品列表 商品
      goodsListWidgetsTemp.add(
        GoodsListRow(
          // 点击添加按钮弹出dialog
          onPress: (BuildContext context) {
            /// 弹出商品详情  /widgets/goods_detail
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return GoodsDetailDialog(
                  id: goodsId,
                );
              },
            );
          },
          data: goodsItem,
          border: !(goodsId >= selectedGoodsList.length - 1),
          activeDesc: actives[rand.nextInt(3)],
        ),
      );
    });

    setState(() {
      goodsListWidgets = goodsListWidgetsTemp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 186,
            pinned: true,
            floating: false,
            elevation: 0,
            title: Text(
              '选择咖啡和小食',
              style: TextStyle(
                  color: Color.fromRGBO(56, 56, 56, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                child: Container(
                  margin: EdgeInsets.only(top: 56),
                  child: InkWell(
                    child: Opacity(
                      opacity: 1,
                      child: CustomSwiper([
                        'lib/assets/images/menu/swiper1.jpg',
                        'lib/assets/images/menu/swiper2.png',
                      ], height: 130),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
          )
        ];
      },
      body: Container(
        child: Row(
          children: [
            Container(
              width: 90,
              color: Color.fromRGBO(248, 248, 248, 1),
              child: Column(
                children: category.map((item) {
                  var index = category.indexOf(item);
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                        _updateGoodsListWidgets();
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 44,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: _selectedIndex == index
                                ? Color.fromRGBO(242, 242, 242, 1)
                                : Colors.transparent,
                            width: 1,
                          ),
                        ),
                        color: Color(0xffffff)
                            .withOpacity(_selectedIndex == index ? 1.0 : 0.0),
                      ),
                      child: Text(item.name),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              width: Get.width - 90,
              child: NotificationListener(
                onNotification: (ScrollNotification scrollInfo) {
                  return null;
                },
                child: NestedScrollView(
                  controller: _nestedScrollController,
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverToBoxAdapter(

                      ),
                    ];
                  },
                  body: ListView(
                    padding: EdgeInsets.zero,
                    children: goodsListWidgets,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}