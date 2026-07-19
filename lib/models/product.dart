import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final String category;
  final double price;
  final String imagePath;
  final double rating;
  final int sales;
  final String description;
  final Color color;

  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.imagePath,
    required this.rating,
    required this.sales,
    required this.description,
    required this.color,
  });
}

const List<String> categories = [
  '全部',
  '手机',
  '电脑',
  '耳机',
  '相机',
  '配件',
];

const List<Product> dummyProducts = [
  Product(
    id: '1',
    name: '无线蓝牙耳机',
    category: '耳机',
    price: 129.90,
    imagePath: 'assets/images/headphones.png',
    rating: 4.8,
    sales: 1250,
    description: '支持蓝牙连接、降噪和长时间续航。',
    color: Color.fromARGB(255, 0, 253, 248),
  ),
  Product(
    id: '2',
    name: '机械键盘',
    category: '配件',
    price: 239.00,
    imagePath: 'assets/images/keyboard.svg',
    rating: 4.7,
    sales: 842,
    description: '适合办公和游戏使用的机械键盘。',
    color: Color(0xFFF3E5F5),
  ),
  Product(
    id: '3',
    name: '智能手机',
    category: '手机',
    price: 1899.00,
    imagePath: 'assets/images/phone.png',
    rating: 4.9,
    sales: 2300,
    description: '高性能处理器、大容量电池和高清摄像头。',
    color: Color(0xFFE8F5E9),
  ),
  Product(
    id: '4',
    name: '轻薄笔记本电脑',
    category: '电脑',
    price: 3299.00,
    imagePath: 'assets/images/laptop.png',
    rating: 4.6,
    sales: 563,
    description: '适合学习、办公和编程开发。',
    color: Color(0xFFFFF3E0),
  ),
  Product(
    id: '5',
    name: '数码相机',
    category: '相机',
    price: 2699.00,
    imagePath: 'assets/images/camera.png',
    rating: 4.8,
    sales: 327,
    description: '支持高清照片和视频拍摄。',
    color: Color(0xFFFFEBEE),
  ),
  Product(
    id: '6',
    name: '无线鼠标',
    category: '配件',
    price: 79.90,
    imagePath: 'assets/images/mouse.svg',
    rating: 4.5,
    sales: 1562,
    description: '轻便静音，适合办公和日常使用。',
    color: Color(0xFFE0F7FA),
  ),
  Product(
    id: '7',
    name: '头戴式降噪耳机',
    category: '耳机',
    price: 399.00,
    imagePath: 'assets/images/headphones_2.png',
    rating: 4.7,
    sales: 706,
    description: '提供主动降噪和沉浸式音乐体验。',
    color: Color(0xFFFCE4EC),
  ),
  Product(
    id: '8',
    name: '智能手表',
    category: '配件',
    price: 459.00,
    imagePath: 'assets/images/watch.png',
    rating: 4.6,
    sales: 992,
    description: '支持运动记录、消息提醒和健康监测。',
    color: Color(0xFFF1F8E9),
  ),
];