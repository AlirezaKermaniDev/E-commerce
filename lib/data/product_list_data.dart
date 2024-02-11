import 'package:ecommerce_app/domain/entities/category_entity/category_entity.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';

final List<ProductEntity> productListData = <ProductEntity>[
  ProductEntity(
    title: "Nike Streetwear",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe11.png?alt=media",
    category: const CategoryEntity(
      title: "Running Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Nike",
        ),
      ),
    ),
    price: 350,
    rate: 4,
    availableSizes: [7, 7.5, 9, 9.5, 10],
    colors: [
      0xffFF3C78,
      0xff02BE83,
    ],
    materials: ["Leather", "Textile"],
    genders: [0, 1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 20),
    ),
  ),
  ProductEntity(
    title: "K-SWISS Streetwear",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe1.png?alt=media",
    category: const CategoryEntity(
      title: "Running Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "K-SWISS",
        ),
      ),
    ),
    price: 160,
    rate: 4.4,
    availableSizes: [6, 9, 9.5, 10, 10.5],
    colors: [
      0xffFF3C78,
      0xff315BFF,
    ],
    materials: ["Suede", "Textile"],
    genders: [0],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 8),
    ),
  ),
  ProductEntity(
    title: "Adidas Gazele",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe2.png?alt=media",
    category: const CategoryEntity(
      title: "Running Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Adidas",
        ),
      ),
    ),
    price: 260,
    rate: 3,
    availableSizes: [6, 7, 9, 10, 10.5],
    colors: [
      0xffFF3C78,
      0xff315BFF,
      0xff02BE83,
    ],
    materials: ["Suede", "Fibre"],
    genders: [0, 1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 25),
    ),
  ),
  ProductEntity(
    title: "Adidas Converse",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe3.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Adidas",
        ),
      ),
    ),
    price: 210,
    rate: 4.7,
    availableSizes: [6, 7, 7.5, 9, 10, 10.5],
    colors: [
      0xff315BFF,
      0xff02BE83,
    ],
    materials: ["Leather", "Fibre"],
    genders: [0],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 15),
    ),
  ),
  ProductEntity(
    title: "Reebok Streetwear",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe4.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Reebok",
        ),
      ),
    ),
    price: 400,
    rate: 4.5,
    availableSizes: [6, 7, 7.5, 9, 9.5],
    colors: [
      0xff315BFF,
      0xff02BE83,
      0xffFF3C78,
    ],
    materials: ["Leather", "Suede"],
    genders: [0, 1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 16),
    ),
  ),
  ProductEntity(
    title: "Puma Streetwear",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe5.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Puma",
        ),
      ),
    ),
    price: 205,
    rate: 3.8,
    availableSizes: [7, 7.5, 9, 9.5, 10],
    colors: [
      0xff02BE83,
      0xffFF3C78,
    ],
    materials: ["Textile", "Suede"],
    genders: [0, 1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 23),
    ),
  ),
  ProductEntity(
    title: "Nike Converse",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe6.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Nike",
        ),
      ),
    ),
    price: 350,
    rate: 3.8,
    availableSizes: [7, 9, 9.5, 10],
    colors: [
      0xff02BE83,
      0xff315BFF,
    ],
    materials: ["Textile", "Fibre"],
    genders: [0, 1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 14),
    ),
  ),
  ProductEntity(
    title: "Nike Streetwear",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe7.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Nike",
        ),
      ),
    ),
    price: 220,
    rate: 4.6,
    availableSizes: [7, 9, 9.5, 10],
    colors: [
      0xff02BE83,
      0xff315BFF,
    ],
    materials: ["Textile", "Leather"],
    genders: [0, 1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 12),
    ),
  ),
  ProductEntity(
    title: "Puma Streetwear",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe8.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Puma",
        ),
      ),
    ),
    price: 323,
    rate: 4,
    availableSizes: [6, 7, 9, 9.5, 10],
    colors: [
      0xff315BFF,
      0xff02BE83,
      0xffFF3C78,
    ],
    materials: ["Suede", "Leather"],
    genders: [0, 1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 10),
    ),
  ),
  ProductEntity(
    title: "New Balance Streetwear",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe9.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "New Balance",
        ),
      ),
    ),
    price: 420,
    rate: 4,
    availableSizes: [6, 7, 7.5, 10, 10.5],
    colors: [
      0xff02BE83,
      0xffFF3C78,
    ],
    materials: ["Suede", "Fibre"],
    genders: [0, 1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 8),
    ),
  ),
  ProductEntity(
    title: "Nike c 280",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe10.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Air Max",
        category: CategoryEntity(
          title: "Nike",
        ),
      ),
    ),
    price: 320,
    rate: 4,
    availableSizes: [6, 7, 7.5, 10, 10.5],
    colors: [
      0xff315BFF,
      0xffFF3C78,
    ],
    materials: ["Textile", "Fibre"],
    genders: [0, 1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 16),
    ),
  ),
  ProductEntity(
    title: "New Balance Streetwear",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe12.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "New Balance",
        ),
      ),
    ),
    price: 220,
    rate: 4.6,
    availableSizes: [6, 7, 7.5, 9, 10],
    colors: [
      0xff315BFF,
      0xffFF3C78,
    ],
    materials: ["Textile", "Fibre"],
    genders: [0, 1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 14),
    ),
  ),
  ProductEntity(
    title: "Nike Converse",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe13.png?alt=media",
    category: const CategoryEntity(
      title: "Running Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Nike",
        ),
      ),
    ),
    price: 315,
    rate: 4.3,
    availableSizes: [6, 7.5, 9, 10, 10.5],
    colors: [
      0xff315BFF,
      0xff02BE83,
    ],
    materials: ["Suede", "Fibre"],
    genders: [1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 13),
    ),
  ),
  ProductEntity(
    title: "Nike Converse",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe14.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Nike",
        ),
      ),
    ),
    price: 250,
    rate: 4.2,
    availableSizes: [6, 7, 7.5, 9, 9.5, 10.5],
    colors: [
      0xff315BFF,
      0xff02BE83,
    ],
    materials: ["Suede", "Fibre"],
    genders: [0, 1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 6),
    ),
  ),
  ProductEntity(
    title: "Nike Converse",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe15.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Nike",
        ),
      ),
    ),
    price: 430,
    rate: 4.6,
    availableSizes: [7.5, 9, 9.5, 10.5],
    colors: [
      0xff315BFF,
      0xff02BE83,
    ],
    materials: ["Suede", "Leather"],
    genders: [0, 1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 10),
    ),
  ),
  ProductEntity(
    title: "Nike Streetwear",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe16.png?alt=media",
    category: const CategoryEntity(
      title: "Running Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Nike",
        ),
      ),
    ),
    price: 230,
    rate: 4.6,
    availableSizes: [7, 7.5, 9, 9.5, 10.5],
    colors: [
      0xffFF3C78,
      0xff02BE83,
    ],
    materials: ["Textile", "Leather"],
    genders: [1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 11),
    ),
  ),
  ProductEntity(
    title: "All Star Streetwear",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe17.png?alt=media",
    category: const CategoryEntity(
      title: "Running Shoes",
      category: CategoryEntity(
        title: "All Star",
        category: CategoryEntity(
          title: "Nike",
        ),
      ),
    ),
    price: 360,
    rate: 4.6,
    availableSizes: [6, 7, 7.5, 9, 9.5, 10.5],
    colors: [
      0xffFF3C78,
      0xff02BE83,
    ],
    materials: ["Textile", "Leather"],
    genders: [0, 1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 17),
    ),
  ),
  ProductEntity(
    title: "All Star Converse",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe18.png?alt=media",
    category: const CategoryEntity(
      title: "Running Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Nike",
        ),
      ),
    ),
    price: 250,
    rate: 4.1,
    availableSizes: [6, 9, 9.5, 10, 10.5],
    colors: [
      0xffFF3C78,
      0xff02BE83,
    ],
    materials: ["Textile", "Leather"],
    genders: [1, 0],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 22),
    ),
  ),
  ProductEntity(
    title: "All Star Converse",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe19.png?alt=media",
    category: const CategoryEntity(
      title: "Running Shoes",
      category: CategoryEntity(
        title: "All Star",
        category: CategoryEntity(
          title: "Nike",
        ),
      ),
    ),
    price: 360,
    rate: 4.3,
    availableSizes: [6, 7, 7.5, 9, 9.5, 10],
    colors: [
      0xffFF3C78,
      0xff02BE83,
    ],
    materials: ["Fibre", "Leather"],
    genders: [1, 0],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 11),
    ),
  ),
  ProductEntity(
    title: "Jordan Orginal",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe20.png?alt=media",
    category: const CategoryEntity(
      title: "Running Shoes",
      category: CategoryEntity(
        title: "Orginal",
        category: CategoryEntity(
          title: "Jordan",
        ),
      ),
    ),
    price: 500,
    rate: 4.5,
    availableSizes: [6, 7, 7.5, 9, 9.5, 10],
    colors: [
      0xffFF3C78,
      0xff02BE83,
    ],
    materials: ["Fibre", "Leather"],
    genders: [1, 0],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 7),
    ),
  ),
  ProductEntity(
    title: "Nike Air Max 350",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe21.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Air Max",
        category: CategoryEntity(
          title: "Nike",
        ),
      ),
    ),
    price: 340,
    rate: 4.2,
    availableSizes: [6, 7, 9, 9.5, 10],
    colors: [
      0xffFF3C78,
      0xff02BE83,
    ],
    materials: ["Fibre", "Leather"],
    genders: [1, 0],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 9),
    ),
  ),
  ProductEntity(
    title: "Fila Walking Shoe",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe22.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Fila",
        ),
      ),
    ),
    price: 340,
    rate: 3.6,
    availableSizes: [6, 7, 9, 9.5, 10],
    colors: [
      0xffFF3C78,
      0xff02BE83,
    ],
    materials: ["Fibre", "Leather"],
    genders: [1],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 14),
    ),
  ),
  ProductEntity(
    title: "Nike Air Max 360",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe23.png?alt=media",
    category: const CategoryEntity(
      title: "Walking Shoes",
      category: CategoryEntity(
        title: "Sneakers",
        category: CategoryEntity(
          title: "Nike",
        ),
      ),
    ),
    price: 420,
    rate: 4.5,
    availableSizes: [6, 7, 9, 9.5, 10, 10.5],
    colors: [
      0xffFF3C78,
      0xff02BE83,
    ],
    materials: ["Textile"],
    genders: [1, 0],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 5),
    ),
  ),
  ProductEntity(
    title: "Adidas Orginal",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/shoe24.png?alt=media",
    category: const CategoryEntity(
      title: "Running Shoes",
      category: CategoryEntity(
        title: "Orginal",
        category: CategoryEntity(
          title: "Adidas",
        ),
      ),
    ),
    price: 420,
    rate: 4.7,
    availableSizes: [6, 7, 7.5, 9, 9.5, 10, 10.5],
    colors: [
      0xffFF3C78,
      0xff02BE83,
    ],
    materials: ["Suede"],
    genders: [1, 0],
    deliveryAndReturns:
        "Later, however (in the beginning of the twentieth century), it was found that light did indeed sometimes behave like a particle.",
    description:
        "They agree with reality to a high degree of accuracy as tested in experiment after experiment.",
    createdAt: DateTime.now().subtract(
      const Duration(days: 7),
    ),
  ),
];
