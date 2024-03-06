Running

`dart --enable-experiment=native-assets,resource-identifier build bin/resourcesidentifier.dart`

produces an output folder with a `.exe` and a `resources.json` in the temp directory (`sudo find /tmp/ -name resources.json`):

```json
{
  "_comment": "Resources referenced by annotated resource identifiers",
  "AppTag": "TBD",
  "environment": {
    "dart.tool.dart2js": false
  },
  "identifiers": [
    {
      "name": "calculate",
      "id": "SomeClass metadata",
      "uri": "lib/resourcesidentifier.dart",
      "nonConstant": true,
      "files": [
        {
          "part": 1,
          "references": [
            {
              "@": {
                "uri": "bin/resourcesidentifier.dart",
                "line": 4,
                "column": 29
              },
              "1": 42
            }
          ]
        }
      ]
    },
    {
      "name": "calculate2",
      "id": "SomeOtherClass metadata",
      "uri": "lib/resourcesidentifier.dart",
      "nonConstant": true,
      "files": [
        {
          "part": 1,
          "references": [
            {
              "@": {
                "uri": "bin/resourcesidentifier.dart",
                "line": 5,
                "column": 34
              },
              "1": "Foobar"
            }
          ]
        }
      ]
    }
  ]
}
```