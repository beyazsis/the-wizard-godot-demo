# The Wizard (Durduruldu) (English translation below)

the-wizard-godot-demo

# Tuşlar

Nebula'ya (Karakter) klavyenizde ki ok tuşları ile yön verebilirsiniz.
"E" tuşu oyunda genel olarak bir şeyleri aktive etme veya kullanma tuşudur.
"Enter" ve "Space" tuşları ile dialogları geçebilirsiniz.
Sizden cevap vermeniz gerektiği zamanalrda sağ ve sol ok tuşları ile dialog kutusu üzerinde bulunan cevapları seçebilirsiniz.

# Ek Notlar
Aurora'nın odasına girip kutsanmış mum (Blessed candle) almayı unutmayın. Yatağın önünde ki üzerinde mumların olduğu şifonyerin önüne gelip "E" tuşu ile alabilirsiniz.

Undertale benzeri hikaye tabanlı bir rpg oyunudur The Wizard.
Oyunun genel doku çözünürlüğü 32x32 dir ancak ben 64x64 ve 128x128 gibi 32 nin katları olan boyutları da kullandım.
Oyunda ki tüm dokuları kendim çizdim Dialog dokuları dahildir. Dialog hazırlarken yardım aldığım şablonların orjinalleri dosyalar içindedir.
Kendi dialog sistemim ve şablonumu dialog klasörü içinde bulabilirsiniz. Dosyaları biilgisayarınıza inidirip godot'un proje yöneticisinden tüm dosyaları
içinde barındıran klasörü seçtikten sonra oyunu oynayabilirsiniz. Dokuları LibreSprite ve Pixeloroma kullanarak çizdim. Bu demoda 44 script ve yaklaşık 2000 satır kod kullanılmıştır.

*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

# The Wizard (Halted) (English)

the-wizard-godot-demo

# Key bindings:
 You can move Nebula with arrow keys.
 The key "E" is the activation key for something.
 Enter and Space key is skipping dialogs
 You can use left and right arrow keys for making "Yes-No" decisions.
 
 # Notes
 Don't forget to taking a blessed candle from Aurora. You can take a candle from the table in front of the bed using key of "E"

Undertale like rpg game project developed in Godot Game is 32x32 pixel but I also use 64x64, 128x128 pixel size textures. You can run this game by selecting games root file in Godot's project manager. Textures are created by me by using LibreSprite and Pixeloroma.

Its a demo.

Project is halted :(















# Anima

Anima is an addon for Godot that allows you to create rich animations easily.

## Introduction

![Anima](https://anima.ceceppa.me/anima.gif)

Creating rich animations can be a bit tedious, and Anima solves this problem for you. Allowing to run sequential, parallel and concurrent animations with few lines of code.
It has built-in about 89 animations and 33 easings, with the ability to easily add your own.
You can also add your own with a CSS inspired syntax.

### Table of Contents

- Installation
- Documentation & Demo
- Differences between Anima and Godot Tween
- Stay in Touch
- Contribution
- License
  
## Installation

This is a regular editor plugin. Copy the contents of addons/Anima into the same folder in your project, and activate it in your project settings.

## Documentation & Demo

Check out [documentation](https://anima.ceceppa.me) and [live examples](https://anima.ceceppa.me/demo).

## Differences between Anima and Godot Tween

|                                    | Anima                                                      | Tween                                 |
|---|---|---|
| Chaining                           | support for sequential, parallel and concurrent animations | possible but need to be done manually |
| Animate relative property          | yes                                                        | no                                    |
| Easing                             | 33 built-in, (it will be extended in 0.2)            | 10 and no support for custom ones     |
| Reverse animation                  | 0.2                                                        | no                                    |
| Change speed on fly                | 0.2                                                        | no                                    |
| Animation path (position only)     | 0.3                                                        | no                                    |
| Create and reuse custom animations | 89 built-in, more can be added programmatically            | possible but not as easy              |
| Animate elements in group          | yes (it will be extended in 0.2)                           | possible but need to manually animate each individual element|

## Stay in Touch

[Twitter](https://twitter.com/ceceppa)

## Contribution

Contributions are welcome and are accepted via pull requests.

## License

MIT

Copyright (c) 2021-present, Alessandro Senese (ceceppa)
