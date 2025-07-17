<<<<<<< HEAD
# flutter_application_5

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
=======
# 🛍️ Shop-App

A Flutter app showcasing clothing products with cart functionality and localization support (Arabic/English).

---

## ✨ Features

- 🛍️ View a list of clothing products (grid and list views).
- ➕ Add products to the cart with a red badge counter.
- 🌍 Multilingual support using [easy_localization] — Arabic 🇪🇬 and English 🇺🇸.
- 📱 Responsive design for mobile.
- ✅ Form validation for signup (name, email, password).
- 💬 Snackbar feedback when adding to cart.
- 📦 Offers section and featured products slider.

---

## 📁 Project Structure

lib/
├── Widgets/ # عناصر واجهة مستخدم قابلة لإعادة الاستخدام
│ ├── TextButtonWidget.dart # زر مخصص قابل للتخصيص
│ ├── textfiledwidget.dart # حقل إدخال مخصص للنصوص
│ ├── productwidget.dart # واجهة عرض المنتجات
│ └── appbar.dart # AppBar مخصص مع زر تغيير اللغة
│
├── models/
│ └── gridviewmodel.dart # نموذج بيانات لعنصر في GridView
│
├── screens/
│ ├── Card.dart # شاشة عرض سلة الشراء
│ ├── HomePage.dart # الصفحة الرئيسية
│ ├── Login.dart # صفحة تسجيل الدخول
│ ├── Product.dart # صفحة عرض المنتجات
│ └── Signup.dart # صفحة إنشاء الحساب
│
├── main.dart # نقطة الدخول للتطبيق + EasyLocalization

assets/
└── translations/
├── en.json # الترجمة الإنجليزية
└── ar.json # الترجمة العربية


---

## 🔧 Technologies Used

- Flutter SDK
- Dart
- Easy Localization
- Material Design
- setState for state management

---

## 🚀 Getting Started

```bash
git clone https://github.com/ebrahimhammad1/Shop-App.git
cd shop-app
flutter pub get
flutter pub add easy_localization
flutter run
Make sure to wrap your main.dart with EasyLocalization, and declare translation assets in pubspec.yaml.

🌍 Localization (Arabic & English)
This app supports both Arabic 🇸🇦 and English 🇺🇸 using Easy Localization.

How it works:
Translations are stored in:

assets/translations/en.json

assets/translations/ar.json

Language toggle button available on the top AppBar.
Text('welcome'.tr())
// en.json
{
  "welcome": "Welcome"
}
// ar.json
{
  "welcome": "مرحبًا"
}

flutter:
  assets:
    - assets/translations/

🔒 License
This project is licensed for educational/demo purposes only.
Do not reuse or redistribute without permission.

This Flutter application was developed as part of a summer internship provided by Sprints in collaboration with Microsoft.

👨‍💻 Author
Developed by Ibrahim Hammad
>>>>>>> 8e5587ac412411d7a6a4cab75a754f9b4ae9c817
