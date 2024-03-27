<h1 align="center">
  <br>
  <a><img src="assets/images/logo.png" alt="Kicks" width="200"></a>
  <br>
  Kicks
  <br>
</h1>

<h4 align="center">Ultimate Flutter UI Kit for your E-Commerce business.</h4>

<p align="center">
  <a href="#detail">Detail</a> •
  <a href="#key-features">Key Features</a> •
  <a href="#samples">Samples</a> •
  <a href="#structure">Structure</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#credits">Credits</a> •
  <a href="#license">License</a>
</p>

<p align="center">
  <img  src="https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/Thumbnail.png?alt=media&token=3e13a203-1863-4d9d-8e97-4c6145885d0f" alt="Kicks" width="900">
</p>

## Detail

Kick is a nicely designed and developed Flutter E-commerce UI Kit.

Developed for web fully responsive but can run and build it on iOS or Android works prity well on those platforms too.

This is just a UI Kit which mean doesn't contains any API call or functionality but good news is that we already working on it and soon we will add back-end functionalities by using firebase and will convert it to Active E-ecommerce platform that user easily publish it by just puload they products on it.

Live preview link hosted by firebase: https://ecommerce-4f548.web.app/

<br>
<p align="center">
  <img  src="https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/preview-1.png?alt=media&token=9388c165-fbab-43ea-a4b9-9e232d416167" alt="Kicks" width="900">
</p>
<br>

## Key Features

- Flutter 3.x (Latest)
- Clean code and well-structured architecture.
- Fully Responsive (From small phones to Ultra-wide monitors)
- Amazing Animations
- User Reactive animation and design
- Light + Dark Mode
- Multi Language + RTL Supported
- BLoC State Management
- Cleanly Design
- Dependency injection
- Design patterns
- Separated widgets and reuseable and readable code

## Samples

<h4 align="center">Fully Responsive (From small phones to Ultra-wide monitors)</h4>
<br>
<p align="center">
  <img  src="https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/ecommerce-responsive.gif?alt=media&token=36b33589-336d-47da-bec7-e69ffef72cae" alt="Kicks" width="900">
</p>
<br>
<h4 align="center">Light + Dark Mode</h4>
<br>
<p align="center">
  <img  src="https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/dark-and-light-mode.gif?alt=media&token=2a760312-ad34-4bb8-9348-417796cda238" alt="Kicks" width="900">
</p>
<br>
<h4 align="center">Multi Language + RTL Supported</h4>
<br>
<p align="center">
  <img  src="https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/multy-language.gif?alt=media&token=1d800b16-c5c7-4816-a7a2-778869b74bde" alt="Kicks" width="900">
</p>
<br>
<h4 align="center">Amazing Animations</h4>
<br>
<p align="center">
  <img  src="https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/animations.gif?alt=media&token=8048ecd9-9139-4a61-ad39-e19e7ee46f64" alt="Kicks" width="900">
</p>
<br>
<br>
<h4 align="center">User Reactive animation</h4>
<br>
<p align="center">
  <img  src="https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/ecommerce-reactive-animation.gif?alt=media&token=837d18bb-be9b-490e-8f20-b6415c417cca" alt="Kicks" width="900">
</p>
<br>
<h4 align="center">Sticky Filters</h4>
<br>
<p align="center">
  <img  src="https://firebasestorage.googleapis.com/v0/b/ecommerce-4f548.appspot.com/o/sticky-filters.gif?alt=media&token=d1f131f9-4a72-4547-970f-485e742e38c0" alt="Kicks" width="900">
</p>
<br>

## Structure

The UI kit project structure follows a clean architecture pattern. Although it currently lacks a data layer, we plan to integrate Firebase in the future to expand it into an e-commerce project.

- #### Project Structure

       ├── lib
       │   ├── core                       (Where implemented theme,l10n,extensions,local_storage and etc)
       │   ├── data                       (Where we hold our temp data for now like products, etc)
       │   ├── domain                     (Where we hold our entities, repositoeres and usecases)
       │   ├── injection                  (Where we manage dependency injection files)
       │   ├── presentation               (Where we hold our pages and widgets)
       │   └── main.dart

- #### Presentation Structure

       ├── lib
       │   ├── presentation
       │   │   ├── bloc                                          (Here are our State management files with BLoC State management)
       │   │   │   ├── cart_bloc
       │   │   │   ├── product_detail_bloc
       │   │   │   ├── products_bloc
       │   │   │   ├── ...
       │   │   ├── view                                          (Here are our page folders)
       │   │   │   ├── home_page
       │   │   │   ├── product_detail_page
       │   │   │   ├── products_page
       │   │   │   ├── ...
       │   │   └── widgets                                       (Here are the global widgets that we use in everywhere the app)
       │   │       ├── drawer_widget
       │   │       ├── footer_widget
       │   │       ├── header_widget
       │   │       ├── ...
       │   └── main.dart

- #### Page Structure

  Each page folder includes a page file and a widgets folder containing all widgets used on that page.

       ├── view
       │   ├── home_page
       │   │   ├── widgets
       │   │   │   ├── accesories_widget
       │   │   │   ├── accessories_item_widget
       │   │   │   ├── arrow_button_widget
       │   │   │   ├── ...
       │   │   └── home_page.dart
       │   ├── product_detail_page
       │   │   ├── widgets
       │   │   │   ├── add_to_cart_button_widget
       │   │   │   ├── available_sizes_widget
       │   │   │   ├── alternative_product_item_widget
       │   │   │   ├── ...
       │   │   └── product_detail_page.dart
       │   ├── products_page
       │   │   ├── widgets
       │   │   │   ├── filter_items_button_widget
       │   │   │   ├── filter_items_widget
       │   │   │   ├── filters_widget
       │   │   │   ├── ...
       │   │   └── products_page.dart
       │   ├── ...

- #### Widget Structure

  Each widget folder contains a widget file and a layer folder with `phone`, `tablet`, and `web` files, each containing responsive code for the respective device. And a `utils` file that holds some global variables and functions that in use by layer files.

       ├── home_page
       │   ├── widgets
       │   │   ├── accesories_widget
       │   │   │   ├── layouts
       │   │   │   │   ├── phone.dart
       │   │   │   │   ├── tablet.dart
       │   │   │   │   └── web.dart
       │   │   │   ├── utils.dart
       │   │   │   └── accesories_widget.dart
       │   │   ├── ...
       │   └── home_page.dart

## How To Use

There are no requirements to run and build the project and it simply can be run by the command below :

```
flutter run -d chrome --web-renderer html
```

And build by command below :

```
flutter build web --web-renderer html
```

It can be run for iOS and Android too.

## Credits

This software uses the following packages:

- [Flutter](https://flutter.dev/)
- [Dark](https://dart.dev/)
- [Figma](https://www.figma.com/)
- [BLoC State management](https://bloclibrary.dev/)

## License

GNU General Public License (GPL)
