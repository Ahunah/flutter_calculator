# 🎨 Pastel Modern Calculator

A clean, aesthetic, and functional calculator app built using **Flutter**. This project uses a unique purple-toned color palette and a modern flat design to provide a pleasant user experience.

## 🌈 Color Palette

This project uses a custom-coded color scheme directly in the Dart file:

* **Background:** `Color.fromARGB(255, 188, 152, 203)` (Soft Lavender)
* **Buttons:** `Color.fromARGB(255, 226, 194, 221)` (Pastel Pink)
* **Operators:** `Color.fromARGB(255, 110, 78, 186)` (Deep Purple)
* **Equals:** `Color.fromARGB(255, 81, 197, 85)` (Green)
* **Clear:** `Color.fromARGB(255, 245, 70, 70)` (Red)

---

## Screen shot 

![Uploading calculator.png…]()


## ✨ Features

* **⚡ Real-time Calculation:** Instant updates as you type.
* **📱 Responsive Layout:** Uses `Expanded` and `Flexible` widgets to ensure it fits all screen sizes.
* **🧼 Clean Logic:** * Handles division by zero with an "Error" message.
* Automatically removes unnecessary decimal points (e.g., `5.0` becomes `5`).


* **🎨 Material Design:** Uses `ElevatedButton` with custom elevation and rounded borders.

---

## 🛠️ How to Use

1. **Install Flutter:** Ensure you have the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.
2. **Create Project:** ```bash
flutter create my_calculator
```

```


3. **Replace Code:** Copy the code from my script and paste it into your `lib/main.dart`.
4. **Run:**
```bash
flutter run

```



---

## 🧩 Code Breakdown

* **`StatefulWidget`**: Used to manage the dynamic `output` and mathematical state.
* **`switch` Statement**: Efficiently handles the four main operations: `+`, `-`, `×`, `÷`.
* **`buildButton` Method**: A reusable widget function that keeps the code clean and allows for easy color customization.

---

## 📸 Preview

| Display | Operator Logic | Result |
| --- | --- | --- |
| 70px Text | Color-Coded | Smart Formatting |
| ⚪ | 🟣 | 🟢 |

---

## 🤝 Contributing

Feel free to fork this project and add features like:

* [ ] Calculation History
* [ ] Percentage (%) Function
* [ ] Dark/Light Mode Toggle

---

## 📝 License

This project is open-source and available under the **MIT License**.

---

**Created with ❤️ using Flutter**


