# emscripten-imgui-cmake-template


In order to use emcmake it needs to be in your $PATH.

To do this you can run ```source /path/to/emsdk/emsdk_env.sh``` in your terminal.

```sh
emcmake cmake . -B cmake-build-emscripten
cmake --build cmake-build-emscripten
```

To test run ```python3 -m http.server --directory cmake-build-emscripten/```