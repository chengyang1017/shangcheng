import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';

class DetailScreen extends StatefulWidget {
  final Product product;

  const DetailScreen({
    required this.product,
    super.key,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;

    // 根据商品背景颜色判断，上方文字应该使用深色还是浅色。
    final Brightness productColorBrightness =
        ThemeData.estimateBrightnessForColor(
      widget.product.color,
    );

    final Color topTextColor =
        productColorBrightness == Brightness.dark
            ? Colors.white
            : Colors.black87;

    return Scaffold(
      backgroundColor: widget.product.color,

      appBar: AppBar(
        title: const Text('详情页'),
        backgroundColor: widget.product.color,
        foregroundColor: topTextColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height - kToolbarHeight,
          child: Stack(
            children: [
              // 下方商品说明栏。
              Positioned(
                top: size.height * 0.30,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.only(
                    top: size.height * 0.18,
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    color: colorScheme.tertiary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('颜色'),
                              Container(
                                margin: EdgeInsets.only(top: 3, right: 6),
                                padding: EdgeInsets.all(2.5),
                                height: 24, 
                                width: 24,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.red)
                                ),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  )
                                )
                              )

                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),

              // 左上角的商品基本资料。
              Positioned(
                top: 24,
                left: 20,
                width: size.width * 0.42,
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.category,
                      style: TextStyle(
                        color: topTextColor.withValues(
                          alpha: 0.7,
                        ),
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      widget.product.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: topTextColor,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 18),

                    Text(
                      '价格',
                      style: TextStyle(
                        color: topTextColor.withValues(
                          alpha: 0.7,
                        ),
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      'RM ${widget.product.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: topTextColor,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // 商品图片。
              // 图片从上半区开始，但底部会压住下方说明栏。
              Positioned(
                top: size.height * 0.10,
                right: 12,
                width: size.width * 0.56,
                height: size.height * 0.32,
                child: Image.asset(
                  widget.product.imagePath,
                  fit: BoxFit.contain,
                  errorBuilder: (
                    context,
                    error,
                    stackTrace,
                  ) {
                    return Center(
                      child: Icon(
                        Icons.image_not_supported_outlined,
                        size: 60,
                        color: topTextColor,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}