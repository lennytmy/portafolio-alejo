#!/bin/bash

# Instala Flutter (si no está)
if ! command -v flutter &> /dev/null
then
  git clone https://github.com/flutter/flutter.git --depth 1
  export PATH="$PWD/flutter/bin:$PATH"
fi

flutter config --enable-web
flutter pub get
flutter build web