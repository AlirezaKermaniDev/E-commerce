<h1 align="center">
  <br>
  <a><img src="assets/images/logo.png" alt="Kicks" width="200"></a>
  <br>
  Kicks
  <br>
</h1>

<h4 align="center">Ultimate Flutter UI Kit for your E-Commerce business.</h4>

<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#structure">Structure</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#credits">Credits</a> •
  <a href="#license">License</a>
</p>

<p align="center">
  <img  src="cover.png" alt="Kicks" width="900">
</p>

## Key Features

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

  Each widget folder contains a widget file and a layer folder with `phone`, `tablet`, and `web` files, each containing responsive code for the respective device.

       ├── home_page
       │   ├── widgets
       │   │   ├── accesories_widget
       │   │   │   ├── layouts
       │   │   │   │   ├── phone.dart
       │   │   │   │   ├── tablet.dart
       │   │   │   │   └── web.dart
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
