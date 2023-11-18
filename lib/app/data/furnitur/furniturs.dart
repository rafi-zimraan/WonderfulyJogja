class Furniture {
  String name;
  String imageAsset;
  int price;
  String description;
  String producer;
  num rating;

  Furniture({
    required this.name,
    required this.imageAsset,
    required this.price,
    required this.description,
    required this.producer,
    required this.rating,
  });
}

var furnitureList = [
  Furniture(
    name: 'Prambanan',
    imageAsset: 'lib/app/data/images/borobudur.jpg',
    price: 50,
    description:
        'Create a Prambanan-inspired home office: Batik-themed walls, sandstone tones, and golden touches for a touch of Javanese elegance.',
    producer: 'RAFI',
    rating: 5.5,
  ),
  Furniture(
    name: 'Bukit bintang',
    imageAsset: 'lib/app/data/images/bukitBintang.jpg',
    price: 673,
    description:
        'Infuse your living space with Bukit Bintang Jogja vibes using a slim, sturdy desk—perfect for any room size. Get tasks done while staying updated on the latest news. ',
    producer: 'RAFI',
    rating: 8.3,
  ),
  Furniture(
    name: 'Bukit Paralayang',
    imageAsset: 'lib/app/data/images/bukitParalayang.jpg',
    price: 768,
    description:
        "Flexi-shell chair, 3-click assembly, wood-infused ivory nude plastic—reminiscent of Parangtritis Beach's Paragliding Hill in Jogja.",
    producer: 'RAFI',
    rating: 9.2,
  ),
  Furniture(
    name: 'Kraton',
    imageAsset: 'lib/app/data/images/kraton.jpg',
    price: 30,
    description:
        "Embrace Kraton's elegance in your home office. Effortlessly blend style, comfort, and smart storage for a chic and organized space.",
    producer: 'RAFI',
    rating: 7.3,
  ),
  Furniture(
    name: 'Malioboro',
    imageAsset: 'lib/app/data/images/malioboro.jpg',
    price: 220,
    description:
        'Chairs that stack for space-saving convenience when not in use, offering comfortable seating with their contoured back. Akin to Malioboro, a renowned attraction in Yogyakarta, they combine functionality with comfort',
    producer: 'RAFI',
    rating: 4.2,
  ),
  Furniture(
    name: 'Taman sari',
    imageAsset: 'lib/app/data/images/tamanSari.jpg',
    price: 220,
    description:
        'Effortlessly integrated with its surroundings, Taman Sari captivates with its adjustable elements and ample natural light, promising an immersive and productive visit.',
    producer: 'RAFI',
    rating: 4.2,
  ),
  Furniture(
    name: 'Tebing Breksi',
    imageAsset: 'lib/app/data/images/tebingBreksi.jpg',
    price: 78,
    description:
        'Durable set for your cozy dining area, crafted from solid pine, perfect for gatherings and activities, mirroring the resilience of Tebing Breksi in Bantul/Imogiri.',
    producer: 'RAFI',
    rating: 3.3,
  ),
];
