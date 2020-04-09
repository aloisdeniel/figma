A library for interacting with Figma APIs.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:figma/figma.dart';

main() {
  var client = FigmaClient('token');

  final file = await client.getFile('file_key');
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://github.com/dnb-asa/figma/issues
