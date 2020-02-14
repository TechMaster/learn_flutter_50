# Earth Hour app

Hưởng ứng ngày Trái Đất Xanh

Các bước thực hành:

1. Bổ xung BulbOff.jpg và BulbOn.jpg vào thư mục images
2. Thử thay đổi Image(image: AssetImage('images/BulbOn.jpg')) sang Image(image: AssetImage('images/BulbOff.jpg'))
3. Bổ xung thêm nút FlatButton để bật tắt
4. Thêm trạng thái isBulbOn
```dart
bool isBulbOn = true;
  void toggleBulb() {
    setState(() {
      isBulbOn = !isBulbOn;
    });
  }
```
5. Gắn hàm  onPressed: toggleBulb
6. Sử dụng ternary condition
```dart
Image(image: AssetImage('images/' + (isBulbOn ? 'BulbOn.jpg': 'BulbOff.jpg'))),
```
