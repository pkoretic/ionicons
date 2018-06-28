## QML Example for using Ionicons

To use in your project:

Import ionicons codepoint for qml:

```
import "ionicons.js" as Ionicons
```

Load font file using FontLoader:

```
FontLoader { source: "ionicons.ttf" }
```

Use:

```
Text { font.family: "Ionicons"; text: Ionicons.img.alert }
```

An example project can be opened by `ionicons.pro`. All logic is in main.qml.

